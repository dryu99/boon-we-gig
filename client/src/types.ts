export type Event = {
  name: string;
  openDateTime?: string;
  startDateTime: string;
  endDateTime?: string;
  price: number;
  address: string;
  link: string;
  country: string;
  venueName: string;
  type: string;
};

export type MusicEvent = Event & {
  artists: MusicArtist[];
};

export type MusicArtist = {
  name: string;
  genre: string;
  link: string;
};

export type EventUploader = {};
