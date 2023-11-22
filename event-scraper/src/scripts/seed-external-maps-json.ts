import { DatabaseManager } from "../database/db-manager";
import { VenueModel } from "../database/models/venue";
import { ExternalMapsJson } from "../utils/types";

const externalMapsData: {
  venueInstagramUsername: string;
  externalMapsJson: ExternalMapsJson;
}[] = [
  {
    venueInstagramUsername: "seendosi",
    externalMapsJson: {
      google_maps_url: "https://maps.app.goo.gl/4yy12URtMUpqNskE9",
      kakao_maps_url: "https://kko.to/Ex-3Y3SlXM",
      naver_maps_url: "https://naver.me/GLKA3Nx6",
    },
  },
];

const main = async () => {
  DatabaseManager.start();

  for (const { venueInstagramUsername, externalMapsJson } of externalMapsData) {
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
          externalMapsJson: JSON.stringify(externalMapsJson),
        }
      );

      console.log("successfully updated venue", {
        updatedVenue: venue.name,
        externalMapsJson: venue.externalMapsJson,
      });
    } catch (error) {
      console.error("something went wrong, skip", {
        venueInstagramUsername,
        externalMapsJson,
      });
      console.error(error);
    }
  }

  process.exit();
};

main();
