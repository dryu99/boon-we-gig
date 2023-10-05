import { configDotenv } from "dotenv";
import { iwa } from "../custom-npm/instagram-without-api-node.js";

export type InstagramPost = {
  id: string;
  time: number;
  link: string;
  text: string;
  location: string;
};

export class InstagramService {
  private static COOKIE = process.env.INSTAGRAM_COOKIE;
  private static USER_AGENT = process.env.INSTAGRAM_USER_AGENT;
  private static X_IG_APP_ID = process.env.INSTAGRAM_X_IG_APP_ID;

  public async fetchPostsByUserId(userId: string): Promise<InstagramPost[]> {
    return iwa({
      base64images: false, // <!-- optional, but without you will be not able to save images.. it increases the size of the json file
      base64imagesCarousel: false, // <!-- optional but not recommended, it increases the size of the json file
      base64videos: false, // <!-- optional but not recommended, it increases the size of the json file

      headers: {
        cookie: InstagramService.COOKIE,
        "user-agent": InstagramService.USER_AGENT,
        "x-ig-app-id": InstagramService.X_IG_APP_ID,
      },

      maxImages: 12, // <!-- optional, 12 is the max number
      file: "instagram-cache.json", // <!-- optional, instagram-cache.json is by default
      pretty: true,
      time: 0, // this option is kinda dumb, it won't let me make parallel requests since if i make a request within the timeframe, it'll just pull whatevers in the cache

      id: userId,
    });
  }
}
