import {
  describe,
  expect,
  test,
  beforeAll,
  afterAll,
  beforeEach,
} from "@jest/globals";
import {
  MusicEventModel,
  MusicEventType,
  NewMusicEvent,
  NewMusicEventWithArtists,
} from "./music-event";
import { ReviewStatus } from "../../utils/types";
import { DatabaseManager } from "../db-manager";
import path from "node:path";
import { Migrator, NO_MIGRATIONS } from "kysely";
import { MusicEventBuilder } from "../../tests/builders/music-event.builder";
import { VenueBuilder } from "../../tests/builders/venue.builder";
import { VenueModel } from "./venue";

describe("MusicEventModel", () => {
  describe("inferStartDate", () => {
    test("eventStartDate >= postCreateDate", () => {
      const result = MusicEventModel["inferStartDate"](
        "2023-11-16T11:00:00",
        new Date("2023-11-10T05:48:04.000+09:00")
      );
      expect(result).toEqual("2023-11-16T11:00:00");
    });

    test("eventStartYear < postCreateYear AND eventStartDay > postCreateDay", () => {
      const result = MusicEventModel["inferStartDate"](
        "2019-11-16T11:00:00",
        new Date("2023-11-10T05:48:04.000+09:00")
      );
      expect(result).toEqual("2023-11-16T11:00:00");
    });
  });

  describe("toNew", () => {
    test("valid parsed event", () => {
      const result = MusicEventModel.toNew(
        {
          musicArtists: ["artist1", "artist2"],
          startDateTime: "2023-11-16T11:00:00.000",
          isFree: true,
          eventType: MusicEventType.CONCERT,
        },
        {
          link: "https://www.instagram.com/p/123/",
          createdAt: new Date("2023-11-10T05:48:04.000Z"),
          id: "test_id",
          username: "test_username",
        },
        {
          id: "venue1",
          instagramUsername: "venue1",
          city: "Seoul",
          country: "KR",
          reviewStatus: ReviewStatus.VALID,
          createdAt: new Date(),
          updatedAt: new Date(),
          businessAddressJson: null,
          businessEmail: null,
          businessPhoneNumber: null,
          externalLink: null,
          instagramId: null,
          name: "venue 1",
          slug: "venue-1",
          externalMapsJson: null,
          localName: null,
        }
      );
      expect(result).toEqual({
        artists: [
          {
            name: "artist1",
            reviewStatus: ReviewStatus.PENDING,
          },
          {
            name: "artist2",
            reviewStatus: ReviewStatus.PENDING,
          },
        ],
        eventType: MusicEventType.CONCERT,
        isFree: true,
        link: "https://www.instagram.com/p/123/",
        reviewStatus: ReviewStatus.PENDING,
        startDateTime: "2023-11-16T11:00:00.000+09:00",
        venueId: "venue1",
      });
    });
  });

  // TODO write venue tests + setup
  describe("database operations", () => {
    let migrator: Migrator;

    beforeAll(async () => {
      // Start db
      DatabaseManager.start();
      migrator = DatabaseManager.getMigrator(
        path.join(__dirname, "../migrations")
      );
    });

    afterAll(async () => {
      // Stop db
      await migrateDown();
      await DatabaseManager.stop();
    });

    // Reset DB state
    beforeEach(async () => {
      // TODO doesn't seem very clean to use migrations to reset, we just want to reset the db after every test so tests are stateless
      //      there's prob a way to achieve this without migrations (e.g. transaction rollback: https://github.com/kysely-org/kysely/issues/257)
      //      but for now this will do
      await migrateDown();
      await migrateLatest();
    });

    describe("addOne", () => {
      test("should successfully add a new music event", async () => {
        const newEvent: NewMusicEvent = new MusicEventBuilder().build();

        await MusicEventModel.addOne(newEvent);
        const result = await MusicEventModel.getOneByLink(newEvent.link);

        expect(result).toMatchObject(newEvent);
      });

      test("should fail when adding a music event with duplicate venueId/startDateTime (unique constraint)", async () => {
        const newVenue = new VenueBuilder().build();
        const savedVenue = await VenueModel.addOne(newVenue);

        const newEvent1 = new MusicEventBuilder()
          .withVenueId(savedVenue!.id)
          .build();

        const newEvent2 = new MusicEventBuilder()
          .withVenueId(savedVenue!.id)
          .build();

        const result1 = await MusicEventModel.addOne(newEvent1);
        expect(result1).toBeDefined();

        const result2 = MusicEventModel.addOne(newEvent2);
        await expect(result2).rejects.toThrow();
      });
    });

    // describe("addOneWithArtists", async () => {
    //   test("should ", async () => {
    //     const newEvent: NewMusicEventWithArtists = {
    //       artists: [
    //         { name: "Steve Marsh (@plainoldsteve87)", reviewStatus: "PENDING" },
    //         {
    //           name: "이지민 (@easy_m419 and @hey_unison)",
    //           reviewStatus: "PENDING",
    //         },
    //         { name: "Chris Tharp (@busanmatjib)", reviewStatus: "PENDING" },
    //       ],
    //       eventType: "CONCERT",
    //       isFree: true,
    //       link: "https://www.instagram.com/p/CzxkgtvrZ8x/",
    //       reviewStatus: "PENDING",
    //       startDateTime: new Date("2023-11-18T21:00:00+09:00"),
    //     };

    //     await MusicEventModel.addOneWithArtists(newEvent);
    //     const result = await MusicEventModel.getOneByLink(newEvent.link);

    //     expect(result).toMatchObject(newEvent);
    //   });
    // });

    async function migrateDown() {
      const { error, results } = await migrator.migrateTo(NO_MIGRATIONS);
      error && console.error("migration-down for test db failed", error);
      // results && results.forEach((result) => console.log(result));
    }

    async function migrateLatest() {
      const { error, results } = await migrator.migrateToLatest();
      error && console.error("migration-latest for test db failed", error);
      // results && results.forEach((result) => console.log(result));
    }
  });
});
