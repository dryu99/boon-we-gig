import { Client } from "pg";
import { Config } from "../utils/config"; // Assuming you have a configuration file or use environment variables
import { logger } from "../utils/logger";

export class DatabaseClient {
  private static connection = new Client({
    host: Config.DB_HOST,
    port: Number(Config.DB_PORT),
    user: Config.DB_USER,
    password: Config.DB_PASSWORD,
    database: Config.DB_NAME,
  });

  public static start() {
    return this.connection
      .connect()
      .then(() =>
        logger.info(
          `Connected to database @ "${this.connection.host}:${this.connection.port}"`
        )
      );
  }

  public static stop() {
    return this.connection
      .end()
      .then(() => logger.info(`Disconnected from database`));
  }
}
