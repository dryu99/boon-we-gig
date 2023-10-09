import dotenv from "dotenv";

dotenv.config();

// dotenv.config({
//   path: path.resolve(__dirname, `../../.env.${process.env.NODE_ENV}`),
// });

export const Config = Object.freeze({
  NODE_ENV: process.env.NODE_ENV as string,
  INSTAGRAM_COOKIE: process.env.INSTAGRAM_COOKIE as string,
  INSTAGRAM_USER_AGENT: process.env.INSTAGRAM_USER_AGENT as string,
  INSTAGRAM_X_IG_APP_ID: process.env.INSTAGRAM_X_IG_APP_ID as string,
  OPENAI_API_KEY: process.env.OPENAI_API_KEY as string,
  DB_HOST: process.env.DB_HOST as string,
  DB_PORT: process.env.DB_PORT as string,
  DB_USER: process.env.DB_USER as string,
  DB_PASSWORD: process.env.DB_PASSWORD as string,
  DB_NAME: process.env.DB_NAME as string,
});
