import { fetchMusicEvents } from "@/lib/actions";
import { MusicEventListing } from "@/ui/components/music-event-listing";
import { useTranslations } from "next-intl";

export default async function Index() {
  const musicEvents = await fetchMusicEvents();

  return (
    <div className="flex flex-col">
      <MusicEventListing initialMusicEvents={musicEvents} />
    </div>
  );
}
