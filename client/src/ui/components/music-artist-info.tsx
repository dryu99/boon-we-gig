"use client";

import { ClientMusicArtist } from "@/lib/database/db-manager";
import {
  toInstagramProfileLink,
  toSpotifyArtistLink,
  toYoutubeChannelLink,
} from "@/lib/external-links";
import { InstagramIcon } from "../svgs/instagram-icon";
import { YoutubeIcon } from "../svgs/youtube-icon";
import { SpotifyIcon } from "../svgs/spotify-icon";
import { MusicGenre, getLocalizedGenre } from "@/lib/genre";
import { AppLocale } from "@/lib/locale";
import { GenreTag } from "./music-event-tags";

// TODO translate everything here

const claimInfoText = (
  artistName: string
) => `If you are ${artistName} and would like to claim and edit this page,
please contact @boonwegig on Instagram via your official Instagram account.`;

export const MusicArtistInfo = ({
  artist,
  locale,
}: {
  artist: ClientMusicArtist;
  locale: AppLocale;
}) => {
  return (
    <div>
      <div className="flex flex-row justify-center items-center mb-3">
        <div className="mx-1">
          {artist.instagramUsername ? (
            <a
              href={toInstagramProfileLink(artist.instagramUsername)}
              data-umami-event="music-artist-instagram-link"
            >
              <InstagramIcon />
            </a>
          ) : (
            <div
              className="opacity-30 hover:opacity-100 cursor-pointer"
              onClick={() =>
                alert(
                  `Could not find Instagram profile for ${artist.name}.
                
${claimInfoText(artist.name)}`
                )
              }
            >
              <InstagramIcon />
            </div>
          )}
        </div>
        <div className="mx-1">
          {artist.youtubeId ? (
            <a
              href={toYoutubeChannelLink(artist.youtubeId)}
              data-umami-event="music-artist-youtube-link"
            >
              <YoutubeIcon width="40px" />
            </a>
          ) : (
            <div
              className="opacity-30 hover:opacity-100 cursor-pointer"
              onClick={() =>
                alert(
                  `Could not find Youtube channel for ${artist.name}.
                
${claimInfoText(artist.name)}`
                )
              }
            >
              <YoutubeIcon width="40px" />
            </div>
          )}
        </div>
        <div className="mx-1">
          {artist.spotifyId ? (
            <a
              href={toSpotifyArtistLink(artist.spotifyId)}
              data-umami-event="music-artist-spotify-link"
            >
              <SpotifyIcon width="34px" />
            </a>
          ) : (
            <div
              className="opacity-30 hover:opacity-100 cursor-pointer"
              onClick={() =>
                alert(
                  `Could not find Spotify profile for ${artist.name}.
                
${claimInfoText(artist.name)}`
                )
              }
            >
              <SpotifyIcon width="34px" />
            </div>
          )}
        </div>
      </div>
      <div className="text-center mb-5">
        <span className="mr-1"> GENRE:</span>

        <GenreTag
          genre={
            artist.genre
              ? getLocalizedGenre(artist.genre as MusicGenre, locale)
              : "N/A"
          }
        />
      </div>
    </div>
  );
};
