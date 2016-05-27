import Silk.Config 0.1

Config {
    property string root: '/home/silk/jp/qt-users/www'

    listen: Listen {
        address: 'localhost'
        port: 8008
    }

    contents: {
        '/': root + '/frontend/'
    }

    daemons: [
        root + '/backend/events/events_backend.qml'
    ]

    offlineStoragePath: root + '/database/'
}
