import Silk.CSS 3.0

Rule {
    selector: 'nav'
    property string height: 'inherit'
    property string line_height: 'inherit'
    property string position: 'absolute'
    property string right: '1.25em'
    property string top: '0'
    property string vertical_align: 'middle'

    Rule {
        selector: 'ul'
        property string list_style: 'none'
        property string margin: '0'
        property string padding: '0'

        Rule {
            selector: 'li'
            display: 'inline-block'
            property string margin_left: '1em'
            property string padding_left: '0'

            Rule {
                selector: '.active'
                background: '#333'
                Rule {
                    selector: 'a'
                    color: '#fff'
                    text_decoration: 'none'
                }
            }

            Rule {
                selector: ' > a'
                property string _moz_transition: transition
                property string _webkit_transition: transition
                property string _o_transition: transition
                property string _ms_transition: transition
                property string transition: 'color 0.2s ease-in-out'
                color: '#ccc'
                display: 'inline-block'
                text_decoration: 'none'

                Rule {
                    selector: ':hover'
                    color: '#fff'
                }
            }

            Rule {
                selector: ':first-child'
                property string margin_left: '0'
            }

            Rule {
                selector: '.button'
                property string height: '2.25em'
                property string line_height: '2.25em'
                property string margin_bottom: '0'
                property string padding: '0 1em'
                property string position: 'relative'
                property string top: '-0.075em'
                property string vertical_align: 'middle'
            }
        }
    }
}
