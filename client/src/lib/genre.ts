/* eslint-disable no-unused-vars */
import { ClientMusicArtist } from "./database/db-manager";
import { AppLocale } from "./locale";

export enum MusicGenre {
  ROCK = "rock",
  POP = "pop",
  HIPHOP = "hiphop",
  INDIE = "indie",
  DJ = "dj",
  JAZZ = "jazz",
  CLASSICAL = "classical",
  METAL = "metal",
  PUNK = "punk",
  FOLK = "folk",
  FUNK = "funk",
  RNB = "r&b",
  NOT_AVAILABLE = "",

  // TODO add r&b genre
}

// TODO can i move this to translations message files somehow
export const localeToGenreMap: Record<string, Record<MusicGenre, string>> = {
  en: {
    [MusicGenre.ROCK]: "ROCK",
    [MusicGenre.POP]: "POP",
    [MusicGenre.HIPHOP]: "HIPHOP",
    [MusicGenre.INDIE]: "INDIE",
    [MusicGenre.DJ]: "DJ",
    [MusicGenre.JAZZ]: "JAZZ",
    [MusicGenre.CLASSICAL]: "CLASSICAL",
    [MusicGenre.METAL]: "METAL",
    [MusicGenre.PUNK]: "PUNK",
    [MusicGenre.FOLK]: "FOLK",
    [MusicGenre.FUNK]: "FUNK",
    [MusicGenre.RNB]: "R&B",
    [MusicGenre.NOT_AVAILABLE]: "",
  },
  ko: {
    [MusicGenre.ROCK]: "록",
    [MusicGenre.POP]: "팝",
    [MusicGenre.HIPHOP]: "힙합",
    [MusicGenre.INDIE]: "인디",
    [MusicGenre.DJ]: "DJ",
    [MusicGenre.JAZZ]: "재즈",
    [MusicGenre.CLASSICAL]: "클래식",
    [MusicGenre.METAL]: "메탈",
    [MusicGenre.PUNK]: "펑크",
    [MusicGenre.FOLK]: "포크",
    [MusicGenre.FUNK]: "펑키", // TODO maybe make same as 펑크 and use icon
    [MusicGenre.RNB]: "R&B",
    [MusicGenre.NOT_AVAILABLE]: "",
  },
};

// TODO prob better way to do this such that locale and genre extraction are handled separately
export const extractKeyGenres = (
  artists: ClientMusicArtist[],
  locale: AppLocale
): string[] => {
  const genres = artists
    .map((artist) => artist.genre)
    .filter((genre) => genre !== null) as MusicGenre[];

  const uniqueGenres = new Set(genres);

  // delete redundant genres
  if (
    uniqueGenres.has(MusicGenre.ROCK) &&
    (uniqueGenres.has(MusicGenre.PUNK) || uniqueGenres.has(MusicGenre.METAL))
  ) {
    uniqueGenres.delete(MusicGenre.ROCK);
  }

  // we want to always append dj last since usually not main act (to override alphabetical sort)
  const hasDj = uniqueGenres.has(MusicGenre.DJ);
  if (hasDj) {
    uniqueGenres.delete(MusicGenre.DJ);
  }

  // format genres
  const localeGenres = Array.from(uniqueGenres)
    .map((genre) => getLocalizedGenre(genre, locale))
    .sort();

  // final cleanup
  if (hasDj) {
    localeGenres.push(getLocalizedGenre(MusicGenre.DJ, locale));
  }

  return localeGenres;
};

export const getLocalizedGenre = (genre: MusicGenre, locale: AppLocale) => {
  return localeToGenreMap[locale][genre];
};
