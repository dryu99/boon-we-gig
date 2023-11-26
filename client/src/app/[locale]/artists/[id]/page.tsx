import { fetchMusicArtistBySlug } from "@/lib/actions";
import { toInstagramProfileLink } from "@/lib/external-links";
import { AppLocale } from "@/lib/locale";
import { MusicArtistInfo } from "@/ui/components/music-artist-info";
import { InstagramIcon } from "@/ui/svgs/instagram-icon";
import { MusicNoteIcon } from "@/ui/svgs/music-note-icon";
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

  return (
    <div className="flex flex-col">
      {/* <a
                href={
                  artist.youtubeId
                    ? toYoutubeChannelLink(artist.youtubeId)
                    : toYoutubeSearchLink(artist.name)
                }
                className="hover:underline mr-1"
                data-umami-event="music-event-artist-link"
              > */}
      <div className="flex justify-center">
        <div className="mr-1">
          <MusicNoteIcon width="20px" />
        </div>

        <h2 className="mb-2">{artist.name}</h2>
      </div>
      <MusicArtistInfo artist={artist} locale={params.locale} />
    </div>
  );
}
