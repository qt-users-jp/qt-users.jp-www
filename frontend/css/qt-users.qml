import Silk.CSS 3.0
import '.'

Css {
    // Basic
    Rule {
        selector: 'body'
        background: '#ffffff'
    }

    Rule {
        selector: 'body, input, select, textarea'
        color: '#444'
        font_family: 'Arial, Helvetica, sans-serif'
        font_size: '13pt'
        font_weight: 'normal'
        property string line_height: '1.65em'
    }

    Rule {
        selector: 'a'
        color: 'inherit'
        text_decoration: 'underline'

        Rule {
            selector: ':hover'
            text_decoration: 'none'
        }
    }

    Rule {
        selector: 'strong, b'
        color: '#666'
        font_weight: 'bold'
    }

    Rule {
        selector: 'em, i'
        font_style: 'italic'
    }

    Rule {
        selector: 'p'
        property string margin: '0 0 2em 0'
    }

    Rule {
        selector: 'h1, h2, h3, h4, h5, h6'
        color: 'inherit'
        font_weight: 'bold'
        property string line_height: '1em'
        property string margin: '0 0 1em 0'
    }

    Rule {
        selector: 'h1 a, h2 a, h3 a, h4 a, h5 a, h6 a'
        color: 'inherit'
        text_decoration: 'none'
    }

    Rule {
        selector: 'h2'
        font_size: '1.75em'
        property string line_height: '1.5em'
    }

    Rule {
        selector: 'h3'
        font_size: '1.35em'
        property string line_height: '1.5em'
    }

    Rule {
        selector: 'h4'
        font_size: '1.1em'
        property string line_height: '1.5em'
    }

    Rule {
        selector: 'h5'
        font_size: '0.9em'
        property string line_height: '1.5em'
    }

    Rule {
        selector: 'h6'
        font_size: '0.8em'
        property string line_height: '1.5em'
    }

    Rule {
        selector: 'sub'
        font_size: '0.8em'
        property string position: 'relative'
        property string top: '0.5em'
    }

    Rule {
        selector: 'sup'
        font_size: '0.8em'
        property string position: 'relative'
        property string top: '-0.5em'
    }

    Rule {
        selector: 'hr'
        border: '0'
        border_bottom: 'solid 1px rgba(144, 144, 144, 0.25)'
        property string margin: '2em 0'

        Rule {
            selector: '.major'
            property string margin: '3em 0'
        }
    }

    Rule {
        selector: 'blockquote'
        border_left: 'solid 4px %1'.arg(Palette.sub1)
        font_style: 'italic'
        property string margin: '0 0 2em 0'
        property string padding: '0.5em 0 0.5em 2em'
    }

    Rule {
        selector: 'code'
        background: 'rgba(144, 144, 144, 0.075)'
        border_radius: '4px'
        border: 'solid 1px rgba(144, 144, 144, 0.25)'
        font_family: '"Courier New", monospace'
        font_size: '0.9em'
        property string margin: '0 0.25em'
        property string padding: '0.25em 0.65em'
    }

    Rule {
        selector: 'pre'
        property string _webkit_overflow_scrolling: 'touch'
        font_family: '"Courier New", monospace'
        font_size: '0.9em'
        property string margin: '0 0 2em 0'

        Rule {
            selector: ' code'
            display: 'block'
            property string line_height: '1.75em'
            property string padding: '1em 1.5em'
            property string overflow_x: 'auto'
        }
    }

    Rule {
        selector: '.align-left'
        text_align: 'left'
    }

    Rule {
        selector: '.align-center'
        text_align: 'center'
    }

    Rule {
        selector: '.align-right'
        text_align: 'right'
    }

    // Section/Article
    Rule {
        selector: 'section.special, article.special'
        text_align: 'center'
    }

    Rule {
        selector: 'header'
        Rule {
            selector: ' p'
            color: '#bbb'
            property string position: 'relative'
            property string margin: '0 0 1.5em 0'
        }
        Rule {
            selector: ' h2 + p'
            font_size: '1.25em'
            property string margin_top: '-1em'
            property string line_height: '1.5em'
        }
        Rule {
            selector: ' h3 + p'
            font_size: '1.1em'
            property string margin_top: '-0.8em'
            property string line_height: '1.5em'
        }
        Rule {
            selector: ' h4 + p, h5 + p, h6 + p'
            font_size: '0.9em'
            property string margin_top: '-0.6em'
            property string line_height: '1.5em'
        }
        Rule {
            selector: 'img'
            property string vertical_align: 'middle'
            property string margin_left: '0.5em'
        }
    }

    // Form
    Rule {
        selector: 'form'
        property string margin: '0 0 2em 0'
    }

    Rule {
        selector: 'label'
        color: '#666'
        display: 'block'
        font_size: '0.9em'
        font_weight: 'bold'
        property string margin: '0 0 1em 0'
    }

    Rule {
        selector: 'input[type="text"], input[type="password"], input[type="email"], select, textarea'
        property string _moz_appearance: 'none'
        property string _webkit_appearance: 'none'
        property string _o_appearance: 'none'
        property string _ms_appearance: 'none'
        property string appearance: 'none'

        background: Palette.background
//        border_radius: '1em'
        border: 'solid 3px %1'.arg(Palette.foreground)
        color: 'inherit'
        display: 'block'
        outline: '0'
        property string padding: '0 1em'
        text_decoration: 'none'
        property string width: '100%'
    }

//    Rule {
//        selector: 'input[type="text"].alt, input[type="password"].alt, input[type="email"].alt, select.alt, textarea.alt'
//        property string _moz_appearance: appearance
//        property string _webkit_appearance: appearance
//        property string _o_appearance: appearance
//        property string _ms_appearance: appearance
//        property string appearance: 'none'
//        background: Palette.basic
//        border_radius: '4px'
//        border: 'solid 1px %1'.arg(Palette.background)
//        color: Palette.background
//        display: 'block'
//        outline: '0'
//        property string padding: '0 1em'
//        text_decoration: 'none'
//        property string width: '100%'
//    }

    Rule {
        selector: 'input[type="text"]:invalid, input[type="password"]:invalid, input[type="email"]:invalid, select:invalid, textarea:invalid'
        box_shadow: 'none'
    }

//    Rule {
//        selector: 'input[type="text"].alt:invalid, input[type="password"].alt:invalid, input[type="email"].alt:invalid, select.alt:invalid, textarea.alt:invalid'
//        box_shadow: 'none'
//    }

    Rule {
        selector: 'input[type="text"]:focus, input[type="password"]:focus, input[type="email"]:focus, select:focus, textarea:focus'
//        border_color: '#80c342'
//        box_shadow: '0 0 0 1px #80c342'
    }

//    Rule {
//        selector: 'input[type="text"].alt:focus, input[type="password"].alt:focus, input[type="email"].alt:focus, select.alt:focus, textarea.alt:focus'
//        border_color: Palette.background
//        background_color: Palette.darker
////        box_shadow: '0 0 0 1px %1'.arg(Palette.darkest)
//    }

    Rule {
        selector: '.select-wrapper'
        text_decoration: 'none'
        display: 'block'
        property string position: 'relative'

        Rule {
            selector: ':before'
            content: ''
            property string _moz_osx_font_smoothing: 'grayscale'
            property string _webkit_font_smoothing: 'antialiased'
            font_family: 'FontAwesome'
            font_style: 'normal'
            font_weight: 'normal'
            text_transform: 'none !important'
            color: 'rgba(144, 144, 144, 0.25)'
            display: 'block'
            property string height: '2.75em'
            property string line_height: '2.75em'
            property string pointer_events: 'none'
            property string right: '0'
            text_align: 'center'
            property string top: '0'
            property string width: '2.75em'
        }

        Rule {
            selector: ' select::-ms-expand'
            display: 'none'
        }
    }

    Rule {
        selector: 'input[type="text"], input[type="password"], input[type="email"], select'
        property string height: '2.75em'
    }

    Rule {
        selector: 'textarea'
        property string padding: '0.75em 1em'
    }

    Rule {
        selector: 'input[type="checkbox"], input[type="radio"]'
        property string _moz_appearance: 'none'
        property string _webkit_appearance: 'none'
        property string _o_appearance: 'none'
        property string _ms_appearance: 'none'
        property string appearance: 'none'
        display: 'block'
        property string _float: 'left'
        property string margin_right: '-2em'
        opacity: '0'
        property string width: '1em'
        property string z_index: '-1'
    }

    Rule {
        selector: 'input[type="checkbox"] + label, input[type="radio"] + label'
        text_decoration: 'none'
        color: '#444'
        cursor: 'pointer'
        display: 'inline-block'
        font_size: '1em'
        font_weight: 'normal'
        property string padding_left: '2.4em'
        property string padding_right: '0.75em'
        property string position: 'relative'
    }

    Rule {
        selector: 'input[type="checkbox"] + label:before, input[type="radio"] + label:before'
        property string _moz_osx_font_smoothing: 'grayscale'
        property string _webkit_font_smoothing: 'antialiased'
        font_family: 'FontAwesome'
        font_style: 'normal'
        font_weight: 'normal'
        text_transform: 'none !important'
    }

    Rule {
        selector: 'input[type="checkbox"] + label:before, input[type="radio"] + label:before'
        background: 'rgba(144, 144, 144, 0.075)'
        border_radius: '4px'
        border: 'solid 1px rgba(144, 144, 144, 0.25)'
        content: "''"
        display: 'inline-block'
        property string height: '1.65em'
        property string left: '0'
        property string line_height: '1.58125em'
        property string position: 'absolute'
        text_align: 'center'
        property string top: '0'
        property string width: '1.65em'
    }

    Rule {
        selector: 'input[type="checkbox"]:checked + label:before, input[type="radio"]:checked + label:before'
        background: '#666666'
        border_color: '#666666'
        color: '#ffffff'
        content: "'\\f00c'"
    }

    Rule {
        selector: 'input[type="checkbox"]:focus + label:before, input[type="radio"]:focus + label:before'
        border_color: '#80c342'
        box_shadow: '0 0 0 1px #80c342'
    }

    Rule {
        selector: 'input[type="checkbox"] + label:before'
        border_radius: '4px'
    }

    Rule {
        selector: 'input[type="radio"] + label:before'
        border_radius: '100%'
    }

    Rule {
        selector: '::-webkit-input-placeholder'
        color: '%1 !important'.arg(Palette.sub1)
        opacity: '1.0'
    }

    Rule {
        selector: ':-moz-input-placeholder'
        color: '%1 !important'.arg(Palette.sub1)
        opacity: '1.0'
    }

    Rule {
        selector: '::-moz-input-placeholder'
        color: '%1 !important'.arg(Palette.sub1)
        opacity: '1.0'
    }

    Rule {
        selector: '::-ms-input-placeholder'
        color: '%1 !important'.arg(Palette.sub1)
        opacity: '1.0'
    }

    Rule {
        selector: '.formerize-placeholder'
        color: '%1 !important'.arg(Palette.sub1)
        opacity: '1.0'
    }

    // Box
    Rule {
        selector: '.box'
        border_radius: '4px'
        border: 'solid 1px rgba(144, 144, 144, 0.25)'
        property string margin_bottom: '2em'
        property string padding: '1.5em'

        Rule {
            selector: ' > :last-child'
            property string margin_bottom: '0'

            Rule {
                selector: '> :last-child'
                property string margin_bottom: '0'
                Rule {
                    selector: '> :last-child'
                    property string margin_bottom: '0'
                }
            }
        }

        Rule {
            selector: '.alt'
            border: '0'
            border_radius: '0'
            property string padding: '0'
        }
    }

    // Icon
    Rule {
        selector: '.icon'
        text_decoration: 'none'
        border_bottom: 'none'
        property string position: 'relative'

        Rule {
            selector: ':before'
            property string _moz_osx_font_smoothing: 'grayscale'
            property string _webkit_font_smoothing: 'antialiased'
            font_family: 'FontAwesome'
            font_style: 'normal'
            font_weight: 'normal'
            text_transform: 'none !important'
        }

        Rule {
            selector: ' > .label'
            display: 'none'
        }
    }

    // Image
    Rule {
        selector: '.image'
        border_radius: '3em 3em 0 3em'
        border: '0'
        display: 'inline-block'
        property string position: 'relative'

        Rule {
            selector: 'img'
            border_radius: '3em 3em 0 3em'
            display: 'block'
        }

        Rule {
            selector: '.left'
            property string _float: 'left'
            property string padding: '0 1.5em 1em 0'
            property string top: '0.25em'
            property string max_width: '40%'

            Rule {
                selector: 'img'
                property string width: '100%'
            }
        }

        Rule {
            selector: '.right'
            property string _float: 'right'
            property string padding: '0 0 1em 1.5em'
            property string top: '0.25em'
            property string max_width: '40%'

            Rule {
                selector: 'img'
                property string width: '100%'
            }
        }

        Rule {
            selector: '.fit'
            display: 'block'
            property string margin: '0 0 2em 0'
            property string width: '100%'

            Rule {
                selector: 'img'
                property string width: '100%'
            }
        }
    }

    // List
    Rule {
        selector: 'ol'
        property string list_style: 'decimal'
        property string margin: '0 0 2em 0'
        property string padding_left: '1.25em'

        Rule {
            selector: 'li'
            property string padding_left: '0.25em'
        }
    }

    Rule {
        selector: 'ul'
        property string list_style: 'disc'
        property string margin: '0 0 2em 0'
        property string padding_left: '1em'

        Rule {
            selector: 'li'
            property string padding_left: '0.5em'
        }

        Rule {
            selector: '.alt'
            property string list_style: 'none'
            property string padding_left: '0'

            Rule {
                selector: 'li'
                border_top: 'solid 1px rgba(144, 144, 144, 0.25)'
                property string padding: '0.5em 0'

                Rule {
                    selector: ':first-child'
                    border_top: '0'
                    property string padding_top: '0'
                }
            }
        }

        Rule {
            selector: '.icons'
            cursor: 'default'
            property string list_style: 'none'
            property string padding_left: '0'

            Rule {
                selector: 'li'
                display: 'inline-block'
                property string padding: '0 1em 0 0'

                Rule {
                    selector: ':last-child'
                    property string padding_right: '0'
                }
                Rule {
                    selector: ' .icon:before'
                    font_size: '2em'
                }

            }
        }

        Rule {
            selector: '.actions'
            cursor: 'default'
            property string list_style: 'none'
            property string padding_left: '0'

            Rule {
                selector: 'li'
                display: 'inline-block'
                property string padding: '0 1em 0 0'
                property string vertical_align: 'middle'

                Rule {
                    selector: ':last-child'
                    property string padding_right: '0'
                }
            }

            Rule {
                selector: '.small li'
                property string padding: '0 0.5em 0 0'
            }

            Rule {
                selector: '.vertical li'
                display: 'block'
                property string padding: '1em 0 0 0'

                Rule {
                    selector: ':first-child'
                    property string padding_top: '0'
                }

                Rule {
                    selector: '> *'
                    property string margin_bottom: '0'
                }
            }

            Rule {
                selector: '.vertical.small li'
                property string padding: '0.5em 0 0 0'

                Rule {
                    selector: ':first-child'
                    property string padding_top: '0'
                }
            }

            Rule {
                selector: '.fit'
                display: 'table'
                property string margin_left: '-1em'
                property string padding: '0'
                property string table_layout: 'fixed'
                property string width: 'calc(100% + 1em)'

                Rule {
                    selector: 'li'
                    display: 'table-cell'
                    property string padding: '0 0 0 1em'

                    Rule {
                        selector: '> *'
                        property string margin_bottom: '0'
                    }
                }

                Rule {
                    selector: '.small'
                    property string margin_left: '-0.5em'
                    property string width: 'calc(100% + 0.5em)'

                    Rule {
                        selector: 'li'
                        property string padding: '0 0 0 0.5em'
                    }
                }
            }
        }
    }

    Rule {
        selector: 'dl'
        property string margin: '0 0 2em 0'
    }

    // Table

    Rule {
        selector: '.table-wrapper'
        property string _webkit_overflow_scrolling: 'touch'
        property string overflow_x: 'auto'
    }

    Rule {
        selector: 'table'
        property string margin: '0 0 2em 0'
        property string width: '100%'

        Rule {
            selector: 'tbody'

            Rule {
                selector: 'tr'
                border_top: 'solid 1px rgba(144, 144, 144, 0.25)'
                border_bottom: border_top
                border_left: '0'
                border_right: '0'

                Rule {
                    selector: ':nth-child(2n + 1)'
                    background_color: 'rgba(144, 144, 144, 0.075)'
                }
            }
        }

        Rule {
            selector: 'td'
            property string padding: '0.75em 0.75em'
        }

        Rule {
            selector: 'th'
            color: '#666'
            font_size: '0.9em'
            font_weight: 'bold'
            property string padding: '0 0.75em 0.75em 0.75em'
            text_align: 'left'
        }

        Rule {
            selector: 'thead'
            border_bottom: 'solid 2px rgba(144, 144, 144, 0.25)'
        }

        Rule {
            selector: 'tfoot'
            border_top: 'solid 2px rgba(144, 144, 144, 0.25)'
        }

        Rule {
            selector: '.alt'
            property string border_collapse: 'separate'

            Rule {
                selector: 'tbody'

                Rule {
                    selector: 'tr'

                    Rule {
                        selector: 'td'
                        border: 'solid 1px rgba(144, 144, 144, 0.25)'
                        border_left_width: '0'
                        border_top_width: '0'

                        Rule {
                            selector: ':first-child'
                            border_left_width: '1px'
                        }
                    }

                    Rule {
                        selector: ':first-child'

                        Rule {
                            selector: 'td'
                            border_top_width: '1px'
                        }
                    }
                }
            }

            Rule {
                selector: 'thead'
                border_bottom: '0'
            }

            Rule {
                selector: 'tfoot'
                border_top: '0'
            }
        }
    }

    // Button
    Rule {
        selector: 'input[type="submit"], input[type="reset"], input[type="button"], .button'
        property string _moz_appearance: appearance
        property string _webkit_appearance: appearance
        property string _o_appearance: appearance
        property string _ms_appearance: appearance
        property string appearance: 'none'
        property string _moz_transition: transition
        property string _webkit_transition: transition
        property string _o_transition: transition
        property string _ms_transition: transition
        property string transition: 'background-color 0.2s ease-in-out, color 0.2s ease-in-out'
        background_color: 'transparent'
        border: 'solid 3px %1'.arg(Palette.foreground)
        border_radius: '1.5em 1.5em 0 1.5em'
        color: '%1 !important'.arg(Palette.foreground)
        cursor: 'pointer'
        display: 'inline-block'
        font_weight: 'bold'
        property string height: '2.85em'
        property string line_height: '2.85em'
        property string padding: '0 1.5em'
        text_align: 'center'
        text_decoration: 'none'
        white_space: 'nowrap'
    }

    Rule {
        selector: 'input[type="submit"]:hover, input[type="reset"]:hover, input[type="button"]:hover, .button:hover'
        background_color: Palette.sub1
    }

    Rule {
        selector: 'input[type="submit"]:active, input[type="reset"]:active, input[type="button"]:active, .button:active'
        background_color: Palette.sub1
    }

    Rule {
        selector: 'input[type="submit"].icon, input[type="reset"].icon, input[type="button"].icon, .button.icon'
        property string padding_left: '1.35em'
    }

    Rule {
        selector: 'input[type="submit"].icon:before, input[type="reset"].icon:before, input[type="button"].icon:before, .button.icon:before'
        property string margin_right: '0.5em'
    }

    Rule {
        selector: 'input[type="submit"].fit, input[type="reset"].fit, input[type="button"].fit, .button.fit'
        display: 'block'
        property string margin: '0 0 1em 0'
        property string width: '100%'
    }

    Rule {
        selector: 'input[type="submit"].small, input[type="reset"].small, input[type="button"].small, .button.small'
        font_size: '0.8em'
    }

    Rule {
        selector: 'input[type="submit"].big, input[type="reset"].big, input[type="button"].big, .button.big'
        font_size: '1.35em'
    }

    Rule {
        selector: 'input[type="submit"].alt, input[type="reset"].alt, input[type="button"].alt, .button.alt'
        background_color: 'transparent'
        box_shadow: 'inset 0 0 0 2px %1'.arg(Palette.background)
        color: '%1 !important'.arg(Palette.background)
    }

    Rule {
        selector: 'input[type="submit"].alt:hover, input[type="reset"].alt:hover, input[type="button"].alt:hover, .button.alt:hover'
        background_color: Palette.sub1
    }

    Rule {
        selector: 'input[type="submit"].alt:active, input[type="reset"].alt:active, input[type="button"].alt:active, .button.alt:active'
//        background_color: Palette.darkest
    }

    Rule {
        selector: 'input[type="submit"].alt.icon:before, input[type="reset"].alt.icon:before, input[type="button"].alt.icon:before, .button.alt.icon:before'
        color: '%1 !important'.arg(Palette.background)
    }

    Rule {
        selector: 'input[type="submit"].special, input[type="reset"].special, input[type="button"].special, .button.special'
        background_color: '#80c342'
        color: '#ffffff !important'
    }

    Rule {
        selector: 'input[type="submit"].special:hover, input[type="reset"].special:hover, input[type="button"].special:hover, .button.special:hover'
        background_color: '#fff'
        color: '#80c342  !important'
    }

    Rule {
        selector: 'input[type="submit"].special:active, input[type="reset"].special:active, input[type="button"].special:active, .button.special:active'
        background_color: '#80c342'
        color: '#fff !important'
    }

    Rule {
        selector: 'input[type="submit"].disabled, input[type="reset"].disabled, input[type="button"].disabled, .button.disabled'
        background_color: '#444 !important'
        box_shadow: 'inset 0 -0.15em 0 0 rgba(0, 0, 0, 0.15)'
        color: '#fff !important'
        cursor: 'default'
        opacity: '0.25'
    }

    Rule {
        selector: 'input[type="submit"]:disabled, input[type="reset"]:disabled, input[type="button"]:disabled, .button:disabled'
        background_color: '#444 !important'
        box_shadow: 'inset 0 -0.15em 0 0 rgba(0, 0, 0, 0.15)'
        color: '#fff !important'
        cursor: 'default'
        opacity: '0.25'
    }

    // Header
    Rule {
        selector: '#skel-layers-wrapper'
        property string padding_top: '3em'
    }
    Rule {
        selector: '#header'
        background: Palette.background
        color: Palette.foreground
        cursor: 'default'
        property string height: '3.25em'
        property string left: '0'
        property string line_height: '3.25em'
        property string position: 'fixed'
        property string top: '0'
        property string width: '100%'
        property string z_index: '10000'
        border_bottom: 'solid 1px %1'.arg(Palette.sub1)

        Rule {
            selector: 'h1'
            property string height: 'inherit'
            property string left: '1.25em'
            property string line_height: 'inherit'
            property string margin: '0'
            property string padding: '0'
            property string position: 'absolute'
            property string top: '0'
            color: 'inherit'

            Rule {
                selector: 'a'
                font_size: '1.25em'
            }

            Rule {
                selector: ' img'
//                background: 'rgba(255, 255, 255, 0.5)'
//                property string padding: '5px'
            }
        }

        Rule {
            selector: '.container'
            property string position: 'relative'

            Rule {
                selector: 'h1'
                property string left: '0'
            }
        }
    }


    Rule {
        selector: 'code'
        font_size: '1.25em'
        text_align: 'left'
        background: '#f6f6f6'
    }

    // Main
    Rule {
        selector: '#main'
        property string padding: '4em 0'
    }

    // Footer
    Rule {
        selector: '#footer'
        background: Palette.background
        color: Palette.foreground
        property string padding: '4em 0'

        Rule {
            selector: 'a'
            color: 'inherit'
        }

        Rule {
            selector: ' .copyright'
            font_size: '0.9em'
            property string margin: '2em 0 0 0'
            property string padding: '0'
            text_align: 'center'

            Rule {
                selector: 'li'
                border_left: 'solid 1px rgba(144, 144, 144, 0.25)'
                display: 'inline-block'
                property string list_style: 'none'
                property string margin_left: '1.5em'
                property string padding_left: '1.5em'

                Rule {
                    selector: ':first-child'
                    border_left: '0'
                    property string margin_left: '0'
                    property string padding_left: '0'
                }
            }
        }
    }
}
