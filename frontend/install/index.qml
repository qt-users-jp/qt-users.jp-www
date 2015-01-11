import Silk.HTML 5.0
import '../templates'
import '../utils'

QtUsersJp {
    __title: 'インストール'
    Body {
        _id: 'top'

        // Main
        Div {
            _id: 'main'
            _class: 'container'

            H2 {
                text: 'インストール'
            }

            Div {
                _class: 'row uniform'
                Div {
                    _class: '4u 6u(1024) 12u$(768)'
                    A {
                        _class: 'button alt big fit'
                        href: '/install/ubuntu-linux-14-10.qml'
                        text: 'Ubuntu Linux 14.10'
                    }
                }
                Div {
                    _class: '4u 6u$(1024) 12u$(768)'
                    A {
                        _class: 'button alt big fit'
                        href: '/install/mac-os-x-yosemite.qml'
                        text: 'Mac OS X - Yosemite'
                    }
                }
                Div {
                    _class: '4u$ 6u(1024) 12u$(768)'
                    A {
                        _class: 'button alt big fit'
                        href: '/install/microsoft-windows-8.qml'
                        text: 'Microsoft Windows 8'
                    }
                }
                Div {
                    _class: '4u 6u$(1024) 12u$(768)'
                    A {
                        _class: 'button alt big fit'
                        href: '/download.qml#commercial'
                        text: 'その他'
                    }
                }
            }
        }
    }
}
