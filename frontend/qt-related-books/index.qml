import Silk.HTML 5.0
import Silk.Utils 1.0
import QtQml 2.2
import QtQml.Models 2.1
import '../templates'
import '../utils'

QtUsersJp {
    __title: 'Qt関連の書籍'

    Body {
        _id: 'top'

        // Main
        Div {
            _id: 'main'
            _class: 'container'

            H2 {
                text: 'Qt関連の書籍'
            }

            Div {
                _class: 'row uniform'

                Repeater {
                    model: QRBSummaryModel {}
                    Component {
                        QRBItem {}
                    }
                }
            }
        }
    }
}
