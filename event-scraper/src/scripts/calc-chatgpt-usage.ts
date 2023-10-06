import fs from "fs";
import path from "path";
import readline from "readline";

const main = async () => {
  const logPath = path.resolve(__dirname, `../../logs/chatgpt.development.log`);

  const fileStream = fs.createReadStream(logPath);

  const rl = readline.createInterface({
    input: fileStream,
    crlfDelay: Infinity, // so that it handles all instances of CR LF ('\r\n') as a single line break
  });

  const logs = [];

  for await (const line of rl) {
    try {
      const log = JSON.parse(line);
      logs.push(log);
    } catch (err) {
      console.error("Error parsing line:", line, err);
    }
  }

  const totalTokens = logs.reduce((prevSum, currLog) => {
    return prevSum + currLog.usage.total_tokens;
  }, 0);

  console.log("ChatGPT log results", { logCount: logs.length, totalTokens });
};

main();
