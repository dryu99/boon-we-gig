"use client";

import { ClientMusicEvent } from "@/lib/database/db-manager";
import { DateHelper } from "@/lib/date.helper";
import { MusicEvent } from "./music-event";

export const MusicEvents = ({
  musicEvents,
}: {
  musicEvents: ClientMusicEvent[];
}) => {
  const musicEventGroups = musicEvents.reduce((acc, musicEvent) => {
    const key = `${musicEvent.startDateTime.getUTCMonth()}/${musicEvent.startDateTime.getUTCDate()}/${musicEvent.startDateTime.getUTCFullYear()}`;

    acc[key] ||= [];
    acc[key].push(musicEvent);
    return acc;
  }, {} as Record<string, ClientMusicEvent[]>);

  return (
    <div>
      {Object.entries(musicEventGroups).map(([date, musicEvents]) => (
        <MusicEventGroup
          key={date}
          groupDate={musicEvents[0].startDateTime}
          musicEvents={musicEvents}
        />
      ))}
    </div>
  );
};

const MusicEventGroup = ({
  groupDate,
  musicEvents,
}: {
  groupDate: Date;
  musicEvents: ClientMusicEvent[];
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
          <MusicEvent key={musicEvent.id} musicEvent={musicEvent} />
        ))}
      </div>
    </div>
  );
};
