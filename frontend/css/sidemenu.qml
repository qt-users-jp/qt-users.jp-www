import Silk.CSS 3.0
import '.'

Css {

    Rule {
        selector: '#nav'
        display: 'none'
    }

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
                background: 'rgba(45, 130, 45, 0.65)'
                border_radius: '1.125em'
                color: '#fff'
                display: 'block'
                font_size: '16px'
                property string height: '2.25em'
                property string left: '0.5em'
                property string line_height: '2.25em'
                property string position: 'absolute'
                text_align: 'center'
                property string bottom: '0.5em'
                property string width: '3.5em'
            }
        }
    }

//    NavPanelStyle {}
    Rule {
        selector: '#navPanel'
        background_color: Palette.background
        color: '#fff'

        Rule {
            selector: 'a'
            Rule {
                selector: '.link'
                display: 'block'
                text_decoration: 'none'
                property string height: '54px'
                property string line_height: '54px'
                border_top: 'solid 1px #e8e8e8'
                color: '#fff'

                Rule {
                    selector: ':first-child'
                    border_top: '0'
                }

                Rule { selector: '.depth-0';  }
                Rule { selector: '.depth-1'; property string padding_left: '2em' }
                Rule { selector: '.depth-2'; property string padding_left: '4em' }
                Rule { selector: '.depth-3'; property string padding_left: '6em' }
                Rule { selector: '.depth-4'; property string padding_left: '8em' }
                Rule { selector: '.depth-5'; property string padding_left: '10em' }
            }
        }
    }
}
