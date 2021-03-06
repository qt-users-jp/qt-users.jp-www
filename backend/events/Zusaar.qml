import QtQml 2.2

EventService {
    id: root
    function retrieve(query) {
        var request = new XMLHttpRequest()
        request.open("GET", 'http://www.zusaar.com/api/event/?count=100&%1'.arg(query), false)
        request.send()

        var list = JSON.parse(request.responseText).event
        var events = []
        for (var i in list) {
            var event = list[i]
            event.starts_at = event.started_at
            event.ends_at = event.ended_at
            event.venue_name = event.place
            event.venue_address = event.address
            event.venue_latitude = event.lat
            event.venue_longitude = event.lon
            event.capacity = event.limit
            events.push(event)
        }

        update(events)
    }
}
