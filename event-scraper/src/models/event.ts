import { InstagramPost } from "../services/instagram.service";

// undefined implies data couldn't be found
export type ParsedEvent = {
  openDateTime?: string; // ISO format
  startDateTime?: string; // ISO format
  earlyPrice?: number;
  doorPrice?: number; // -1 if donation
  type?: "concert" | "dj";
  artists?: string[];
};

export type MusicEvent = {
  openDateTime?: string;
  startDateTime?: string;
  earlyPrice?: number;
  doorPrice?: number;
  type?: "concert" | "dj";
  artists?: string[];
  venue: string;
  // address: string;
  link: string;
  country: string;
  reviewStatus: ReviewStatus;
};

enum ReviewStatus {
  VALID = "VALID",
  INVALID = "INVALID",
  NEEDS_REVIEW = "NEEDS_REVIEW",
}

export const toMusicEvent = (
  parsedEvent: ParsedEvent,
  post: InstagramPost
): MusicEvent => {
  const needsReview =
    parsedEvent.startDateTime === undefined ||
    parsedEvent.doorPrice === undefined ||
    parsedEvent.type === undefined ||
    parsedEvent.artists === undefined;

  return {
    openDateTime: parsedEvent.openDateTime,
    startDateTime: parsedEvent.startDateTime,
    earlyPrice: parsedEvent.earlyPrice,
    doorPrice: parsedEvent.doorPrice,
    type: parsedEvent.type,
    artists: parsedEvent.artists,
    venue: post.accountId,
    link: post.link,
    country: "KR", // TODO make dynamic,
    reviewStatus: needsReview ? ReviewStatus.NEEDS_REVIEW : ReviewStatus.VALID,
  };
};
