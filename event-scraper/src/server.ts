import logger from "./utils/logger";
import InstagramAccountData from "./static/instagram-account-data.json";
import InstagramService from "./services/instagram.service";

export default class Server {
  public static async start() {
    logger.info("Starting scraper server");

    const posts = await InstagramService.fetchPostsByAccountId("seendosi");
    console.log(posts);
  }
}
