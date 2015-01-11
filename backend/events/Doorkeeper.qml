import QtQml 2.2

EventService {
    id: root
    function retrieve(group) {
        var request = new XMLHttpRequest()
        request.open('GET', 'http://api.doorkeeper.jp/groups/%1/events?sort=starts_at&since=2000-01-01'.arg(group), false)
        request.send()

        try {
            var list = JSON.parse(request.responseText)
            var events = []
            for (var i in list) {
                var event = list[i].event
                event.event_id = event.id
                event.event_url = event.public_url
                event.venue_address = event.address
                event.venue_latitude = event.lat
                event.venue_longitude = event.long
                event.capacity = event.ticket_limit
                event.accepted = event.participants
                event.waiting = event.waitlisted
                events.push(event)
            }

            update(events)
        } catch(e) {
            console.debug(e.error, request.readyState, request.status, request.responseText)
        }
    }
}
