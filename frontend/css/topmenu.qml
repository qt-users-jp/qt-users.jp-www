import Silk.CSS 3.0
import '.'

Css {
    Rule {
        selector: '#nav'
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
                    Rule {
                        selector: 'a'
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
                    color: 'inherit'
                    display: 'inline-block'
                    text_decoration: 'none'

                    Rule {
                        selector: ':hover'
//                        color: Palette.basic
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

    Rule {
        selector: '.dropotron'
        background: Palette.background
        border_radius: '0 0 0 2em / 0 0 0 2em'
        property string list_style: 'none'
        property string margin: '0'
        min_width: '10em'
        property string padding: '0.25em 1em 0.25em 1em'
        border: 'solid 1px %1'.arg(Palette.sub1)

        Rule {
            selector: '> li'
            border_top: 'solid 1px %1'.arg(Palette.foreground)
            property string pargin: '0'
            property string margin: '0'

            Rule {
                selector: ':first-child'
                border_top: '0'
            }

            Rule {
                selector: '> a'
                color: Palette.foreground
                display: 'block'
                property string padding: '0.5em 0 0.5em 0'
                text_decoration: 'none'
            }

            Rule {
                selector: '.active > a'
                Rule {
                    color: Palette.foreground
                }
            }
            Rule {
                selector: ':hover > a'
                Rule {
                    color: Palette.foreground
                }
            }
        }

        Rule {
            selector: 'level-0'
            property string margin_top: '1.25em'
            Rule {
                selector: ':before'
                content: "''"
                property string position: 'absolute'
                border_bottom: 'solid 0.5em %1'.arg(Palette.basic)
                border_left: 'solid 0.5em transparent'
                border_right: 'solid 0.5em transparent'
                property string top: '-0.5em'
            }
        }
    }
}
