import Silk.HTML 5.0
import Silk.Utils 1.0
import QtQml 2.2
import 'templates'
import 'utils'

QtUsersJp {
    __title: 'Qt をはじめよう！'

    Body {
        _id: 'top'

        // Main
        Div {
            _id: 'main'
            _class: 'container'

            H2 {
                text: 'Qt をはじめよう！'
            }

            Div {
                _class: 'row uniform'
                Div {
                    _class: '6u 12u$(1024) 12u$(768)'
                    Div {
                        _class: 'row uniform'
                        Div {
                            _class: '12u$'
                            A {
                                _class: 'button alt big fit'
                                href: '/download.qml'
                                text: 'ダウンロード'
                            }
                        }
                        Div {
                            _class: '6u'
                            A {
                                _class: 'button alt big fit'
                                href: '/download.qml#opensource'
                                text: 'オープンソース版'
                            }
                        }
                        Div {
                            _class: '6u$'
                            A {
                                _class: 'button alt big fit'
                                href: '/download.qml#commercial'
                                text: 'コマーシャル版'
                            }
                        }
                    }
                }
                Div {
                    _class: '6u$ 12u$(1024) 12u$(768)'
                    Div {
                        _class: 'row uniform'

                        Div {
                            _class: '12u$'
                            A {
                                _class: 'button alt big fit'
                                href: '/install/'
                                text: 'インストール'
                            }
                        }
                        Div {
                            _class: '6u'
                            A {
                                _class: 'button alt big fit'
                                href: '/install/ubuntu-linux-14-10.qml'
                                text: 'Ubuntu Linux 14.10'
                            }
                        }
                        Div {
                            _class: '6u$'
                            A {
                                _class: 'button alt big fit'
                                href: '/install/mac-os-x-yosemite.qml'
                                text: 'Mac OS X - Yosemite'
                            }
                        }
                        Div {
                            _class: '6u'
                            A {
                                _class: 'button alt big fit'
                                href: '/install/microsoft-windows-8.qml'
                                text: 'Microsoft Windows 8'
                            }
                        }
                        Div {
                            _class: '6u$'
                            A {
                                _class: 'button alt big fit'
                                href: '/download.qml#commercial'
                                text: 'その他'
                            }
                        }
                    }
                }
                Div {
                    _class: '6u 12u$(1024) 12u$(768)'
                    Div {
                        _class: 'row uniform'
                        Div {
                            _class: '12u$'
                            A {
                                _class: 'button alt big fit'
                                href: '/qt-cpp/'
                                text: 'Qt/C++ アプリケーション開発'
                            }
                        }
                    }
                }
                Div {
                    _class: '6u$ 12u$(1024) 12u$(768)'
                    Div {
                        _class: 'row uniform'
                        Div {
                            _class: '12u$'
                            A {
                                _class: 'button alt big fit'
                                href: '/qt-quick/'
                                text: 'Qt Quick アプリケーション開発'
                            }
                        }
                    }
                }
            }
        }
    }
}
