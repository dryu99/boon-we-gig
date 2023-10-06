import { logger } from "./utils/logger";
import InstagramAccountData from "./static/instagram-account-data.json";
import InstagramService from "./services/instagram.service";
import ChatGptService from "./services/chatgpt.service";

// type Event = {
//   openDateTime?: string;
//   startDateTime: string;
//   endDateTime?: string;
//   price: number;
//   address: string;
//   link: string;
//   country: string;
//   venueName: string;
//   type: string;
// }

export default class Server {
  public static async start() {
    logger.info("Starting scraper server");

    const posts = await InstagramService.fetchPostsByAccountId(
      "strangefruit.seoul"
    );

    // extract event data via chatgpt
    const events = []; // TODO type this to Event
    for (const post of posts) {
      try {
        const eventData = await ChatGptService.extractInstagramPostEventData(
          post
        );

        if (!eventData) {
          logger.warning("Couldn't extract event data from post", { post });
          continue;
        }

        events.push(eventData);
      } catch (error) {
        logger.error("ChatGpt event data extraction failed", {
          error,
          post,
        });
      }
    }

    console.log("wow", events);
  }
}
