import Silk.HTML 5.0
import Silk.Utils 1.0
import QtQml 2.2
import QtQml.Models 2.1
import 'templates'
import 'utils'
import 'qt-in-use'

QtUsersJp {
    Head {
        Link { rel: 'stylesheet'; href: '/css/index.qml' }
    }
    Body {
        _id: 'top'

        // Banner
        Section {
            _id: 'banner'
            Div {
                _class: 'row'
                Div {
                    _class: '8u 8u(1024) 12u$(768)'
                    H2 {
                        Text { text: '最小限のソースコードで<br />最高のアプリケーションを' }
                    }
                    P {
                        Text { text: 'シンプルなコードで、多彩なアプリが簡単に作れて<br />あらゆるプラットフォームで動かせる<br />そんな夢のような事を実現してしまう<br />クロスプラットフォーム・アプリケーションフレームワーク' }
                    }
                }
                Div {
                    _class: '4u 4u(1024) 12u$(768)'
                    Ul {
                        Li {
                            A {
                                _class: 'button big fit icon fa-download'
                                href: '/download.qml'
                                text: 'ダウンロード'
                            }
                        }
                        Li {
                            A {
                                _class: 'button big fit icon fa-desktop'
                                href: '/install/'
                                text: 'インストール'
                            }
                        }
                    }
                }
            }

        }

        // Main
        Div {
            _id: 'main'
            _class: 'container'

            Div {
                _class: 'row'
                Div {
                    _class: '4u 6u(1024) 12u$(768)'
                    H2 {
                        A {
                            href: '/qt-widgets/'
                            text: 'デスクトップアプリケーションは C++ で本格的に'
                        }
                    }
                    Pre {
                        Code {
                            text: '<span style=" color:#000080;">#include</span> <span style=" color:#008000;">&lt;QtWidgets/QApplication&gt;</span>
<span style=" color:#000080;">#include</span> <span style=" color:#008000;">&lt;QtWidgets/QLabel&gt;</span>

<span style=" color:#808000;">int</span> <span style=" color:#000000;">main</span><span style=" color:#000000;">(</span><span style=" color:#808000;">int</span> <span style=" color:#000000;">argc</span><span style=" color:#000000;">,</span> <span style=" color:#808000;">char</span> <span style=" color:#000000;">*</span><span style=" color:#000000;">argv</span><span style=" color:#000000;">[])</span>
<span style=" color:#000000;">{</span>
    <span style=" color:#800080;">QApplication</span> <span style=" color:#000000;">app</span><span style=" color:#000000;">(</span><span style=" color:#000000;">argc</span><span style=" color:#000000;">,</span> <span style=" color:#000000;">argv</span><span style=" color:#000000;">);</span>

    <span style=" color:#800080;">QLabel</span> <span style=" color:#000000;">label</span><span style=" color:#000000;">(</span><span style=" color:#008000;">"Hello World"</span><span style=" color:#000000;">);</span>
    <span style=" color:#000000;">label</span><span style=" color:#000000;">.</span><span style=" color:#000000;">show</span><span style=" color:#000000;">();</span>

    <span style=" color:#808000;">return</span> <span style=" color:#000000;">app</span><span style=" color:#000000;">.</span><span style=" color:#000000;">exec</span><span style=" color:#000000;">();</span>
<span style=" color:#000000;">}</span>'
                        }
                    }
                    P {
                        text: '...'
                    }
                }

                Div {
                    _class: '4u 6u$(1024) 12u$(768)'
                    H2 {
                        A {
                            href: '/qt-quick/'
                            text: '組み込み機器、モバイルアプリは QML で美しく'
                        }
                    }
                    Pre {
                        Code {
                            text: '<span style=" color:#808000;">import</span> QtQuick 2.4
<span style=" color:#808000;">import</span> QtQuick.Window 2.2

<span style=" color:#800080;">Window</span> {
    <span style=" color:#800000;">visible</span>: true
    <span style=" color:#800000;">width</span>: 360; <span style=" color:#800000;">height</span>: 360

    <span style=" color:#800080;">Text</span> {
        <span style=" color:#800000;">text</span>: <span style=" color:#2985c7;">qsTr</span>(<span style=" color:#008000;">"Hello World"</span>)
        <span style=" color:#800000;">anchors.centerIn</span>: <span style="text-decoration: italic;">parent</span>
    }
}'
                        }
                    }
                    P {
                        text: '...'
                    }
                }
                Div {
                    _class: '4u$ 6u(1024) 12u$(768)'
                    H2 { text: '１つのソースコードで様々なプラットフォームをカバー' }
                    H3 { text: 'デスクトップ系' }
                    Div {
                        _class: 'supported-platform'
                        Div {
                            _class: 'row uniform 50%'
                            Div { _class: '4u'; Span { I { _class: 'fa fa-windows fa-fw' } Text { text: 'Windows' } } }
                            Div { _class: '4u'; Span { I { _class: 'fa fa-linux fa-fw' } Text { text: 'Linux/X11' } } }
                            Div { _class: '4u$'; Span { I { _class: 'fa fa-apple fa-fw' } Text { text: 'Mac OS X' } } }
                        }
                    }
                    H3 { text: 'モバイル系' }
                    Div {
                        _class: 'supported-platform'
                        Div {
                            _class: 'row uniform 50%'
                            Div { _class: '4u'; Span { I { _class: 'fa fa-android fa-fw' } Text { text: 'Android' } } }
                            Div { _class: '4u'; Span { I { _class: 'fa fa-apple fa-fw' } Text { text: 'iOS' } } }
                            Div { _class: '4u'; Span { I { _class: 'fa fa-windows fa-fw' } Text { text: 'WinRT' } } }
                            Div { _class: '6u'; Span { I { _class: 'fa fa-mobile fa-fw' } Text { text: 'Ubuntu Touch' } } }
                            Div { _class: '6u$'; Span { I { _class: 'fa fa-mobile fa-fw' } Text { text: 'Sailfish OS' } } }
                        }
                    }
                    H3 { text: '組み込み系' }
                    Div {
                        _class: 'supported-platform'
                        Div {
                            _class: 'row uniform 50%'
                            Div { _class: '6u'; Span { I { _class: 'fa fa-android fa-fw' } Text { text: 'Embedded Android' } } }
                            Div { _class: '6u$'; Span { I { _class: 'fa fa-linux fa-fw' } Text { text: 'Embedded Linux' } } }
                            Div { _class: '12u$'; Span { I { _class: 'fa fa-windows fa-fw' } Text { text: 'Windows Embedded(Compact and Standard)' } } }
                            Div { _class: '4u'; Span { text: 'QNX' } }
                            Div { _class: '4u'; Span { text: 'VxWorks' } }
                            Div { _class: '4u$'; Span { text: 'INTEGRITY' } }
                        }
                    }
                }
                Div {
                    _class: '12u$ 6u$(1024) 12u$(768)'

                    H2 { text: 'Qt は実は色々なところで使われています' }
                    Div {
                        _class: 'box alt'
                        Div {
                            _class: 'row 50% uniform'
                            Repeater {
                                model: SummaryListModel { }
                                Component {
                                    QtInUseItem {}
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
