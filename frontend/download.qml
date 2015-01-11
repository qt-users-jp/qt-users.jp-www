import Silk.HTML 5.0
import 'templates'
import 'utils'

QtUsersJp {
    __title: 'ダウンロード'
    Body {
        _id: 'top'

        // Main
        Div {
            _id: 'main'
            _class: 'container'

            Div {
                _class: 'row'
                Div {
                    _class: '6u 8u(1024) 12u$(768)'
                    H2 {
                        _id: 'opensource'
                        I { _class: 'fa fa-users fa-fw' }
                        Text { text: 'オープンソース版のダウンロード' }
                    }
                    P {
                        A {
                            href: 'http://qt.io/download-open-source/'
                            text: 'http://qt.io/download-open-source/'
                            target: '_blank'
                        }
                        Text {
                            text: ' を開くと、自動的にお使いのプラットフォームに最適なインストーラーを検出します。'
                        }
                    }

                    P {
                        text: '「<strong>DOWNLOAD NOW</strong>」ボタンをクリックすると最新の Qt のインストーラーのダウンロードがはじまります。'
                    }
                    Img {
                        _class: 'image fit'
                        src: '/images/download-open-source.png'
                    }

                    P {
                        text: '検出されたインストーラーが正しくない場合や、他のインストーラーをダウンロードしたい場合は、ページ下部の「<strong>View All Downloads</strong>」をクリックしてください。'
                    }
                }

                Div {
                    _class: '6u 4u$(1024) 12u$(768)'
                    H2 {
                        _id: 'commercial'
                        I { _class: 'fa fa-jpy fa-fw' }
                        Text { text: 'コマーシャル版に関する問い合わせ' }
                    }
                    P { text: '以下の日本国内の代理店へお問い合わせください' }
                    Div {
                        _class: 'row'
                        Div {
                            _class: '6u 12u$(1024) 6u(768)'
                            BlockQuote {
                                style: 'font-size: small'
                                H3 {
                                    A {
                                        _class: 'button icon alt fa fa-building-o'
                                        href: 'https://www.sra.co.jp/qt/'
                                        text: '株式会社 SRA'
                                        target: '_blank'
                                    }
                                }
                                Text { text: '〒 171-8513<br />
東京都豊島区南池袋 2-32-8<br />
Qt 営業担当<br />
電話 ： 03-5979-2800<br />
E-mail ： <a href="mailto:qt-sales@sra.co.jp">qt-sales@sra.co.jp</a>'
                                }
                            }
                        }
                        Div {
                            _class: '6u$ 12u$(1024) 6u$(768)'
                            BlockQuote {
                                style: 'font-size: small'
                                H3 {
                                    A {
                                        _class: 'button icon alt fa fa-building-o'
                                        href: 'http://www.isb.co.jp/qt/'
                                        text: '株式会社 ISB'
                                        target: '_blank'
                                    }
                                }
                                Text { text: '〒222-0033<br />
神奈川県横浜市港北区新横浜1-2-1<br />
新横浜ファーストビル7F（受付）<br />
株式会社アイ・エス・ビー　営業企画部<br />
email :<a href="mailto:proservices@isb.co.jp">proservices@isb.co.jp</a>'
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
