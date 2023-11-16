import { fetchMusicEvents } from "@/lib/actions";
import { DatabaseManager } from "../lib/database/db-manager";
import { MusicEvents } from "../ui/components/music-events";

export default async function Home() {
  const musicEvents = await fetchMusicEvents();

  return (
    <div className="flex min-h-screen flex-col">
      <MusicEvents initialMusicEvents={musicEvents} />
    </div>
  );
}
