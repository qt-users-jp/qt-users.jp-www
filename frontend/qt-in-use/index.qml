import Silk.HTML 5.0
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
                A {
                    _id: 'desktop'
                    text: 'デスクトップ系'
                }
            }
            Div {
                _class: 'row uniform'
                Div {
                    _class: '4u 6u(1024) 12u$(768)'
                    P {
                        Span {
                            _class: 'image left'
                            Img {
                                src: '/images/pic02.jpg'
                            }
                        }
                    }
                }
                Div {
                    _class: '4u 6u$(1024) 12u$(768)'
                    P {
                        Span {
                            _class: 'image left'
                            Img {
                                src: '/images/pic02.jpg'
                            }
                        }
                    }
                }
                Div {
                    _class: '4u$ 6u(1024) 12u$(768)'
                    P {
                        Span {
                            _class: 'image left'
                            Img {
                                src: '/images/pic02.jpg'
                            }
                        }
                    }
                }
            }

            H3 {
                A {
                    _id: 'mobile'
                    text: 'モバイル系'
                }
            }
            H3 {
                A {
                    _id: 'embedded'
                    text: '組み込み系'
                }
            }
            H3 {
                A {
                    _id: 'something-else'
                    text: 'その他'
                }
            }
        }
    }
}
