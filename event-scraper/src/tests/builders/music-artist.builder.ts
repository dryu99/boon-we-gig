import {
  MusicArtistModel,
  NewMusicArtist,
} from "../../database/models/music-artist";
import { v4 as uuidv4 } from "uuid";

export class MusicArtistBuilder {
  private musicArtist: NewMusicArtist;

  constructor() {
    const id = uuidv4();

    this.musicArtist = {
      id,
      name: "빌전 (@billjohn)",
      reviewStatus: "PENDING",
      country: "KO",
      slug: MusicArtistModel.generateSlug("빌전 (@billjohn)", id),
    };
  }

  public withName(name: string) {
    this.musicArtist.name = name;
    return this;
  }

  public build() {
    return this.musicArtist;
  }
}
