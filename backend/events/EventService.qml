import QtQml 2.0
import '../shared/SqlReader.js' as SqlReader

QtObject {
    id: root
    property var db
    property int service_type: -1

    property string select_sql: SqlReader.read(Qt.resolvedUrl('select_event.sql'))
    property string update_sql: SqlReader.read(Qt.resolvedUrl('update_event.sql'))
    property string insert_sql: SqlReader.read(Qt.resolvedUrl('insert_event.sql'))

    function isValid(event) {
        if (event.title.indexOf('Qt') < 0)
            return false
        if (event.title.indexOf('勉強会') < 0)
            return false
        return true
    }

    function update(events) {
        db.transaction(
                    function(tx) {
                        for (var i in events) {
                            var event = events[i]
                            if (!isValid(event)) {
                                continue
                            }

                            // check if an event already exists
                            var rs = tx.executeSql(
                                        select_sql
                                        , [root.service_type, event.event_id]
                                        )
                            if (rs.rows.length > 0) {
                                var id = rs.rows.item(0).id
                                tx.executeSql(
                                            update_sql
                                            , [
                                                new Date(event.updated_at)
                                                , event.title
                                                , event.catch
                                                , event.description
                                                , event.event_url
                                                , new Date(event.starts_at)
                                                , new Date(event.ends_at)

                                                , event.venue_name
                                                , event.venue_address
                                                , event.venue_latitude
                                                , event.venue_longitude

                                                , event.capacity
                                                , event.accepted
                                                , event.waiting
                                                , id
                                            ]
                                            )
                            } else {
                                tx.executeSql(
                                            insert_sql
                                            , [
                                                root.service_type
                                                , event.event_id
                                                , new Date(event.updated_at)
                                                , event.title
                                                , event.catch
                                                , event.description
                                                , event.event_url
                                                , new Date(event.starts_at)
                                                , new Date(event.ends_at)

                                                , event.venue_name
                                                , event.venue_address
                                                , event.venue_latitude
                                                , event.venue_longitude

                                                , event.capacity
                                                , event.accepted
                                                , event.waiting
                                            ]
                                            )
                            }
                        }
                    }
                    )
    }
}
