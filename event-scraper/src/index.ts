import { DatabaseClient } from "./db/client";
import { Server } from "./server";
import { logger } from "./utils/logger";

const main = async () => {
  try {
    await DatabaseClient.start();

    // await Server.start();
  } catch (err) {
    logger.error(err);
  } finally {
    await DatabaseClient.stop();
  }
};

main();
