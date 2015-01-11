CREATE TABLE IF NOT EXISTS event(
    id INTEGER PRIMARY KEY AUTOINCREMENT
    , service_type_id INT NOT NULL
    , event_id TEXT NOT NULL
    , updated_at TEXT
    , title TEXT NOT NULL
    , catch TEXT
    , description TEXT
    , event_url TEXT
    , starts_at TEXT
    , ends_at TEXT

    , venue_name TEXT
    , venue_address TEXT
    , venue_latitude TEXT
    , venue_longitude TEXT

    , capacity INT
    , accepted INT
    , waiting INT
)
