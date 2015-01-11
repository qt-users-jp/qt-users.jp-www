import Silk.CSS 3.0

Rule {
    selector: '.dropotron'
    background: '#444'
    border_radius: '0 0 0 2em / 0 0 0 2em'
    property string list_style: 'none'
    property string margin: '0'
    min_width: '10em'
    property string padding: '0.25em 1em 0.25em 1em'

    Rule {
        selector: '> li'
        border_top: 'solid 1px #555'
        property string pargin: '0'
        property string margin: '0'

        Rule {
            selector: ':first-child'
            border_top: '0'
        }

        Rule {
            selector: '> a'
            color: '#ccc'
            display: 'block'
            property string padding: '0.5em 0 0.5em 0'
            text_decoration: 'none'
        }

        Rule {
            selector: '.active > a'
            Rule {
                color: '#fff'
            }
        }
        Rule {
            selector: ':hover > a'
            Rule {
                color: '#fff'
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
            border_bottom: 'solid 0.5em #444'
            border_left: 'solid 0.5em transparent'
            border_right: 'solid 0.5em transparent'
            property string top: '-0.5em'
        }
    }
}
