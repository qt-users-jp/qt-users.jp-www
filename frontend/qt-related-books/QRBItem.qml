import Silk.HTML 5.0

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

