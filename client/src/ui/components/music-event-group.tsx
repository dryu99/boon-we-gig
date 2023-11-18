import { ClientMusicEvent } from "@/lib/database/db-manager";
import * as DateHelper from "@/lib/date.helper";
import { MusicEvent } from "./music-event";
import { StaticTranslations } from "@/lib/locale";

export const MusicEventGroup = ({
  groupDate,
  musicEvents,
  locale,
  translations,
}: {
  groupDate: Date;
  musicEvents: ClientMusicEvent[];
  locale: string;
  translations: StaticTranslations;
}) => {
  const groupDateParts = DateHelper.extractParts(groupDate);

  return (
    <div className="mb-3">
      <div>
        <span className="text-xl mr-1 font-bold align-middle">
          {groupDateParts.dateStr}
        </span>
        <span className="align-middle">({groupDateParts.dayOfWeek})</span>
      </div>
      <hr className="mb-2 w-28" />
      <div>
        {musicEvents.map((musicEvent, i) => (
          <MusicEvent
            key={musicEvent.link}
            musicEvent={musicEvent}
            translations={translations}
          />
        ))}
      </div>
    </div>
  );
};
