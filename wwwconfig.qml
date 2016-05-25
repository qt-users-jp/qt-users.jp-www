import Silk.Config 0.1

Config {
    property string root: '/home/silk/jp/qt-users/www'
    contents: {
        '/': root + '/frontend/'
    }

    daemons: [
        root + '/backend/events/events_backend.qml'
    ]

    offlineStoragePath: root + '/database/'
}
