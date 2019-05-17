$(document).ready(function(){

	$('.section.items').flyto({
		item      : '.card.small.sticky-action',
		target    : '#cart',
		button    : '.btn-flat.right.add',
		shake	  : true
	});

	$(".activator").hover(function(){
  		$(this).css("cursor", "pointer");
  	});

  	$(".btn-flat.right.fav").on('click', function(){
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

});
