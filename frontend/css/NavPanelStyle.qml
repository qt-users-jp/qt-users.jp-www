import Silk.CSS 3.0

Rule {
    selector: '#navPanel'
    background: '#444'
    color: '#fff'

    Rule {
        selector: ' nav'
        property string padding: '0.5em 1.25em'

        Rule {
            selector: 'ul'
            property string list_style: 'none'
            property string margin: '0'
            property string padding: '0'

            Rule {
                selector: 'li'
                property string padding: '0'

                Rule {
                    selector: ':first-child'

                    Rule {
                        selector: 'a:not(.button), span:not(.button)'
                        border_top: '0'
                    }
                }

                Rule {
                    selector: 'a:not(.button), span:not(.button)'
                    border_top: 'solid 1px #555'
                    color: '#fff'
                    display: 'block'
                    property string padding: '0.75em 0'
                    text_decoration: 'none'
                }
            }
        }

        Rule {
            selector: ' .button'
            property string width: '100%'
        }
    }


//    Rule {
//        selector: '.link'
//        display: 'block'
//        text_decoration: 'none'
//        property string height: '54px'
//        property string line_height: '54px'
//        border_top: 'solid 1px #e8e8e8'
//        color: '#696969'

//        Rule {
//            selector: ':first-child'
//            border_top: '0'
//        }
//    }

    Rule { selector: '.indent-1'; display: 'inline-block'; property string width: '1em' }
    Rule { selector: '.indent-2'; display: 'inline-block'; property string width: '2em' }
    Rule { selector: '.indent-3'; display: 'inline-block'; property string width: '3em' }
    Rule { selector: '.indent-4'; display: 'inline-block'; property string width: '4em' }
    Rule { selector: '.indent-5'; display: 'inline-block'; property string width: '5em' }
    Rule { selector: '.depth-0'; color: '#444'; font_weight: '800' }
}
