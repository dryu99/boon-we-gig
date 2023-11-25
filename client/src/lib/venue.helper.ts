import { ClientVenue } from "./database/db-manager";
import { LocaleToCountryMap } from "./locale";

export const getVenueLocaleName = (venue: ClientVenue, locale: string) => {
  return LocaleToCountryMap[locale].includes(venue.country) && venue.localName
    ? venue.localName
    : venue.name;
};
