import Silk.CSS 3.0

Css {

    Rule {
        selector: 'body, input, select, textarea'
        font_size: '10pt'
    }

    Rule {
        selector: '#skel-layers-wrapper'
        property string padding_top: '0'
    }

    Rule {
        selector: '#banner'
        property string padding: '6em 0'

        Rule {
            selector: 'h2'
            font_size: '3.0em'
        }
    }
}
