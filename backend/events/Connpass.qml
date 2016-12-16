import QtQml 2.2

EventService {
    id: root
    function retrieve(group) {
        var request = new XMLHttpRequest()
        request.open('GET', 'https://connpass.com/api/v1/event/?series_id=%1'.arg(group), false)
        request.send()

        try {
            var list = JSON.parse(request.responseText).events
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
        } catch(e) {
            console.debug(e.error, request.readyState, request.status, request.responseText)
        }
    }
}
