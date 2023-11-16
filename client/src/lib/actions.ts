"use server";

import { ClientMusicEvent, DatabaseManager } from "./database/db-manager";

export type MusicEventGroups = Record<string, ClientMusicEvent[]>;

export const fetchMusicEventGroups = async (): Promise<MusicEventGroups> => {
  const musicEvents = await DatabaseManager.getAllUpcomingMusicEvents();

  return musicEvents.reduce((acc, musicEvent) => {
    const key = `${musicEvent.startDateTime.getUTCMonth()}/${musicEvent.startDateTime.getUTCDate()}/${musicEvent.startDateTime.getUTCFullYear()}`;

    acc[key] ||= [];
    acc[key].push(musicEvent);
    return acc;
  }, {} as MusicEventGroups);
};
