import Silk.HTML 5.0
import Silk.Utils 1.0
import QtQml 2.2
import QtQml.Models 2.1
import 'templates'
import 'utils'

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
                    model: ListModel {
                        ListElement {
                            href: "http://index.ascii.jp/5912/"
                            image: "http://index.ascii.jp/ss/cover/bookcover/200/978-4-04-891512-0.jpg"
                        }
                        ListElement {
                            href: "https://relog.booth.pm/items/36588"
                            image: "https://s.booth.pm/c/f_620/48d0f687-6442-4b33-83da-2de0c72f5a1b/i/36588/eec20ae9-5e3a-4c20-9a43-728ada6d4590.jpg"
                        }
                        ListElement {
                            href: "https://relog.booth.pm/items/64657"
                            image: "https://s.booth.pm/c/f_620/48d0f687-6442-4b33-83da-2de0c72f5a1b/i/64657/146a1744-f1ef-43e5-8857-5ca4ec28ddf5.jpg"
                        }
                    }
                    Component {
                        Div {
                            _class: '2u 12u$(1024) 12u$(768)'
                            Div {
                                _class: 'image fit'
                                A {
                                    href: model.href
                                    target: '_blank'
                                    Img {
                                        src: model.image
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
