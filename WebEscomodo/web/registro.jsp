<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	HttpSession sesion = request.getSession();
	






%>


<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>Escomodo</title>

	<meta name='viewport' content='width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no'/>
	<meta name="description" content="">
	<meta name="keywords" content="">
	
	<link type="text/css" rel="stylesheet" href="libs/materialize/css/materialize.min.css"  media="screen,projection"/>

	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

	<script type="text/javascript" src="libs/materialize/js/materialize.min.js"></script>
	<script src="libs/jquery-3.1.1/jquery-3.1.1.min.js"></script>

	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

	<link href="css/registro.css" rel="stylesheet">

</head>

<body>
	<header>
	</header>

	<main>
		<div>
			<div class = "row">
				<nav>
				    <div class="nav-wrapper">

				      <ul id="nav-mobile" class="left hide-on-med-and-down">
				        <li><a href="mainPage.html" class = "titles">Escomodo</a></li>
				        <li><a href="productos.html" class = "titles">Escomida</a></li>
				        <li><a href="collapsible.html" class = "titles">Escomercio</a></li>
				        <li><a href="sass.html" class = "brand-logo"><i class="fas fa-shopping-cart titles"></i></a></li>
				      </ul>

				      <a href="mainPage.html" class="brand-logo center">
				      	<img src="images/escomodo.png" class = "responsive-img" id = "logo">
				      </a>

				      <a href="#" class="right hide-on-med-and-down">
						<form>
					        <div class="input-field">
					          <input id="search" type="search" required>
					          <label class="label-icon" for="search">
					          	<i class="fas fa-search" class = "titles"></i>
					          </label>
					        </div>
					    </form>
				      </a>

				    </div>
				</nav>
			</div>

			<div class = "row">
				<div class = "col s12 m12 l12 center-align">
					<h1>
						¡Forma Parte de Escomodo!
					</h1>
				</div>
			</div>

			<div class="row">
				<div class = "col s12 m6 l6 center-align">
					<h3>
						¡Conviértete en un Escomensal!
					</h3>
				</div>

				<div class="divider"></div>

				<div class = "col s12 m6 l6 center-align">
					<h3>
						¡Únete a nuestro equipo de Escom8s!
					</h3>

				</div>
			</div>

			<div class="row">
				<div class="col s4 m2 l2">
					
				</div>

				<div class="col s8 m4 l4">
					<div>
						<div class="input-field">
				          <input id="nombre" type="text" class="validate">
				          <label for="nombre">Nombre Completo</label>
				        </div>
					</div>
					<div>
						
					</div>
				</div>
			</div>


		</div>


	</main>

	<footer>
	</footer>

</body>

</html>