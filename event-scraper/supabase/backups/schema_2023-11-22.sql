
SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

CREATE EXTENSION IF NOT EXISTS "pgsodium" WITH SCHEMA "pgsodium";

CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";

CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";

CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";

CREATE EXTENSION IF NOT EXISTS "pgjwt" WITH SCHEMA "extensions";

CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";

CREATE OR REPLACE FUNCTION "public"."update_updated_at_column"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
    BEGIN
      NEW."updated_at" = NOW();
      RETURN NEW;
    END;
    $$;

ALTER FUNCTION "public"."update_updated_at_column"() OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";

CREATE TABLE IF NOT EXISTS "public"."kysely_migration" (
    "name" character varying(255) NOT NULL,
    "timestamp" character varying(255) NOT NULL
);

ALTER TABLE "public"."kysely_migration" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."kysely_migration_lock" (
    "id" character varying(255) NOT NULL,
    "is_locked" integer DEFAULT 0 NOT NULL
);

ALTER TABLE "public"."kysely_migration_lock" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."music_artist" (
    "id" "uuid" DEFAULT "extensions"."uuid_generate_v4"() NOT NULL,
    "name" "text" NOT NULL,
    "review_status" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "genre" "text",
    "instagram_id" "text",
    "instagram_username" "text",
    "youtube_id" "text",
    "spotify_id" "text",
    "country" character(2),
    "is_recommended" boolean DEFAULT false NOT NULL,
    "recommended_links" "text"[]
);

ALTER TABLE "public"."music_artist" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."music_event" (
    "id" "uuid" DEFAULT "extensions"."uuid_generate_v4"() NOT NULL,
    "link" "text" NOT NULL,
    "review_status" "text" NOT NULL,
    "venue_id" "uuid",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "start_date_time" timestamp with time zone NOT NULL,
    "event_type" "text",
    "is_free" boolean
);

ALTER TABLE "public"."music_event" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."music_event_artists" (
    "event_id" "uuid" NOT NULL,
    "artist_id" "uuid" NOT NULL
);

ALTER TABLE "public"."music_event_artists" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."venue" (
    "id" "uuid" DEFAULT "extensions"."uuid_generate_v4"() NOT NULL,
    "instagram_username" "text" NOT NULL,
    "review_status" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "country" character(2) NOT NULL,
    "city" "text" NOT NULL,
    "instagram_id" "text",
    "name" "text" NOT NULL,
    "external_link" "text",
    "business_address_json" "json",
    "business_email" "text",
    "business_phone_number" "text",
    "local_name" "text",
    "slug" "text" NOT NULL,
    "external_maps_json" "json"
);

ALTER TABLE "public"."venue" OWNER TO "postgres";

ALTER TABLE ONLY "public"."kysely_migration_lock"
    ADD CONSTRAINT "kysely_migration_lock_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."kysely_migration"
    ADD CONSTRAINT "kysely_migration_pkey" PRIMARY KEY ("name");

ALTER TABLE ONLY "public"."music_artist"
    ADD CONSTRAINT "music_artist_instagram_id_key" UNIQUE ("instagram_id");

ALTER TABLE ONLY "public"."music_artist"
    ADD CONSTRAINT "music_artist_instagram_username_key" UNIQUE ("instagram_username");

ALTER TABLE ONLY "public"."music_artist"
    ADD CONSTRAINT "music_artist_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."music_event_artists"
    ADD CONSTRAINT "music_event_artists_pkey" PRIMARY KEY ("event_id", "artist_id");

ALTER TABLE ONLY "public"."music_event"
    ADD CONSTRAINT "music_event_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."music_event"
    ADD CONSTRAINT "music_event_venue_id_start_date_time_key" UNIQUE ("venue_id", "start_date_time");

ALTER TABLE ONLY "public"."venue"
    ADD CONSTRAINT "venue_business_email_key" UNIQUE ("business_email");

ALTER TABLE ONLY "public"."venue"
    ADD CONSTRAINT "venue_business_phone_number_key" UNIQUE ("business_phone_number");

ALTER TABLE ONLY "public"."venue"
    ADD CONSTRAINT "venue_external_link_key" UNIQUE ("external_link");

ALTER TABLE ONLY "public"."venue"
    ADD CONSTRAINT "venue_instagram_id_key" UNIQUE ("instagram_id");

ALTER TABLE ONLY "public"."venue"
    ADD CONSTRAINT "venue_instagram_username_key" UNIQUE ("instagram_username");

ALTER TABLE ONLY "public"."venue"
    ADD CONSTRAINT "venue_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."venue"
    ADD CONSTRAINT "venue_slug_key" UNIQUE ("slug");

CREATE OR REPLACE TRIGGER "update_music_artist_updated_at" BEFORE UPDATE ON "public"."music_artist" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();

CREATE OR REPLACE TRIGGER "update_music_event_updated_at" BEFORE UPDATE ON "public"."music_event" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();

CREATE OR REPLACE TRIGGER "update_venue_updated_at" BEFORE UPDATE ON "public"."venue" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();

ALTER TABLE ONLY "public"."music_event_artists"
    ADD CONSTRAINT "music_event_artists_artist_id_fkey" FOREIGN KEY ("artist_id") REFERENCES "public"."music_artist"("id");

ALTER TABLE ONLY "public"."music_event_artists"
    ADD CONSTRAINT "music_event_artists_event_id_fkey" FOREIGN KEY ("event_id") REFERENCES "public"."music_event"("id");

ALTER TABLE ONLY "public"."music_event"
    ADD CONSTRAINT "music_event_venue_id_fkey" FOREIGN KEY ("venue_id") REFERENCES "public"."venue"("id");

GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";

GRANT ALL ON FUNCTION "public"."update_updated_at_column"() TO "anon";
GRANT ALL ON FUNCTION "public"."update_updated_at_column"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_updated_at_column"() TO "service_role";

GRANT ALL ON TABLE "public"."kysely_migration" TO "anon";
GRANT ALL ON TABLE "public"."kysely_migration" TO "authenticated";
GRANT ALL ON TABLE "public"."kysely_migration" TO "service_role";

GRANT ALL ON TABLE "public"."kysely_migration_lock" TO "anon";
GRANT ALL ON TABLE "public"."kysely_migration_lock" TO "authenticated";
GRANT ALL ON TABLE "public"."kysely_migration_lock" TO "service_role";

GRANT ALL ON TABLE "public"."music_artist" TO "anon";
GRANT ALL ON TABLE "public"."music_artist" TO "authenticated";
GRANT ALL ON TABLE "public"."music_artist" TO "service_role";

GRANT ALL ON TABLE "public"."music_event" TO "anon";
GRANT ALL ON TABLE "public"."music_event" TO "authenticated";
GRANT ALL ON TABLE "public"."music_event" TO "service_role";

GRANT ALL ON TABLE "public"."music_event_artists" TO "anon";
GRANT ALL ON TABLE "public"."music_event_artists" TO "authenticated";
GRANT ALL ON TABLE "public"."music_event_artists" TO "service_role";

GRANT ALL ON TABLE "public"."venue" TO "anon";
GRANT ALL ON TABLE "public"."venue" TO "authenticated";
GRANT ALL ON TABLE "public"."venue" TO "service_role";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "service_role";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "service_role";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "service_role";

RESET ALL;
