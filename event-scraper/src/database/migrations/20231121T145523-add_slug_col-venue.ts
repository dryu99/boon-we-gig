import { Kysely } from "kysely";

export async function up(db: Kysely<any>): Promise<void> {
  await db.schema
    .alterTable("venue")
    .addColumn("slug", "text", (col) => col.unique())
    .execute();
}

export async function down(db: Kysely<any>): Promise<void> {
  await db.schema.alterTable("venue").dropColumn("slug").execute();
}
