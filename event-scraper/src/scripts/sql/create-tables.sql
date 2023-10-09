-- venue table
CREATE TABLE venue (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    instagram_id TEXT NOT NULL UNIQUE,
    review_status TEXT NOT NULL,
    name TEXT,
    address TEXT
);

-- music_artist table
CREATE TABLE music_artist (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT NOT NULL,
    review_status TEXT NOT NULL,
    genre TEXT,
    instagram_id TEXT UNIQUE,
    youtube_id TEXT,
    spotify_id TEXT
);

-- music_event table
CREATE TABLE music_event (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    link TEXT NOT NULL,
    country TEXT NOT NULL,
    city TEXT NOT NULL,
    review_status TEXT NOT NULL,
    venue_id UUID REFERENCES venue(id) NOT NULL,
    open_date_time TIMESTAMPTZ,
    start_date_time TIMESTAMPTZ,
    early_price DECIMAL(10,2),
    door_price DECIMAL(10,2),
    event_type TEXT,
    CHECK(open_date_time <= start_date_time)
);

-- Junction table for music_event and music_artist many-to-many relationship
CREATE TABLE music_event_artists (
    PRIMARY KEY(event_id, artist_id),
    event_id UUID REFERENCES music_event(id) NOT NULL,
    artist_id UUID REFERENCES music_artist(id) NOT NULL
);