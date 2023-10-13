import path from "path";
import { DatabaseManager } from "../database/db-manager";
import fs from "fs";
import { NewVenue, VenueModel } from "../database/models/venue";
import { ReviewStatus } from "../utils/types";
import { NewMusicArtist } from "../database/models/music-artist";
import { YoutubeMusicService } from "../services/youtube-music.service";
import { SpotifyService } from "../services/spotify.service";

const main = async () => {
  const filePath = path.resolve(__dirname, `../../../public-show-data.json`);

  const json = await fs.readFileSync(filePath, "utf-8");
  const publicData = JSON.parse(json);

  const events: any[] = Object.values(publicData);

  const venueNames = events.map((event) => event.location);
  const uniqueVenueNames = venueNames.filter((venue, index) => {
    return venueNames.indexOf(venue) === index;
  });

  await saveVenues(uniqueVenueNames);
};

const saveVenues = async (venueNames: string[]) => {
  const venues: NewVenue[] = venueNames.map((venueName, i) => {
    return {
      name: venueName,
      city: "Seoul",
      country: "KR",
      reviewStatus: ReviewStatus.PENDING,
      instagramId: i.toString(),
    };
  });

  console.log("saving venues", venueNames.length);
  console.log("eg", venues.slice(0, 5));

  try {
    await VenueModel.addMany(venues);
  } catch (error) {
    console.error("Error saving venues", error);
  }
};

const saveArtists = async (artistNames: string[]) => {
  // const newArtists: NewMusicArtist[] = artistNames.map(
  //   async (artistName, i) => {
  //     const spotifyArtist = await SpotifyService.searchArtistByName(artistName);
  //     return {
  //       name: artistName,
  //       genre: spotifyArtist?.genre,
  //       spotifyId: spotifyArtist?.spotifyId,
  //       reviewStatus: spotifyArtist
  //         ? ReviewStatus.PENDING // pending bc we need to check if spotify data is correct
  //         : ReviewStatus.VALID,
  //     };
  //   }
  // );
};

main();
