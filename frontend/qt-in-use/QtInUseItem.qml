import Silk.HTML 5.0

Div {
    _class: '3u%1 6u%2(768)'.arg(model.index % 4 == 3 ? '$' : '').arg(model.index % 2 == 1 ? '$' : '')
    A {
        href: model.href
        title: model.title
        Span {
            _class: 'image fit'
            Img {
                src: '/images/qt-in-use/%1'.arg(model.image)
                alt: model.title
            }
        }
    }
}
