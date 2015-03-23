import QtQml 2.2
import QtQuick.LocalStorage 2.0
import '../shared/SqlReader.js' as SqlReader

QtObject {
    id: root

    property Timer timer: Timer {
        interval: 60 * 1000
        repeat: true
        running: true
        triggeredOnStart: true
        onTriggered: retrieve()
    }

    property var db: LocalStorage.openDatabaseSync("qt-users.jp", "1.0", "http://qt-users.jp/", 1000000)
    property var service_type_map

    property EventService doorkeeper: Doorkeeper {
        id: doorkeeper
        db: root.db
        service_type: root.service_type_map['doorkeeper'] ? root.service_type_map['doorkeeper'] : -1
    }

    property EventService zusaar: Zusaar {
        id: zusaar
        db: root.db
        service_type: root.service_type_map['zusaar'] ? root.service_type_map['zusaar'] : -1
    }

    property EventService atnd: Atnd {
        id: atnd
        db: root.db
        service_type: root.service_type_map['atnd'] ? root.service_type_map['atnd'] : -1
    }

    function retrieve() {
        doorkeeper.retrieve('qt-users')
        zusaar.retrieve('owner_id=agxzfnp1c2Fhci1ocmRyFQsSBFVzZXIiCzE5NDkxNzc2X3R3DA')
        zusaar.retrieve('owner_id=agxzfnp1c2Fhci1ocmRyHAsSBFVzZXIiEjEwMDAwMDcyOTYzMzc1NF9mYgw')
        zusaar.retrieve('owner_id=agxzfnp1c2Fhci1ocmRyFgsSBFVzZXIiDDExOTAzOTE2N190dww')
        atnd.retrieve('keyword=Qt勉強会')
        atnd.retrieve('keyword=Qt%20＠福岡')
    }

    function createDatabase() {
        db.transaction(
            function(tx) {
                tx.executeSql(SqlReader.read(Qt.resolvedUrl('create_table_service_type.sql')))
                tx.executeSql(SqlReader.read(Qt.resolvedUrl('create_table_event.sql')))

                var rs = tx.executeSql('SELECT id, name FROM service_type')
                var service_type = {}
                for (var i = 0; i < rs.rows.length; i++) {
                    service_type[rs.rows.item(i).name] = rs.rows.item(i).id
                }
                var services = ['doorkeeper', 'zusaar', 'atnd']
                for (var j in services) {
                    if (!service_type[services[j]]) {
                        service_type[services[j]] = tx.executeSql(SqlReader.read(Qt.resolvedUrl('insert_service_type.sql')), [services[j]]).insertId
                    }
                }
                root.service_type_map = service_type
            }
            )
    }

    Component.onCompleted: createDatabase()
}
