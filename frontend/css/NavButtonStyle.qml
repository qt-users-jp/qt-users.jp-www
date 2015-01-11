import Silk.CSS 3.0

Rule {
    selector: '#navButton'

    Rule {
        selector: ' .toggle'
        text_decoration: 'none'
        property string height: '100%'
        property string left: '0'
        property string position: 'absolute'
        property string top: '0'
        property string width: '100%'

        Rule {
            selector: ':before'
            content: "''"
            property string _moz_osx_font_smoothing: 'grayscale'
            property string _webkit_font_smoothing: 'antialiased'
            font_family: 'FontAwesome'
            font_style: 'normal'
            font_weight: 'normal'
            text_transform: 'none !important'
        }

        Rule {
            selector: ':before'
            background: 'rgba(144, 144, 144, 0.65)'
            border_radius: '4px'
            color: '#fff'
            display: 'block'
            font_size: '16px'
            property string height: '2.25em'
            property string left: '0.5em'
            property string line_height: '2.25em'
            property string position: 'absolute'
            text_align: 'center'
            property string top: '0.5em'
            property string width: '3.5em'
        }
    }
}
