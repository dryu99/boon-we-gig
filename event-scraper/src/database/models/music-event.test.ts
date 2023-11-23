import { describe, expect, test, beforeAll, afterAll } from "@jest/globals";
import { MusicEventModel, MusicEventType } from "./music-event";
import { ReviewStatus } from "../../utils/types";
import { DatabaseManager } from "../db-manager";
import path from "node:path";
import { Kysely, Migrator, NO_MIGRATIONS, PostgresDialect } from "kysely";
import { Pool } from "pg";
import { afterEach, beforeEach } from "node:test";

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

    test("addOne", () => {
      console.log("hello world");
    });

    async function migrateDown() {
      const { error, results } = await migrator.migrateTo(NO_MIGRATIONS);
      error && console.error("migration-down for test db failed", error);
    }

    async function migrateLatest() {
      const { error, results } = await migrator.migrateToLatest();
      error && console.error("migration-latest for test db failed", error);
    }
  });
});
