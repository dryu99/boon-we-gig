import {
  fetchMusicArtistBySlug,
  fetchUpcomingMusicEventsForArtist,
} from "@/lib/actions";
import { AppLocale } from "@/lib/locale";
import { unstable_getTranslations } from "@/lib/translation";
import { MusicArtistInfo } from "@/ui/components/music-artist-info";
import { MusicEventListing } from "@/ui/components/music-event-listing";
import { MusicNoteIcon } from "@/ui/svgs/music-note-icon";
import { getTranslations } from "next-intl/server";
import { notFound } from "next/navigation";

// TODO add translations
export default async function ArtistPage({
  params,
}: {
  params: { id: string; locale: AppLocale };
}) {
  const artist = await fetchMusicArtistBySlug(params.id);

  if (!artist) notFound();

  const t = await getTranslations("static"); // TODO this is duplicated from the shows page lol
  const musicEvents = await fetchUpcomingMusicEventsForArtist(artist.id, {});

  return (
    <div className="flex flex-col">
      <div className="flex justify-center">
        <div className="mr-1">
          <MusicNoteIcon width="20px" />
        </div>

        <h2 className="mb-2">{artist.name}</h2>
      </div>
      <MusicArtistInfo artist={artist} locale={params.locale} />
      {/* 
          TODO there is a terrible bug here since MusicEventListing uses the default fetchUpcomingMusicEventsForArtist fn, it wont filter by artist  
          However, since it is unlikely atm that any artist will have 30+ shows lined up, we'll let it be for now lol
      */}
      <MusicEventListing
        initialMusicEvents={musicEvents}
        locale={params.locale}
        translations={unstable_getTranslations(t)}
      />
    </div>
  );
}
