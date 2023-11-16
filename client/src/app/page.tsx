import { fetchMusicEventGroups } from "@/lib/actions";
import { DatabaseManager } from "../lib/database/db-manager";
import { MusicEvents } from "../ui/components/music-events";

export default async function Home() {
  const musicEventGroups = await fetchMusicEventGroups();

  return (
    <div className="flex min-h-screen flex-col">
      <MusicEvents initialMusicEventGroups={musicEventGroups} />
    </div>
  );
}
