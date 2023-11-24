import { Pool } from "pg";
import {
  CamelCasePlugin,
  ExpressionBuilder,
  Kysely,
  PostgresDialect,
  Selectable,
  Updateable,
} from "kysely";
import { DB, MusicArtist, MusicEvent, Venue } from "./db-schemas";
import { jsonArrayFrom, jsonObjectFrom } from "kysely/helpers/postgres";
import { MusicGenre } from "../genre";

// TODO can be shared later in monorepo
export type UpdatedMusicEvent = Updateable<MusicEvent>;
export type UpdatedMusicArtist = Updateable<MusicArtist>;

export type ClientMusicEvent = Pick<
  Selectable<MusicEvent>,
  | "id"
  | "link"
  | "isFree"
  | "startDateTime"
  | "createdAt"
  | "eventType"
  | "reviewStatus"
> & {
  artists: ClientArtist[];
  venue: ClientVenue | null; // TODO this null shouldn't be necessary, if the venue id exists then there should be a corresponding venue
};

export type ClientArtist = Pick<
  Selectable<MusicArtist>,
  | "id"
  | "name"
  | "genre"
  | "instagramUsername"
  | "spotifyId"
  | "youtubeId"
  | "isRecommended"
>;

export type ClientVenue = Pick<
  Selectable<Venue>,
  | "id"
  | "name"
  | "instagramUsername"
  | "city"
  | "country"
  | "localName"
  | "slug"
  | "externalMapsJson"
> & {
  externalMapsJson: {
    googleMapsUrl?: string;
    kakaoMapsUrl?: string;
    naverMapsUrl?: string;
  } | null;
};

export type MusicEventQueryFilter = {
  venueId?: string;
  includeValidOnly?: boolean;
};

// TODO this is duplicated from event-scraper. we can do better (monorepo or sth to share code)
//      also db-schemas is duplicated.
export class DatabaseManager {
  private static pool = new Pool({
    host: process.env.DATABASE_HOST,
    port: Number(process.env.DATABASE_PORT),
    user: process.env.DATABASE_USER,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE_NAME,
    max: 10,
  });
  private static dialect = new PostgresDialect({
    pool: this.pool,
  });
  public static db = new Kysely<DB>({
    dialect: this.dialect,
    plugins: [new CamelCasePlugin()],
  });

  public static async updateMusicEventById(
    id: string,
    musicEvent: UpdatedMusicEvent
  ) {
    return this.db
      .updateTable("musicEvent")
      .set(musicEvent)
      .where("id", "=", id)
      .executeTakeFirst();
  }

  public static async getMusicEventBySlug(
    slug: string
  ): Promise<ClientMusicEvent | undefined> {
    return this.db
      .selectFrom("musicEvent")
      .select((eb) => [
        // music event fields
        "musicEvent.id",
        "musicEvent.isFree",
        "musicEvent.startDateTime",
        "musicEvent.link",
        "musicEvent.createdAt",
        "musicEvent.eventType",
        "musicEvent.reviewStatus",
        this.withMusicArtists(eb),
        this.withVenue(eb),
      ])
      .where("slug", "=", slug)
      .executeTakeFirst();
  }

  public static async updateMusicArtistById(
    id: string,
    musicArtist: UpdatedMusicArtist
  ) {
    return this.db
      .updateTable("musicArtist")
      .set(musicArtist)
      .where("id", "=", id)
      .executeTakeFirst();
  }

  public static async getVenueBySlug(
    slug: string
  ): Promise<ClientVenue | undefined> {
    return this.db
      .selectFrom("venue")
      .select((eb) => [
        "id",
        "name",
        "instagramUsername",
        "city",
        "country",
        "localName",
        "slug",
        "externalMapsJson",
      ])
      .where("slug", "=", slug)
      .executeTakeFirst();
  }

  public static async getUpcomingMusicEvents(options: {
    offset: number;
    limit: number;
    filter: MusicEventQueryFilter;
  }): Promise<ClientMusicEvent[]> {
    return (
      this.db
        .selectFrom("musicEvent")
        .innerJoin("venue", "venue.id", "musicEvent.venueId") // TODO feels redundant given the FROM we're doing below, but we need it to filter at top level
        .select((eb) => [
          // music event fields
          "musicEvent.id",
          "musicEvent.isFree",
          "musicEvent.startDateTime",
          "musicEvent.link",
          "musicEvent.createdAt",
          "musicEvent.eventType",
          "musicEvent.reviewStatus",
          this.withMusicArtists(eb),
          this.withVenue(eb),
        ])
        .where("venue.city", "=", "Seoul") // TODO make this dynamic later
        .$if(options.filter.includeValidOnly === true, (qb) =>
          qb.where("musicEvent.reviewStatus", "!=", "INVALID")
        )
        .$if(options.filter.venueId !== undefined, (qb) =>
          qb.where("venue.id", "=", options.filter.venueId!)
        )
        // we have this conditional b/c we don't always update dev db but still want to see events
        .$if(process.env.NODE_ENV === "production", (qb) =>
          // note: should be no timezone issues given utc dates are being compared
          qb.where("musicEvent.startDateTime", ">", new Date())
        )
        .orderBy("musicEvent.startDateTime", "asc")
        .orderBy("venue.name", "asc")
        .$if(options.limit !== undefined, (qb) => qb.limit(options.limit)) // TODO consider keyset pagination later for performance
        .offset(options.offset)
        .execute()
    );
  }

  private static withMusicArtists(eb: ExpressionBuilder<DB, "musicEvent">) {
    return jsonArrayFrom(
      eb
        .selectFrom("musicEventArtists")
        // TODO lmao figure out learn inner join vs left join
        .innerJoin(
          "musicArtist",
          "musicArtist.id",
          "musicEventArtists.artistId"
        )
        .select([
          "musicArtist.id",
          "musicArtist.name",
          "musicArtist.genre",
          "musicArtist.instagramUsername",
          "musicArtist.spotifyId",
          "musicArtist.youtubeId",
          "musicArtist.isRecommended",
        ])
        .orderBy("musicArtist.name", "asc")
        .whereRef("musicEventArtists.eventId", "=", "musicEvent.id")
    ).as("artists");
  }

  private static withVenue(eb: ExpressionBuilder<DB, "musicEvent">) {
    return jsonObjectFrom(
      eb
        .selectFrom("venue")
        .select([
          "venue.id",
          "venue.name",
          "venue.instagramUsername",
          "venue.city",
          "venue.country",
          "venue.localName", // TODO can possibly make this conditional on en/ route vs anything else
          "venue.slug", // TODO don't really need this for this query
          "venue.externalMapsJson", // TODO don't really need this for this query
        ])
        .where("venue.reviewStatus", "=", "VALID")
        .whereRef("venue.id", "=", "musicEvent.venueId")
    ).as("venue");
  }
}
