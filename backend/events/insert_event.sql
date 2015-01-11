INSERT INTO event (
    service_type_id
    , event_id
    , updated_at
    , title
    , catch
    , description
    , event_url
    , starts_at
    , ends_at

    , venue_name
    , venue_address
    , venue_latitude
    , venue_longitude

    , capacity
    , accepted
    , waiting
) VALUES (
    ?
    , ?
    , datetime(?)
    , ?
    , ?
    , ?
    , ?
    , datetime(?)
    , datetime(?)

    , ?
    , ?
    , ?
    , ?

    , ?
    , ?
    , ?
)
