$(document).ready(function(){
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
            var email = document.getElementById("email").value;
            var data = "numItemsDisplayed="+ numItemsDisplayed + "&email=" + email;
            $('div.scrollCreator').addClass('delete');
                $('div').removeClass('scrollCreator');
                $.ajax({
                    type:"POST",
                    url: "crearElementosMail.jsp",
                    data: jQuery.param({ numItemsDisplayed: numItemsDisplayed, email : email}),
                    success:function(resp){
                        $("div.row").append(resp);
                        if($("#continue").attr("data-continue")=="true"){
                            $("div.my_container").append("<div class=\"scrollCreator\"></div>");
                            $(".delete").remove();
                        }
                    },
                    error:function(){
                        alert("error");
                    }
                    
                });
        }

        $(window).scroll(function() {    
            if(isScrolledIntoView($('.scrollCreator'))){
                createElements();
            }    
        });
        
        createElements();
        
	$('.section.items').flyto({
		item      : '.card.small.sticky-action',
		target    : '#cart',
		button    : '.btn-flat.right.add',
		shake	  : true
	});

	$(document).on("mouseenter",".activator",function(){
  		$(this).css("cursor", "pointer");
  	});
        
        $(document).on("click",".btn-flat.right.fav",function(){
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

});