/*!
 * jQuery lightweight Fly to
 * Author: @ElmahdiMahmoud
 * Licensed under the MIT license
 */

// self-invoking
;(function ($, window, document, undefined) {
    $.fn.flyto = function ( options ) {
        
    // Establish default settings
        
        var settings = $.extend({
            item      : '.flyto-item',
            target    : '.flyto-target',
            button    : '.flyto-btn',
            shake     : true
        }, options);
        
        
        return this.each(function () {
            var 
                $this    = $(this),
                flybtn   = $this.find(settings.button),
                target   = $(settings.target),
                itemList = $this.find(settings.item);
            
        flybtn.on('click', function () {
            var _this = $(this),
                eltoDrag = _this.closest(".card.small.sticky-action").find("img").eq(0);
                elName=_this.closest(".card.small.sticky-action").attr("data-product");
            if (eltoDrag) {
                $.confirm({
                    title: '<h4 class="header sound_waves_text">'+elName+'</h4>',
                    icon: 'fas fa-utensils fa-lg',
                    content: '<hr><div class="col s12"><div class="section"><h5 class'+
                    '="header">Instrucciones especiales: </h5></div><div class="section">'+
                    '<textarea id="textarea1" class="my_Area" autofocus></textarea></div>'+
                    '<h5 class="one-line">Cantidad:</h5><button class="ultrasonic_motion btn-flat plus"'+
                    ' data-button-id="Escomida1"><i class="fas fa-plus"></i></button><p '+
                    'class="flow-text one-line" data-q-id="Escomida1">0</p><button'+
                    ' class="ultrasonic_motion btn-flat minus"'+
                    ' data-button-id="Escomida1"><i class="fas fa-minus"></i></button></div>',
                    buttons: {
                    confirmar: function () {
                        var cantidad= parseInt($(".minus").parent().children("p:first").text(),10);
                        var imgclone = eltoDrag.clone()
                        .offset({
                            top: eltoDrag.offset().top,
                            left: eltoDrag.offset().left
                        })
                        .css({
                            'opacity': '0.5',
                            'position': 'absolute',
                            'height': eltoDrag.height() /2,
                            'width': eltoDrag.width() /2,
                            'z-index': '100'
                        })
                        .appendTo($('body'))
                        .animate({
                            'top': target.offset().top + 10,
                            'left': target.offset().left + 15,
                            'height': eltoDrag.height() /2,
                            'width': eltoDrag.width() /2
                        }, 1000, 'easeInOutExpo');
            
                        if (settings.shake) {
                            setTimeout(function () {
                                target.effect("shake", {
                                times: 2
                            }, 200);
                
                            }, 1500);
                        }

                        imgclone.animate({
                            'width': 0,
                            'height': 0
                        }, function () {
                        $(this).detach()
                        });
                    },
                    cancelar: function () {
                        $.alert({
                            title:'<h5 class="header"><i class="fas fa-utensils"></i>'+
                            ' Elemento no agregado</h5>',
                            content:'',
                            theme: 'material',
    			    useBootstrap: false,
                            boxWidth: '400px'
                        })
                    },
                    }

                });

        }
        });
        });
    }
})(jQuery, window, document);