<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	HttpSession sesion = request.getSesion();

	ldn.Establecimiento estab = new ldn.Establecimiento();

	String mensaje = "";

	String nom = request.getParameter("nombreEscomercio") == null ? "" : request.getParameter("nombreEscomercio");
	String ubi = request.getParameter("ubi") == null ? "" : request.getParameter("ubi");
	String repre = request.getParameter("repre") == null ? "" : request.getParameter("repre");
	String email = request.getParameter("email") == null ? "" : request.getParameter("email");
	String tel = request.getParameter("tel") == null ? "" : request.getParameter("tel");
	String horario = "";
	String contra = request.getParameter("contra") == null ? "" : request.getParameter("contra");

	String acc = request.getParameter("acc") == null ? "0" : request.getParameter("acc");

	if (acc.equals("1")) {
		String horaA = request.getParameter("horaAbierto") == null ? "" : request.getParameter("horaAbierto") + "-";
		String horaC = request.getParameter("horaCerrado") == null ? "" : request.getParameter("horaCerrado");

		horario = horaA + horaC;

		mensaje = estab.registrar(nom, ubi, repre, email, tel, horario, contra);

		if(mensaje.equals("Has sido registrado")){
			sesion.setAttribute("Mail", email);
            sesion.setAttribute("Tipo", "2");

            %><script> alert("<%=mensaje%>"); </script><%

            response.sendRedirect("mainPage.jsp");
		}
	}

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

	<link href="css/registroEscomercio.css" rel="stylesheet">
	<link href="css/nvBar.css" rel="stylesheet">
	<link href="css/foot.css" rel="stylesheet">

	<script type="text/javascript" src="js/registroEscomercio.js"></script>
	<script type="text/javascript" src="js/nvBar.js"></script>
	<script type="text/javascript" src="js/foot.js"></script>

</head>

<body>
	<header>
	</header>

	<main>
		<div class = "row">
			<nav>
			    <div class="nav-wrapper">

			      <a href="#" data-target="mobile-demo" class="sidenav-trigger">
			      	<i class="fas fa-bars"></i>
			      </a>

			      <ul id="nav-mobile" class="left hide-on-med-and-down">
			        <li><a href="productos.html" class = "white-text">Escomida</a></li>
			        <li><a href="establecimientos.html" class = "white-text">Escomercio</a></li>
			      </ul>

			      <ul class="right hide-on-med-and-down">

		      		<li><a href="carrito.jsp"><i class="fas fa-shopping-cart white-text"></i></a></li>
		      		<li><a href="login.jsp" class="waves-effect waves-light btn">Log In</a></li>

				  </ul>

			      <a href="mainPage.jsp" class="brand-logo center">
			      	<img src="https://drive.google.com/uc?id=1-33i2fj72T0A40dxfZpDGTfWMyGbwj63" class = "responsive-img" id = "logo">
			      </a>

			      <ul class="sidenav" id="mobile-demo">
				    <li><a href="productos.html" class = "orange-text">Escomida</a></li>
			        <li><a href="establecimientos.html" class = "orange-text">Escomercio</a></li>
			        <li><a href="carrito.jsp" class="orange-text"><i class="fas fa-shopping-cart orange-text"></i>Carrito</a></li>
		      		<li><a href="login.jsp" class="waves-effect waves-light btn">Log In</a></li>
			    </div>
			</nav>
		</div>

		<div class="container">
			<div class = "row">
				<div class = "col s12 m12 l12 center-align">
					<h1>
						¡Registra tu Escomercio!
					</h1>
				</div>
			</div>

			<form action="?acc=1" method="POST" id="formRE">

				<div class="row">
					<div class="col s12 m10 l8 offset-l2 offset-m1">
						<div class="input-field">
		                  <i class="prefix fas fa-utensils"></i>
		                  <input id="nombreEscomercio" name="nombreEscomercio" type="text" class="validate">
		                  <label for="nombreEscomercio">Nombre del Establecimiento</label>
		                </div>
					</div>
				</div>

				<div class="row">
					<div class="col s12 m10 l8 offset-l2 offset-m1">
						<div class="input-field">
		                  <i class="prefix fas fa-search-location"></i>
		                  <input id="ubi" name="ubi" type="text" class="validate">
		                  <label for="ubi">Ubicación</label>
		                </div>
					</div>
				</div>

				<div class="row">
					<div class="col s12 m10 l8 offset-l2 offset-m1">
						<div class="input-field">
		                  <i class="prefix fas fa-user-tie"></i>
		                  <input id="repre" name="repre" type="text" class="validate">
		                  <label for="repre">Nombre del Representante</label>
		                </div>
					</div>
				</div>

				<div class = "row">
		        	<div class="col s12 m10 l6 offset-m1">
		        		<div class="input-field">
		        		  <i class="prefix fas fa-envelope"></i>
		                  <input id="email" name="email" type="text" class="validate">
		                  <label for="email">Correo Electrónico</label>
		                </div>
		        	</div>

		        	<div class="col s12 m10 l6 offset-m1">
		        		<div class="input-field">
		        		  <i class="prefix fas fa-phone"></i>
		                  <input id="tel" name="tel" type="text" class="validate">
		                  <label for="tel">Número de Teléfono</label>
		                </div>
		        	</div>
		        </div>

		        <div class="row">
		        	<h6>Horario de Servicio</h6>
		        </div>

				<div class="row">
					<div class="col s2 offset-s2 m2 l1 offset-l1 center-align vertical-margin">
		    			<p>De</p>
		    		</div>

		    		<div class="col s6 m4 l4">
		    			<div class="input-field">
		    				<input id="horaAbierto" name="horaAbierto" type="text" class="timepicker">
		    				<label for="horaAbierto"> Hora de Apertura </label>
		    			</div>
		    		</div>

		    		<div class="col s2 offset-s2 m1 l1 center-align vertical-margin">
		    			<p>A</p>
		    		</div>

		    		<div class="col s6 m4 l4">
		    			<div class="input-field">
		    				<input id="horaCerrado" name="horaCerrado" type="text" class="timepicker">
		    				<label for="horaCerrado"> Hora de Cierre </label>
		    			</div>
		    		</div>
					
				</div>

				<div class = "row">
	            	<div class="col s12 m10 l6 offset-m1">
	            		<div class="input-field">
	            		  <i class="prefix fas fa-lock"></i>
	                      <input id="contra" name="contra" type="password" class="validate">
	                      <label for="contra">Contraseña</label>
	                    </div>
	            	</div>

	            	<div class="col s12 m10 l6 offset-m1">
	            		<div class="input-field">
	            		  <i class="prefix fas fa-lock"></i>	
	                      <input id="contra2" type="password" class="validate">
	                      <label for="contra2">Confirma la Contraseña</label>
	                    </div>
	            	</div>
	            </div>

				<div class="row">
					<div class="col s12 m12 l12 center-align">
	            		<button class="btn-large waves-effect waves-light" type="submit" name="action">Registrarse
						    <i class="fas fa-briefcase"></i>
						</button>
	            	</div>
				</div>

			</form>
		</div>
		
	</main>

	<footer class="page-footer">
		 <div class="container">
            <div class="row footerRow">
              <div class="col l6 s12 logoDiv">
                <img src="https://drive.google.com/uc?id=1-33i2fj72T0A40dxfZpDGTfWMyGbwj63" class = "responsive-img valign-wrapper align-center" id = "logoFooter">
              </div>
              <div class="col l4 offset-l2 s12">
                <h4 class="white-text">Contacto</h4>

                <ul class = "contacts-big">

                  <li>
                  	<i class="fab fa-facebook-square white-text"></i>
                  	<a class="white-text" href="#!">Facebook</a>
                  </li>
                  <li>
                  	<i class="fab fa-twitter white-text"></i>
                  	<a class="white-text" href="#!">Twitter</a>
                  </li>
                  <li>
                  	<i class="fab fa-instagram white-text"></i>
                  	<a class="white-text" href="#!">Instagram</a>
                  </li>

                </ul>

                <ul class = "contacts-small">

                  <li>
                  	<i class="fab fa-facebook-square white-text"></i>
                  	<i class="fab fa-twitter white-text"></i>
                  	<i class="fab fa-instagram white-text"></i>
                  </li>

                </ul>

              </div>
            </div>
          </div>

          <div class="footer-copyright">
            <div class="container white-text">
            	© 2019 CRAYDS
            </div>
          </div>

	</footer>

<script type="text/javascript" src="libs/materialize/js/materialize.min.js"></script>
</body>

</html>