import QtQml 2.2
import QtQml.Models 2.1
import QtQuick.LocalStorage 2.0

ListModel {
    id: root

    property string condition: ''
    property var arguments

    function update() {
        var db = LocalStorage.openDatabaseSync("qt-users.jp", "1.0", "http://qt-users.jp/", 1000000)
        db.transaction(
                    function(tx) {
                        var rs = tx.executeSql('SELECT * FROM event WHERE %1 ORDER BY starts_at DESC'.arg(root.condition), root.arguments)
                        for (var i = 0; i < rs.rows.length; i++) {
                            root.append(rs.rows.item(i))
                        }
                    }
                    )
    }
}

