<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
    //ldn.Establecimiento est = new ldn.Establecimiento(sesion.getAttribute("Mail").toString());   CUANDO HAYA SESIONES
    ldn.Establecimiento est = new ldn.Establecimiento("prueba@aaaa.com");
    String nomEst = est.getNombre();
    
%>
<!DOCTYPE html>
<html>
	<head>
		<title>Menú <%=nomEst%></title>
	</head>
	<script src="libs/jquery-3.1.1/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js" ></script>
	<script src="js/productos.js"></script>
	<script type="text/javascript" src="libs/fly/js/flyto.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link href="libs/materialize/css/materialize.min.css" rel="stylesheet">
	<link href="libs/jquery-confirm/css/jquery-confirm.css" rel="stylesheet">
	<script src="libs/materialize/js/materialize.min.js"></script>
	<script src="libs/jquery-confirm/js/jquery-confirm.js"></script>
	<link rel="stylesheet" href="css/colors.css">
	<link rel="stylesheet" href="css/productos.css">
	<link rel="stylesheet" href="css/stilyes.css">
<body>
	<div>
		<nav>
		<div class="nav-wrapper">
		<ul id="nav-mobile" class="left hide-on-med-and-down">
			<li><a href="mainPage.html" class = "titles">Escomodo</a></li>
			<li><a href="badges.html" class = "titles">Escomida</a></li>
			<li><a href="collapsible.html" class = "titles">Escomercio</a></li>
		</ul>
		<a href="#" class="brand-logo center" class = "titles">Logo</a>
		<a href="#" class="right hide-on-med-and-down">
			<form>
				<div id="cart"class="input-field">
					<input id="search" type="search" required>
					<label class="label-icon" for="search"><i class="fas fa-search" ></i></label><i class="material-icons fas fa-times"></i>
				</div>
			</form>
		</a>
	</div>
</nav>
	</div>
	<div class="my_container">
		<div class="section"><h3 class="header">Menú de <%=nomEst%></h3></div>
		<hr class="sound_waves-text">
		<div class="section items">
		<div class="row">
			<div class="col s12 m6 l4">
				<div class="card small sticky-action" data-product="Escomida1">
    				<div class="card-image">
      				<img class="activator" src="img/comida1.jpg">
    				</div>
   					<div class="card-content">
      				<span class="card-title">Escomida1<button class="btn-flat right fav" data-button-id="Escomida1"><i class="far fa-heart"></i></button><button class="btn-flat right add" data-button-id="Escomida1"><i class="fas fa-shopping-cart"></i></button></span>
    				</div>
    				<div class="card-action">
    				<span class="grey-text">4.7 <i class="fas fa-star"></i><span class="right">$100.00</span></span>
    				</div>
    				<div class="card-reveal">
      				<span class="card-title">Escomida1<i class="right fas fa-times"></i></span>
      				<p>Here is some more information about this product that is only revealed once clicked on.</p>
    				</div>
  				</div>
			</div>
		</div>
		<div class="row"></div>
		<div class="row"></div>
		<div class="row"></div>
		</div>
	</div>

</body>
</html>
