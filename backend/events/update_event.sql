UPDATE event
SET updated_at = datetime(?)
, title = ?
, catch = ?
, description = ?
, event_url = ?
, starts_at = datetime(?)
, ends_at = datetime(?)

, venue_name = ?
, venue_address = ?
, venue_latitude = ?
, venue_longitude = ?

, capacity = ?
, accepted = ?
, waiting = ?
WHERE id = ?
