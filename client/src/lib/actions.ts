"use server";

import { EVENTS_PER_LOAD } from "./constants";
import { ClientMusicEvent, DatabaseManager } from "./database/db-manager";

export type MusicEventGroups = Record<string, ClientMusicEvent[]>;

export const fetchMusicEventGroups = async (
  queryOptions: {
    offset: number;
  } = {
    offset: 0,
  }
): Promise<MusicEventGroups> => {
  console.log("wassup", queryOptions);
  const musicEvents = await DatabaseManager.getAllUpcomingMusicEvents({
    offset: queryOptions.offset,
    limit: EVENTS_PER_LOAD,
  });

  return musicEvents.reduce((acc, musicEvent) => {
    const key = `${musicEvent.startDateTime.getUTCMonth()}/${musicEvent.startDateTime.getUTCDate()}/${musicEvent.startDateTime.getUTCFullYear()}`;

    acc[key] ||= [];
    acc[key].push(musicEvent);
    return acc;
  }, {} as MusicEventGroups);
};
