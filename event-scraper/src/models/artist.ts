import { ReviewStatus } from "../utils/types";

type MusicArtist = {
  name: string;
  reviewStatus: ReviewStatus;
  genre?: string;
  instagramId?: string;
  youtubeId?: string;
  spotifyId?: string;
};
