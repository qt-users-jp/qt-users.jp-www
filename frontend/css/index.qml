import Silk.CSS 3.0
import '.'

Css {
    Rule {
        selector: '#banner'
        background: Palette.background
        color: Palette.foreground
        text_align: 'center'

        Rule {
            selector: ':last-child'
            property string margin_bottom: '0'
        }

        Rule {
            selector: 'h2'
            font_size: '4em'
            property string line_height: '1.5em'
            property string margin: '0 0 0.5em 0'
            property string padding: '0'
        }

        Rule {
            selector: 'p'
            font_size: '1.5em'
			property string line_height: '1.5em'
            property string margin: '0 auto'
            property string width: '80%'
        }

        Rule {
            selector: 'ul'
            property string list_style: 'none'
            property string margin: '2em'
        }
    }

    // Supported Platform
    Rule {
        selector: '.supported-platform'
        display: 'block'
        property string margin: '0 0 2em 0'

        Rule {
            selector: 'span'
            border: 'solid 1px %1'.arg(Palette.sub2)
            background: Palette.sub2
            border_radius: '4px'
            color: Palette.foreground
            display: 'block'
            font_weight: 'bold'
            property string height: '2.75em'
            property string line_height: '2.75em'
            text_align: 'center'
        }

        Rule {
            selector: '.row'

            Rule {
                selector: '.flush'

                Rule {
                    selector: 'div'

                    Rule {
                        selector: 'span'
                        border_radius: '0'
                    }

                    Rule {
                        selector: '> div'

                        Rule {
                            selector: ':first-child'
                            Rule {
                                selector: 'span'
                                border_radius: '4px 0 0 4px'
                            }
                        }
                        Rule {
                            selector: ':last-child'
                            Rule {
                                selector: 'span'
                                border_radius: '0 4px 4px 0'
                            }
                        }
                    }
                }
            }
        }
    }
}
