-- Venue Table
CREATE TABLE Venue (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    instagramId TEXT NOT NULL UNIQUE,
    reviewStatus TEXT NOT NULL,
    name TEXT,
    address TEXT
);

-- MusicArtist Table
CREATE TABLE MusicArtist (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT NOT NULL,
    reviewStatus TEXT NOT NULL,
    genre TEXT,
    instagramId TEXT UNIQUE,
    youtubeId TEXT,
    spotifyId TEXT
);

-- MusicEvent Table
CREATE TABLE MusicEvent (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    link TEXT NOT NULL,
    country TEXT NOT NULL,
    city TEXT NOT NULL,
    reviewStatus TEXT NOT NULL,
    venueId UUID REFERENCES Venue(id) NOT NULL,
    openDateTime TIMESTAMPTZ,
    startDateTime TIMESTAMPTZ,
    earlyPrice DECIMAL(10,2),
    doorPrice DECIMAL(10,2),
    eventType TEXT,
    CHECK(openDateTime <= startDateTime)
);

-- Junction Table for MusicEvent and MusicArtist many-to-many relationship
CREATE TABLE MusicEventArtists (
    PRIMARY KEY(eventId, artistId),
    eventId UUID REFERENCES MusicEvent(id) NOT NULL,
    artistId UUID REFERENCES MusicArtist(id) NOT NULL
);