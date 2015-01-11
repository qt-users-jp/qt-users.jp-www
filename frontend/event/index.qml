import Silk.HTML 5.0
import Silk.Utils 1.0
import QtQml 2.2
import '../templates'
import '../utils'

QtUsersJp {
    __title: 'Qt勉強会'
    Body {
        _id: 'top'

        Div {
            _id: 'main'
            _class: 'container'

            Div {
                _class: 'row'
                Div {
                    _class: '6u 12u$(1024) 12u$(768)'
                    H2 {
                        text: 'Qt 勉強会'
                    }
                    Span {
                        _class: 'image fit'
                        Img {
                            src: 'event.jpg'
                        }
                    }

                    P {
                        text: '日本 Qt ユーザー会では定期的に勉強会を開催しています。'
                    }
                    P {
                        text: '初心者の方でも参加できる勉強会ですので、分からないことを聞いたり、つまずいているところを相談しに、気軽に遊びに来てください。'
                    }
                    Div {
                        _class: 'row'
                        Repeater {
                            model: EventModel { condition: 'starts_at > ?'; arguments: [new Date]; Component.onCompleted: update() }
                            Component {
                                Div {
                                    _class: '12u$'
                                    H2 {
                                        _class: 'alt'
                                        A {
                                            href: model.event_url
                                            target: '_blank'
                                            text: model.title
                                        }
                                    }
                                    Table {
                                        TBody {
                                            Tr {
                                                Th { text: '開催日時' }
                                                Td { text: '%1 〜'.arg(model.starts_at) }
                                            }
                                            Tr {
                                                Th { text: '場所' }
                                                Td {
                                                    A {
                                                        href: 'http://maps.google.com/?hl=ja&ie=UTF8&q=%1,%2&z=16'.arg(model.venue_latitude).arg(model.venue_longitude)
                                                        text: model.venue_address
                                                        target: '_blank'
                                                    }
                                                    Text {
                                                        text: '<br />%1'.arg(model.venue_name)
                                                    }
                                                }
                                            }
                                            Tr {
                                                Th { text: '参加予定 / 定員' }
                                                Td { text: '%1%2 / %3'.arg(model.accepted).arg(model.waiting > 0 ? '(%1)'.arg(model.waiting) : '').arg(model.capacity) }
                                            }
                                        }
                                    }
                                    P {
                                        A {
                                            enabled: model.service_type_id === 1
                                            _class: 'button alt fit'
                                            href: '%1/tickets/new'.arg(model.event_url)
                                            text: '%1 に申し込む'.arg(model.title)
                                            target: '_blank'
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                Div {
                    _class: '6u$ 12u$(1024) 12u$(768)'
                    H3 { text: '過去の勉強会' }
                    Div {
                        _class: 'row uniform'

                        Repeater {
                            model: EventModel { condition: 'starts_at < ?'; arguments: [new Date]; Component.onCompleted: update() }
                            Component {
                                Div {
                                    _class: model.index % 2 === 0 ? '6u' : '6u$'
                                    H4 {
                                        A {
                                            href: model.event_url
                                            target: '_blank'
                                            text: model.title
                                        }
                                    }
                                    Table {
                                        TBody {
                                            Tr {
                                                Th { text: '開催日時' }
                                                Td { text: '%1 〜'.arg(model.starts_at) }
                                            }
                                            Tr {
                                                Th { text: '参加人数' }
                                                Td { text: '%1%2 / %3'.arg(model.accepted).arg(model.waiting > 0 ? '(%1)'.arg(model.waiting) : '').arg(model.capacity) }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
