// @ts-ignore
import { iwa } from "instagram-without-api-node";
import { configDotenv } from "dotenv";

configDotenv();

const cookie = process.env.INSTAGRAM_COOKIE;
const userAgent = process.env.INSTAGRAM_USER_AGENT;
const xIgAppId = process.env.INSTAGRAM_X_IG_APP_ID;

const main = async () => {
  const responseIwa = await iwa({
    // base64images: false, // <!-- optional, but without you will be not able to save images.. it increases the size of the json file
    // base64imagesCarousel: false, // <!-- optional but not recommended, it increases the size of the json file
    // base64videos: false, // <!-- optional but not recommended, it increases the size of the json file

    headers: {
      cookie,
      "user-agent": userAgent,
      "x-ig-app-id": xIgAppId,
    },

    maxImages: 12, // <!-- optional, 12 is the max number
    // file: "instagram-cache.json", // <!-- optional, instagram-cache.json is by default
    pretty: true, // <!-- optional, prettyfy json true/false
    time: 5, // <!-- optional, reload contents after 3600 seconds by default

    id: "seendosi", // <!-- id is required
  });

  console.log(responseIwa);
};

main();
