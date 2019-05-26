$(document).ready(function(){
//FUNCIONES
        //funcion que checa el scroll de la página, verifica cuando se encuentra el "elem"
        function isScrolledIntoView(elem){
            if(elem.length>0){
                var docViewTop = $(window).scrollTop();
                var docViewBottom = docViewTop + $(window).height();
                var elemTop = $(elem).offset().top;
                var elemBottom = elemTop + $(elem).height();
                return ((elemBottom >= docViewTop) && (elemTop <= docViewBottom) && (elemBottom <= docViewBottom) && (elemTop >= docViewTop));
            }
        }
        //función que crea los elementos del tipo ".card.small.sticky-action"
        //por medio de ajax se imprime todo lo establecido en crearElementos.jsp
        function createElements(){
            var numItemsDisplayed = $('.card.small.sticky-action').length;
            $('div.scrollCreator').addClass('delete');
                $('div').removeClass('scrollCreator');
                $.ajax({
                    method:"post",
                    url:"crearElementosPlatillos.jsp",
                    data:"numItemsDisplayed="+numItemsDisplayed,
                    success:function(resp){
                        $("div.row").append(resp);
                        if($("#continue").attr("data-continue")=="true"){
                            $("div.my_container").append("<div class=\"scrollCreator\"></div>");
                            $(".delete").remove();
                        }
                    },
                    error:function(){
                        $("div.my_container").append("<h3 class='header'>Error en el servidor, int&eacute;ntelo m&aacute;s tarde :(</h3>");
                    }
                    
                });    
        }

        
//JQUERY    
        
        $(window).scroll(function() {    
            if(isScrolledIntoView($('.scrollCreator'))){
                createElements();
            }    
        });
        
        /*!
            * jQuery lightweight Fly to
            * Author: @ElmahdiMahmoud
            * Licensed under the MIT license
        */
        $(document).on("click", ".add", function(){
            var target=$("#cart"),
                shake=true,
                _this = $(this),
                eltoDrag = _this.closest(".card.small.sticky-action").find("img").eq(0);
                elName=_this.closest(".card.small.sticky-action").attr("data-product");
            if (eltoDrag) {
                $.confirm({
                    title: '<h4 class="header sound_waves_text">'+elName+'</h4>',
                    icon: 'fas fa-utensils',
                    content: '<hr><div class="col s12"><div class="section"><h5 class'+
                    '="header">Instrucciones especiales: </h5></div><div class="section">'+
                    '<textarea id="textarea1" class="my_Area" autofocus></textarea></div>'+
                    '<h5 class="one-line">Cantidad:</h5><button class="ultrasonic_motion btn-flat plus"'+
                    ' data-button-id="'+elName+'"><i class="fas fa-plus"></i></button><p '+
                    'class="flow-text one-line" data-q-id="'+elName+'">1</p><button'+
                    ' class="ultrasonic_motion btn-flat minus"'+
                    ' data-button-id="'+elName+'"><i class="fas fa-minus"></i></button></div>',
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
            
                        if (shake) {
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
                            title: "Elemento no agregado",
                            content: '',
                            icon: 'fas fa-utensils',
                            theme: 'material',
                            useBootstrap: false,
                            boxWidth: '400px'
			});
                    },
                    }

                });

        }
        });

	$(document).on("mouseenter",".activator",function(){
  		$(this).css("cursor", "pointer");
  	});
        
        $(document).on("click",".fav",function(){
  		if($(this).children("i").attr('class')=="far fa-heart"){
  			$(this).children("i").removeClass("far fa-heart");
  			$(this).children("i").addClass("fas fa-heart");
  			$.alert({
    			title: $(this).closest(".card.small.sticky-action").attr("data-product"),
    			content: '&iexcl;Producto agregado a favoritos!',
    			icon: 'fas fa-utensils',
    			theme: 'material',
    			useBootstrap: false,
    			boxWidth: '400px'
			});
  		}
  		else if($(this).children().attr('class')=="fas fa-heart"){
  			$(this).children().removeClass("fas fa-heart");
  			$(this).children().addClass("far fa-heart");
  			$.alert({
    			title: $(this).closest(".card.small.sticky-action").attr("data-product"),
    			content: 'Producto retirado de favoritos',
    			icon: 'fas fa-utensils',
    			theme: 'material',
    			useBootstrap: false,
    			boxWidth: '400px'
			});
  		}
  		
  	});

  	$(document).on("click",".plus",function(){
            var platillo = $(this).attr("data-button-id");
            var cantidad= parseInt($(this).parent().children("p:first").text(),10);
            $(this).parent().children("p:first").text(cantidad+1)
    });

        $(document).on("click",".minus",function(){
            var platillo = $(this).attr("data-button-id");
            var cantidad= parseInt($(this).parent().children("p:first").text(),10);
            if(cantidad>1){
            	$(this).parent().children("p:first").text(cantidad-1)
            }
    });
    
    //LLAMADAS A FUNCIONES
        createElements();

});