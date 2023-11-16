import { DatabaseManager } from "../lib/database/db-manager";
import { MusicEvents } from "../ui/components/music-events";

export default async function Home() {
  const musicEvents = await DatabaseManager.getAllUpcomingMusicEvents();

  return (
    <div className="flex min-h-screen flex-col">
      <MusicEvents musicEvents={musicEvents} />
    </div>
  );
}
