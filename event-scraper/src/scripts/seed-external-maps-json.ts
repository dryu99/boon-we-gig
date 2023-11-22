import { DatabaseManager } from "../database/db-manager";
import { VenueModel } from "../database/models/venue";
import { scrapeableVenues } from "../static/venues";

const main = async () => {
  DatabaseManager.start();

  for (const venue of scrapeableVenues) {
    const venueInstagramUsername = venue.instagramUsername;

    try {
      const venue = await VenueModel.getOneByInstagramUsername(
        venueInstagramUsername
      );

      if (!venue) {
        console.error("venue does not exist, skip", { venueInstagramUsername });
        continue;
      }

      // update venue with external maps json
      const updatedVenue = await VenueModel.updateOneByInstagramUsername(
        venueInstagramUsername,
        {
          externalMapsJson: JSON.stringify(venue.externalMapsJson),
        }
      );

      console.log("successfully updated venue", {
        updatedVenue: venue.name,
        externalMapsJson: venue.externalMapsJson,
      });
    } catch (error) {
      console.error("something went wrong, skip", {
        venue,
      });
      console.error(error);
    }
  }

  process.exit();
};

main();
