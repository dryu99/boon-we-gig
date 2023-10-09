import { ReviewStatus } from "../utils/types";

export type Venue = {
  instagramId: string;
  reviewStatus: ReviewStatus;
  name?: string;
  address?: string;
};
