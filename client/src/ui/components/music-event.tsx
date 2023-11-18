import React from "react";
import { ClientMusicEvent, ClientArtist } from "../../lib/database/db-manager";
import * as DateHelper from "@/lib/date.helper";
import { LocationIcon } from "../svgs/location-icon";
import { MusicNoteIcon } from "../svgs/music-note-icon";
import { StaticTranslations } from "@/lib/locale";

export const MusicEvent = ({
  musicEvent,
  translations,
}: {
  musicEvent: ClientMusicEvent;
  translations: StaticTranslations;
}) => {
  const dateParts = DateHelper.extractParts(musicEvent.startDateTime);
  return (
    <div className="flex flex-row mb-3">
      {/* Date Section */}
      <div className="mr-2 sm:mr-5 sm:w-32">
        <div className="flex flex-col sm:flex-row">
          <span className="mr-2">{dateParts.timeStr}</span>
          <div className="flex flex-col">
            {DateHelper.isRecent(musicEvent.createdAt) && (
              <span className="text-green-500 mr-2">{translations.new}</span>
            )}
            {musicEvent.isFree && (
              <span className="text-yellow-400">{translations.free}</span>
            )}
          </div>
        </div>
      </div>
      <div className="flex flex-col sm:flex-row">
        {/* Venue Section */}
        <div className="mr-2 sm:mr-5 sm:w-32">
          <div>
            <div className="inline-block mr-1">
              <LocationIcon />
            </div>
            <a
              href={`https://www.instagram.com/${musicEvent.venue?.instagramUsername}`}
              className="hover:underline"
              data-umami-event="music-event-venue-link"
            >
              {musicEvent.venue?.name}
            </a>
          </div>
        </div>
        {/* Artists Section */}
        <div className="sm:mr-5 sm:w-60">
          <div className="inline-block mr-1">
            <MusicNoteIcon />
          </div>
          {musicEvent.artists.map((artist: ClientArtist, i: number) => (
            <React.Fragment key={artist.id}>
              <a
                href={`https://www.youtube.com/results?search_query=${artist.name}`}
                className="hover:underline"
                data-umami-event="music-event-artist-link"
              >
                {artist.name}
              </a>
              {i !== musicEvent.artists.length - 1 && <span>, </span>}
            </React.Fragment>
          ))}
        </div>
        {/* Link Section */}
        <div>
          <a
            className="underline text-blue-600 hover:text-blue-800 visited:text-purple-600"
            href={musicEvent.link}
            data-umami-event="music-event-external-link"
          >
            {translations.link}
          </a>
        </div>
      </div>
    </div>
  );
};
