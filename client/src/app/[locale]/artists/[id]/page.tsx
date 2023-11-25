import { fetchMusicArtistBySlug } from "@/lib/actions";
import { AppLocale } from "@/lib/locale";
import { getTranslations } from "next-intl/server";
import { notFound } from "next/navigation";

// TODO add translations
export default async function ArtistPage({
  params,
}: {
  params: { id: string; locale: AppLocale };
}) {
  console.log("params.id", params.id);
  const artist = await fetchMusicArtistBySlug(params.id);

  if (!artist) notFound();

  const t = await getTranslations("static"); // TODO this is duplicated from the shows page lol

  return <div className="flex flex-col">{JSON.stringify(artist, null, 2)}</div>;
}
