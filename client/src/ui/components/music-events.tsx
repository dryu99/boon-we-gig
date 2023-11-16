"use client";

import { ClientMusicEvent } from "@/lib/database/db-manager";
import { DateHelper } from "@/lib/date.helper";
import { MusicEvent } from "./music-event";
import { MusicEventGroups, fetchMusicEventGroups } from "@/lib/actions";
import { useState } from "react";
import { EVENTS_PER_LOAD } from "@/lib/constants";

export const MusicEvents = ({
  initialMusicEventGroups,
}: {
  initialMusicEventGroups: MusicEventGroups;
}) => {
  const [dbOffset, setDbOffset] = useState(0);
  const [musicEventGroups, setMusicEventGroups] = useState(
    initialMusicEventGroups
  );

  const loadMore = async () => {
    const newDbOffset = dbOffset + EVENTS_PER_LOAD;
    const newMusicEventGroups = await fetchMusicEventGroups({
      offset: newDbOffset,
    }); // TODO add error handling

    // TODO add loading state
    // TODO hide button when all events are queried

    setDbOffset(newDbOffset);
    setMusicEventGroups({
      ...musicEventGroups,
      ...newMusicEventGroups, // TODO fix bug here where keys can get overriden
    });
  };

  return (
    musicEventGroups && (
      <div>
        <div className="mb-10">
          {Object.entries(musicEventGroups).map(([date, musicEvents]) => (
            <MusicEventGroup
              key={date}
              groupDate={musicEvents[0].startDateTime}
              musicEvents={musicEvents}
            />
          ))}
        </div>
        <div className="sm:text-center">
          <button
            onClick={() => loadMore()}
            className="text-primary font-bold py-2 sm:px-4"
          >
            {/* <div className="">** Load more **</div> */}

            <div className="-mb-1">------------</div>
            <div className="">| Load more |</div>
            <div className="-mt-1">------------</div>
          </button>
        </div>
      </div>
    )
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
