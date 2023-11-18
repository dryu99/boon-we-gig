export type DateParts = {
  dayOfWeek: string;
  dateStr: string;
  timeStr: string;
};

const DAYS_OF_WEEK = ["sun", "mon", "tue", "wed", "thu", "fri", "sat"];

const DateFormatter = new Intl.DateTimeFormat("en-US", {
  timeZone: "Asia/Seoul",
  month: "2-digit",
  day: "2-digit",
});

const TimeFormatter = new Intl.DateTimeFormat("en-US", {
  timeZone: "Asia/Seoul",
  hour: "2-digit",
  minute: "2-digit",
  hour12: false,
});

export const extractParts = (date: Date): DateParts => {
  const dateStr = DateFormatter.format(date);
  const timeStr = TimeFormatter.format(date);
  const dayOfWeek = getDayOfWeek(date.getDay());

  return {
    dayOfWeek,
    dateStr,
    timeStr,
  };
};

export const isRecent = (date: Date) => {
  const now = new Date();
  const diff = now.getTime() - date.getTime();
  const diffInHours = diff / (1000 * 60 * 60);
  return diffInHours < 24;
};

const getDayOfWeek = (dayOfWeek: number): string => {
  return DAYS_OF_WEEK[dayOfWeek];
};
