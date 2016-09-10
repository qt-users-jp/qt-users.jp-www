import Silk.HTML 5.0
import Silk.Utils 1.0
import QtQml 2.1
import '../utils/'
import '../event/'

Html {
    id: root
    property string __title
    Head {
        id: head
        Meta {
            http_equiv: 'content-type'
            content: 'text/html; charset=utf-8'
        }
        Title {
            id: title
            text: '%1日本 Qt ユーザー会'.arg(root.__title.length > 0 ? '%1 - '.arg(root.__title) : '')
        }

//        Meta { name: 'description'; content: '' }
//        Meta { name: 'keywords'; content: '' }
        Text { text: '<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->' }
        Link { rel: 'stylesheet'; href: '/css/font-awesome.min.css' }
        Script { src: '/js/jquery.min.js' }
        Script { src: '/js/jquery.dropotron.min.js' }
        Script { src: '/js/skel.min.js' }
        Script { src: '/js/skel-layers.min.js' }
        Script { src: '/js/init.js' }
        NoScript {
            Link { rel: 'stylesheet'; href: '/css/skel.css' }
            Link { rel: 'stylesheet'; href: '/css/qt-users.qml' }
            Link { rel: 'stylesheet'; href: '/css/xlarge.qml' }
        }
    }

    Body {
        id: body

        // Header
        Header {
            _id: 'header'
            _class: 'skel-layers-fixed'
            H1 {
                A {
                    href: '/'
                    Img { src: '/images/Qt-logo.png'; alt: 'Qt'; width: '64px'; height: '64px' }
                    Text { text: '日本 Qt ユーザー会' }
                }
            }
            Nav {
                _id: 'nav'
                Ul {
                    Li {
                        A {
                            href: '/'
                            I { _class: 'fa fa-home fa-fw' }
                            Nbsp {}
                            Text { text: 'ホーム' }
                        }
                        Ul {
                            Li {
                                A {
                                    href: '/event/'
                                    I { _class: 'fa fa-calendar fa-fw' }
                                    Nbsp {}
                                    Text { text: 'Qt 勉強会' }
                                }
                            }
                            Li {
                                A {
                                    href: '/qt-in-use/'
                                    I { _class: 'fa fa-calculator fa-fw' }
                                    Nbsp {}
                                    Text { text: 'Qt の使用事例' }
                                }
                                Ul {
                                    Li {
                                        A {
                                            href: '/qt-in-use/index.qml#desktop'
                                            I { _class: 'fa fa-desktop fa-fw' }
                                            Nbsp {}
                                            Text { text: 'デスクトップ系' }
                                        }
                                    }
                                    Li {
                                        A {
                                            href: '/qt-in-use/index.qml#mobile'
                                            I { _class: 'fa fa-mobile fa-fw' }
                                            Nbsp {}
                                            Text { text: 'モバイル系' }
                                        }
                                    }
                                    Li {
                                        A {
                                            href: '/qt-in-use/index.qml#embedded'
                                            I { _class: 'fa fa-tablet fa-rotate-90 fa-fw' }
                                            Nbsp {}
                                            Text { text: '組み込み系' }
                                        }
                                    }
                                }
                            }
                            Li {
                                A {
                                    href: '/'
                                    I { _class: 'fa fa-users fa-fw' }
                                    Nbsp {}
                                    Text { text: 'コミュニティに参加しよう！' }
                                }
                            }
                        }
                    }
                    Li {
                        A {
                            href: '/getting-started.qml'
                            I { _class: 'fa fa-play-circle fa-fw' }
                            Nbsp {}
                            Text { text: 'Qt をはじめよう！' }
                        }
                        Ul {
                            Li {
                                A {
                                    href: '/download.qml'
                                    I { _class: 'fa fa-download fa-fw' }
                                    Nbsp {}
                                    Text { text: 'ダウンロード' }
                                }
                            }
                            Li {
                                A {
                                    href: '/install/'
                                    I { _class: 'fa fa-laptop fa-fw' }
                                    Nbsp {}
                                    Text { text: 'インストール' }
                                }
                                Ul {
                                    Li {
                                        A {
                                            href: '/install/ubuntu-linux-14-10.qml'
                                            I { _class: 'fa fa-linux fa-fw' }
                                            I { _class: 'fa fa-android fa-fw' }
                                            Nbsp {}
                                            Text { text: 'Ubuntu Linux 14.10' }
                                        }
                                    }
                                    Li {
                                        A {
                                            href: '/install/mac-os-x-yosemite.qml'
                                            I { _class: 'fa fa-apple fa-fw' }
                                            I { _class: 'fa fa-android fa-fw' }
                                            Nbsp {}
                                            Text { text: 'Mac OS X - Yosemite' }
                                        }
                                    }
                                    Li {
                                        A {
                                            href: '/install/microsoft-windows-8.qml'
                                            I { _class: 'fa fa-windows fa-fw' }
                                            I { _class: 'fa fa-android fa-fw' }
                                            Nbsp {}
                                            Text { text: 'Microsoft Windows 8' }
                                        }
                                    }
                                    Li {
                                        A {
                                            href: '/install/#other'
                                            I { _class: 'fa fa-fw' }
                                            I { _class: 'fa fa-ellipsis-h fa-fw' }
                                            Nbsp {}
                                            Text { text: 'その他' }
                                        }
                                    }
                                }
                            }
                            Li {
                                A {
                                    href: '/qt-cpp/'
                                    I { _class: 'fa fa-desktop fa-fw' }
                                    Nbsp {}
                                    Text { text: 'Qt/C++ アプリケーション開発' }
                                }
                            }
                            Li {
                                A {
                                    href: '/qt-quick/'
                                    I { _class: 'fa fa-mobile fa-fw' }
                                    Nbsp {}
                                    Text { text: 'Qt Quick アプリケーション開発' }
                                }
                            }
                            Li {
                                A {
                                    href: '/qt-related-books/'
                                    I { _class: 'fa fa-book fa-fw' }
                                    Nbsp {}
                                    Text { text: 'Qt関連の書籍' }
                                }
                            }
                        }
                    }
                    Li {
                        A {
                            href: '/getting-started.qml'
                            I { _class: 'fa fa-play-circle fa-fw' }
                            Nbsp {}
                            Text { text: 'Qt をつかいこなそう！' }
                        }
                    }
                    Li {
                        A {
                            href: '/'
                            I { _class: 'fa fa-question-circle fa-fw' }
                            Nbsp {}
                            Text { text: 'こまったときは？' }
                        }
                    }
                    Li {
                        A {
                            href: '/'
                            I { _class: 'fa fa-share-alt fa-fw' }
                            Nbsp {}
                            Text { text: 'シェア' }
                        }
                        Ul {
                            Li {
                                _class: 'share-twitter'
                                A {
                                    href: 'http://twitter.com/home?status=%1%3%2'.arg(root.__title.length > 0 ? root.__title : '日本 Qt ユーザー会').arg(http.scheme + '://' + http.host + http.path).arg('%20')
                                    target: '_blank'
                                    I { _class: 'fa fa-twitter fa-fw' }
                                    Nbsp {}
                                    Text { text: 'Twitter' }
                                }
                            }
                            Li {
                                _class: 'share-facebook'
                                A {
                                    href: 'https://www.facebook.com/sharer/sharer.php?u=%1'.arg(http.scheme + '://' + http.host + http.path)
                                    target: '_blank'
                                    I { _class: 'fa fa-facebook fa-fw' }
                                    Nbsp {}
                                    Text { text: 'Facebook' }
                                }
                            }
                            Li {
                                _class: 'share-google'
                                A {
                                    href: 'https://plus.google.com/share?url=%1'.arg(http.scheme + '://' + http.host + http.path)
                                    target: '_blank'
                                    I { _class: 'fa fa-google-plus fa-fw' }
                                    Nbsp {}
                                    Text { text: 'Google+' }
                                }
                            }
                            Li {
                                _class: 'share-hatena'
                                A {
                                    href: 'http://b.hatena.ne.jp/add?mode=confirm&url=%1'.arg(http.scheme + '://' + http.host + http.path)
                                    target: '_blank'
                                    I { _class: 'fa fa-fw' }
                                    Nbsp {}
                                    Text { text: 'はてブ' }
                                }
                            }
                            Li {
                                _class: 'share-pocket'
                                A {
                                    href: 'http://getpocket.com/edit?url=%1'.arg(http.scheme + '://' + http.host + http.path)
                                    target: '_blank'
                                    I { _class: 'fa fa-fw' }
                                    Nbsp {}
                                    Text { text: 'Pocket' }
                                }
                            }
                        }
                    }
//                    Li {
//                        A {
//                            href: '#'
//                            _class: 'button special small'
//                            I { _class: 'fa fa-user fa-fw' }
//                            Nbsp {}
//                            Text { text: 'ログイン' }
//                        }
//                    }
                }
            }
        }

        Tag {
            id: contents
        }
        // Footer
        Footer {
            _id: 'footer'
            Div {
                _class: 'container'
                Div {
                    _class: 'row'
                    Div {
                        _class: '6u 12u$(1024) 12u$(768)'
                        H2 { text: '日本 Qt ユーザー会について' }
                        P {
                            Text { text: '日本 Qt ユーザー会は <a href="http://qt.io/" target="_blank">Qt</a> の日本での普及を目指すために、日本各地で活躍している Qt ユーザーによって作られたコミュニティです。' }
                            Br {}
                            Text { text: '日本語での Qt の情報の発信や、Qt をはじめたばかりの方のサポート、Qt や Qt Creator などの日本語訳、勉強会などの活動を日々行っています。' }
                        }
                        H3 { text: 'コミュニティに参加しよう' }
                        P {
                            Text { text: '日本 Qt ユーザー会のメーリングリストでは、勉強会をはじめ様々なコミュニティ活動の情報などがシェアされています。Qt の使い方などに関する質問も随時受けつけていますので、お気軽に投稿してください。また、Qt のプロモーション活動の提案なども大歓迎です。メーリングリストのアーカイブは<a href="http://qt-users.jp/pipermail/qt-users/" target="_blank">こちら</a>' }
                        }

                        Form {
                            _id: 'mailinglist'
                            method: 'post'
                            action: '#'
                            Div {
                                _class: 'row uniform 50%'
                                Div {
                                    _class: '6u'
                                    Input {
                                        type: 'text'
                                        name: 'email'
                                        _id: 'email'
                                        value: ''
                                        placeholder: 'メールアドレス'
                                    }
                                }
                                Div {
                                    _class: '6u$'
                                    Input {
                                        _class: 'fit'
                                        type: 'submit'
                                        value: 'メーリングリストに登録'
                                        title: '入力されたメールアドレス宛に確認メールを送信します。'
                                    }
                                }
                            }
                        }
                    }
                    Div {
                        _class: '3u 6u(1024) 12u$(768)'
                        H3 { text: '今後の活動情報' }
                        P {
                            enabled: eventModel.count === 0
                            text: '現在開催が確定している勉強会はありません。勉強会の情報はメーリングリストでシェアされますので、登録をお願いします。'
                        }

                        Repeater {
                            model: EventModel { id: eventModel; condition: 'ends_at > ?'; arguments: [new Date]; Component.onCompleted: update() }
                            Component {
                                BlockQuote {
                                    H4 {
                                        A {
                                            href: model.event_url
                                            target: '_blank'
                                            text: model.title
                                        }
                                    }
                                    P {
                                        Text { text: '%1 〜'.arg(model.starts_at) }
                                        Br {}
                                        A {
                                            href: 'http://maps.google.com/?hl=ja&ie=UTF8&q=%1,%2&z=16'.arg(model.venue_latitude).arg(model.venue_longitude)
                                            text: model.venue_address
                                            target: '_blank'
                                        }
                                    }
                                    P {
                                        A {
                                            _class: 'button fit'
                                            href: model.event_url

                                            target: '_blank'
                                            text: '申し込みサイトへ'
                                        }
                                    }
                                }
                            }
                        }
                    }
                    Div {
                        _class: '3u$ 6u$(1024) 12u$(768)'
                        H3 { text: 'このウェブサイトについて' }
                        P {
                            text: '日本 Qt ユーザー会のウェブサイトのほぼすべては Qt を使用して作られています。'
                        }
                        P {
                            text: '日本 Qt ユーザー会のウェブサイトは <a href="https://www.conoha.jp/community" target="_blank">ConoHa支援プログラム</a> の支援を受けて運用されています。'
                        }
                    }
                }
            }
            Div {
                _class: 'copyright'
                P {
                    Text { text: '&copy; Japan Qt Users\' Group. All rights reserved.' }
                }
                P {
                    Text { text: 'Powered by ' }
                    A {
                        href: 'http://www.conoha.jp/'
                        target: '_blank'
                        text: 'ConoHa'
                    }
                    Text { text: ', ' }
                    A {
                        href: 'http://silk.qtquick.me/'
                        target: '_blank'
                        text: 'Silk'
                    }
                    Text { text: ' and ' }
                    A {
                        href: 'http://getskel.com/'
                        target: '_blank'
                        text: 'Skel'
                    }
                }
            }
        }
    }

    default property alias contents: container.contents
    QtUsersContainer {
        id: container
        head: head
        body: contents
    }
}
