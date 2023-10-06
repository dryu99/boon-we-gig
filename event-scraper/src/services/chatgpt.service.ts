import OpenAI from "openai";
import Config from "../utils/config";
import { ChatCompletionMessageParam } from "openai/resources/chat";
import { chatGptLogger, logger } from "../utils/logger";

type ResponseContent = {
  eventData: ParsedEventData | null;
};

type ParsedEventData = {
  openDateTime: string | null; // ISO format
  startDateTime: string | null; // ISO format
  earlyBirdPrice: number | null;
  doorPrice: number | null;
  eventType?: "concert" | "dj" | null;
  artists: {
    name: string | null;
    genre: string | null;
  }[];
};

const systemMessage: ChatCompletionMessageParam = {
  role: "system",
  content: `Provide JSON data from Instagram posts promoting underground music events. Extract:

\`\`\`typescript
{
  eventData?: {
    openDateTime?: string; // ISO format
    startDateTime?: string; // ISO format
    earlyBirdPrice?: number; 
    doorPrice?: number;
    eventType?: "concert" | "dj" | null;
    artists: {
      name?: string; // preserve original language
      genre?: string;
    }[];
  }
}
\`\`\`

Strict guidelines when extracting data:
- Don't prettify the JSON
- If you detect that the post is promoting multiple events set eventData to null
- If you detect that the post isn't promoting anything set eventData to null`,
};

export default class ChatGptService {
  private static readonly openAi = new OpenAI({
    apiKey: Config.OPENAI_API_KEY,
  });

  public static async extractInstagramPostEventData(
    postText: string,
    postLink: string
  ): Promise<ParsedEventData | null> {
    const res = await this.openAi.chat.completions.create({
      model: "gpt-4",
      messages: [systemMessage, { role: "user", content: postText }],
      temperature: 0.5,
      max_tokens: 512,
      top_p: 1,
      frequency_penalty: 0,
      presence_penalty: 0,
    });

    chatGptLogger.info(`Usage: ${res.id}`, { usage: res.usage });

    if (res.choices.length === 0) {
      throw new Error("ChatGPT API returned 0 choices: " + postLink);
    }

    if (res.choices.length > 1)
      logger.warning("ChatGPT API returned multiple choices", {
        choices: res.choices,
        postLink,
      });

    const resContentStr = res.choices[0].message.content;
    if (resContentStr === null) {
      throw new Error(
        "ChatGPT API returned message content is missing: " + postLink
      );
    }

    const resContent: ResponseContent = JSON.parse(resContentStr);
    return resContent.eventData;
  }
}
