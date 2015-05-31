import Silk.HTML 5.0
import Silk.Utils 1.0
import QtQml 2.2
import QtQml.Models 2.1
import '../templates'
import '../utils'

QtUsersJp {
    __title: 'Qt の使用事例'
    Body {
        _id: 'top'

        // Main
        Div {
            _id: 'main'
            _class: 'container'

            H2 {
                text: 'Qt の使用事例'
            }
            H3 {
                _id: 'desktop'
                text: 'デスクトップ系'
            }
            Div {
                _class: 'row uniform'
                Repeater {
                    model: DesktopListModel { }
                    Component {
                        QtInUseItem {}
                    }
                }
            }

            H3 {
                _id: 'mobile'
                text: 'モバイル系'
            }
            Div {
                _class: 'row uniform'
                Repeater {
                    model: MobileListModel { }
                    Component {
                        QtInUseItem {}
                    }
                }
            }

            H3 {
                _id: 'embedded'
                text: '組み込み系'
            }
             Div {
                _class: 'row uniform'
                Repeater {
                    model: EmbededListModel { }
                    Component {
                        QtInUseItem {}
                    }
                }
            }

           H3 {
                _id: 'something-else'
                text: 'その他'
            }
             Div {
                _class: 'row uniform'
                Repeater {
                    model: SomethingElseListModel { }
                    Component {
                        QtInUseItem {}
                    }
                }
            }

       }
    }
}
