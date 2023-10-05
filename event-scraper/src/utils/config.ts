import dotenv from "dotenv";

dotenv.config();

// dotenv.config({
//   path: path.resolve(__dirname, `../../.env.${process.env.NODE_ENV}`),
// });

export default class Config {
  public static readonly NODE_ENV = process.env.NODE_ENV as string;
  public static readonly INSTAGRAM_COOKIE = process.env
    .INSTAGRAM_COOKIE as string;
  public static readonly INSTAGRAM_USER_AGENT = process.env
    .INSTAGRAM_USER_AGENT as string;
  public static readonly INSTAGRAM_X_IG_APP_ID = process.env
    .INSTAGRAM_X_IG_APP_ID as string;
  public static readonly OPENAI_API_KEY = process.env.OPENAI_API_KEY as string;
}
