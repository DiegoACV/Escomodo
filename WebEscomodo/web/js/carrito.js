$(document).ready(function(){

	$("#btn-paypal").hide();

	$(document).on("click", "#efectivo", function () {	 
		$("#btn-confirmar").show();
		$("#btn-paypal").hide();
	});

	$(document).on("click", "#paypal", function () {	 
		$("#btn-confirmar").hide();
		$("#btn-paypal").show();

	});
});