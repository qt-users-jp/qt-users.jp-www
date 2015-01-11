/* skel-baseline v2.0.0 | (c) n33 | getskel.com | MIT licensed */

(function($) {

    skel.init({
                  reset: 'full',
                  breakpoints: {
                      // Global.
                      global: {
                          range: '*',
                          href: '/css/qt-users.qml',
                          containers: 1400,
                          grid: {
                              gutters: ['2em', 0]
                          }
                      },

                      /* Menu Settings */
                      // Top Menu.
                      topmenu: {
                          media: '(min-width: 1025px)',
                          href: '/css/topmenu.qml',
                      },
                      // Side Menu.
                      sidemenu: {
                          media: '(max-width: 1024px)',
                          href: '/css/sidemenu.qml',
                      },

                      /* Layouts */
                      smartphone: {
                          media: '                        (max-width:  768px)',
                          href: '/css/smartphone.qml',
                          containers: '95%',
                          grid: {
                              zoom: 768,
                              gutters: ['1.25em', 0]
                          }
                      },
                      tablet: {
                          media: '(min-width:  769px) and (max-width: 1024px)',
                          href: '/css/tablet.qml',
                          containers: '90%',
                          grid: {
                              zoom: 1024,
                              gutters: ['1.25em', 0]
                          }
                      },
                      desktop: {
                          media: '(min-width: 1025px)',
                          href: '/css/desktop.qml',
                          containers: '95%',
                          grid: {
                              zoom: 1,
                              gutters: ['2.0em', 0]
                          },
                          viewport: {
                              scalable: false
                          },
                      },
                  },
                  plugins: {
                      layers: {
                          // Navigation Panel.
                          navPanel: {
                              hidden: true,
                              breakpoints: ['sidemenu'],
                              position: 'top-left',
                              side: 'left',
                              animation: 'pushX',
                              width: '250px',
                              height: '100%',
                              clickToHide: true,
                              html: '<div data-action="navList" data-args="nav"></div>',
                              orientation: 'vertical'
                          },

                          // Navigation Button.
                          navButton: {
                              breakpoints: ['sidemenu'],
                              position: 'bottom-left',
                              side: 'top',
                              height: '4em',
                              width: '4em',
                              html: '<span class="toggle" data-action="toggleLayer" data-args="navPanel"></span>'
                          }

                      }
                  }
              });


    $(function() {

        var foo = $('#nav > ul');
        foo.dropotron({
                          mode: 'slide',
                          noOpenerFade: true,
                          speed: 150
                      });
        $('#mailinglist').submit(function(){
            var email = $('#email').val()
            $.ajax({
                       url: 'http://qt-users.jp/mailman/subscribe/qt-users',
                       type: 'POST',
                       dataType: 'html',
                       data: {email : email},
                       timeout:10000,
                       success: function(data) {
                           alert('確認メールを送信しました。');
                       },
                       error: function(XMLHttpRequest, textStatus, errorThrown) {
                           alert('エラーが発生しました。' + textStatus);
                       }
                   })
            return false
        })
    });

})(jQuery);
