import OpenAI from "openai";
import Config from "../utils/config";

export default class ChatGptService {
  private static readonly openAi = new OpenAI({
    apiKey: Config.OPENAI_API_KEY,
  });

  public static async prompt() {
    const response = await this.openAi.chat.completions.create({
      model: "gpt-3.5-turbo",
      messages: [],
      temperature: 0.5,
      max_tokens: 256,
    });
  }
}
