// This type should only be used with external data that we scrape/fetch from 3rd party sources
// Otherwise, we should prefer to use "?" operator for types
// Use helper function below to help ensure Nullable values are converted to undefined
export type Nullable<T> = T | null | undefined;

export function toUndef<T>(value: T | null): T | undefined {
  return value === null ? undefined : value;
}

export function ensure<T>(value: T | undefined): T {
  if (process.env.NODE_ENV === "test") return value as T; // TODO bad but until we add config load method this'll do

  if (value === undefined || value === null)
    throw new Error("Given value doesn't exist");
  return value;
}
