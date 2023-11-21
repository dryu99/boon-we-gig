import React from "react";
import { ClientMusicEvent, ClientArtist } from "../../lib/database/db-manager";
import * as DateHelper from "@/lib/date.helper";
import { LocationIcon } from "../svgs/location-icon";
import { MusicNoteIcon } from "../svgs/music-note-icon";
import { LocaleToCountryMap, StaticTranslations } from "@/lib/locale";
import { ThumbsUpIcon } from "../svgs/thumbs-up-icon";
import { MusicGenre, extractKeyGenres, localeToGenreMap } from "@/lib/genre";
import {
  toYoutubeChannelLink,
  toYoutubeSearchLink,
} from "@/lib/external-links";
import { Link } from "@/lib/navigation";

export const MusicEvent = ({
  musicEvent,
  translations,
  locale,
}: {
  musicEvent: ClientMusicEvent;
  translations: StaticTranslations;
  locale: string;
}) => {
  const dateParts = DateHelper.extractParts(musicEvent.startDateTime, locale);
  const genres = extractKeyGenres(
    musicEvent.artists
      .map((artist) => artist.genre)
      .filter((genre) => genre !== null) as MusicGenre[],
    locale
  );
  return (
    <div className="flex flex-row mb-3">
      {/* Date Section */}
      <div className="mr-3 sm:mr-5 sm:w-32">
        <div className="flex flex-col sm:flex-row">
          <span
            className="mr-2"
            title={musicEvent.startDateTime.toLocaleString()}
          >
            {dateParts.timeStr}
          </span>
          {/* Tag Section */}
          <div className="flex flex-col">
            {DateHelper.isRecent(musicEvent.createdAt) && (
              <span className="text-green-500 mr-2">{translations.new}</span>
            )}
            {musicEvent.isFree && (
              <span className="text-yellow-400">{translations.free}</span>
            )}

            {genres.map((genre, i) => (
              <span key={i + genre} className="text-blue-500">
                {genre}
              </span>
            ))}
          </div>
        </div>
      </div>
      <div className="flex flex-col sm:flex-row">
        {/* Venue Section */}
        {musicEvent.venue && musicEvent.venue.name && (
          <div className="mr-2 sm:mr-5 sm:w-32">
            <div>
              {/* TODO translate */}
              <div className="inline-block mr-1" title="Venue">
                <LocationIcon />
              </div>
              <Link
                href={`/venues/${musicEvent.venue.slug}`}
                className="hover$:underline"
                data-umami-event="music-event-venue-link"
              >
                {
                  // check for venue local name
                  LocaleToCountryMap[locale].includes(
                    musicEvent.venue.country
                  ) && musicEvent.venue.localName
                    ? musicEvent.venue.localName
                    : musicEvent.venue.name
                }
              </Link>
            </div>
          </div>
        )}

        {/* Artists Section */}
        <div className="sm:mr-5 sm:w-60">
          {/* TODO translate */}
          <div className="inline-block mr-1" title="Artists">
            <MusicNoteIcon />
          </div>
          {musicEvent.artists.map((artist: ClientArtist, i: number) => (
            <React.Fragment key={artist.id}>
              <a
                href={
                  artist.youtubeId
                    ? toYoutubeChannelLink(artist.youtubeId)
                    : toYoutubeSearchLink(artist.name)
                }
                className="hover:underline mr-1"
                data-umami-event="music-event-artist-link"
              >
                {artist.name}
              </a>
              {artist.isRecommended && (
                // TODO translate to korean
                <span className="inline-block" title={translations.recommended}>
                  <ThumbsUpIcon />
                </span>
              )}

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
