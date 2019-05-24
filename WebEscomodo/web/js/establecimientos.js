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
                    url:"crearEstablecimientos.jsp",
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

    
    //LLAMADAS A FUNCIONES
        createElements();

});