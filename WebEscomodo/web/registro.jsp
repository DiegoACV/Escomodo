<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	HttpSession sesion = request.getSession();
	
	ldn.Cliente cliente = new ldn.Cliente();
	//ldn.Repartidor repartidor = new ldn.Repartidor();

	String mensaje = "";

	String nom = "";
	String bol = "";
	String email = "";
	String tel = "";
	String contra = "";
	//String img = "";

	String acc = request.getParameter("acc") == null ? "0" : request.getParameter("acc");

	if (acc.equals("1")) {

		nom = request.getParameter("nombre") == null ? "" : request.getParameter("nombre");
		bol = request.getParameter("boleta") == null ? "" : request.getParameter("boleta");
		email = request.getParameter("email") == null ? "" : request.getParameter("email");
		tel = request.getParameter("tel") == null ? "" : request.getParameter("tel");
		contra = request.getParameter("contra") == null ? "" : request.getParameter("contra");
		//img

		mensaje = cliente.registrar(nom, bol, email, tel, contra);

		if(mensaje.equals("Has sido registrado")){
			sesion.setAttribute("Mail", email);
            sesion.setAttribute("Tipo", "1");

            %><script> alert("<%=mensaje%>"); </script><%

            response.sendRedirect("mainPage.html");
		}

		
	} 

	if (acc.equals("2")){

		nom = request.getParameter("nombre8") == null ? "" : request.getParameter("nombre8");
		bol = request.getParameter("boleta8") == null ? "" : request.getParameter("boleta8");
		email = request.getParameter("email8") == null ? "" : request.getParameter("email8");
		tel = request.getParameter("tel8") == null ? "" : request.getParameter("tel8");
		contra = request.getParameter("contra8") == null ? "" : request.getParameter("contra8");
		//img

		//mensaje = repartidor.registrar(nom, bol, email, tel, contra);
		/*
		if(mensaje.equals("Has sido registrado")){
			sesion.setAttribute("Mail", email);
            sesion.setAttribute("Tipo", "2");

            //alert mensaje

            response.sendRedirect("mainPage.html");
		}*/



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
                            
                <div class = "container" id="registro">

                    <form action="?acc=1" method="POST" id="registro">
                    
                        <div class = "row">

                            <div class="col s4 m4 l4">
                            	<!-- Aqui va lo de la foto-->
                            </div>

                            <div class="col s8 m8 l8">
                                    
	                            <div class="input-field">
	                              <input id="nombre" name="nombre" type="text" class="validate">
	                              <label for="nombre">Nombre Completo</label>
	                            </div>
	                                
	                            <div class="input-field">
	                                <input id="boleta" name="boleta" type="text" class="validate">
	                                <label for="boleta">No. de Boleta</label>
	                            </div>
                                
                            </div>

                        </div>

                        <div class = "row">

                        	<div class="col s12 m12 l6">
                        		<div class="input-field">
	                              <input id="email" name="email" type="text" class="validate">
	                              <label for="email">Correo Electrónico</label>
	                            </div>
                        	</div>

                        	<div class="col s12 m12 l6">
                        		<div class="input-field">
	                              <input id="tel" name="tel" type="text" class="validate">
	                              <label for="tel">Número de Teléfono</label>
	                            </div>
                        	</div>

                        </div>

                        <div class = "row">

                        	<div class="col s12 m12 l6">
                        		<div class="input-field">
	                              <input id="contra" name="contra" type="password" class="validate">
	                              <label for="contra">Contraseña</label>
	                            </div>
                        	</div>

                        	<div class="col s12 m12 l6">
                        		<div class="input-field">
	                              <input id="contra2" type="password" class="validate">
	                              <label for="contra2">Confirma la Contraseña</label>
	                            </div>
                        	</div>

                        </div>

                        <div class="row">
                        	
                        	<div class="col s12 m12 l12 center-align">
                        		<button class="btn-large waves-effect waves-light" type="submit" name="action">Registrarse
								    <i class="fas fa-user-plus"></i>
								</button>
                        	</div>

                        </div>
                        
                    </form>
             
				</div>

		</div>


	</main>

	<footer class = "page-footer">

	  <div class="container">
        <div class="row">
          <div class="col l6 s12">
            <h5 class="white-text">Footer Content</h5>
            <p class="white-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
          </div>
          <div class="col l4 offset-l2 s12">
            <h5 class="white-text">Contacto</h5>
            <ul>
              <li><a class="white-text" href="#!">Facebook</a></li>
              <li><a class="white-text" href="#!">Twitter</a></li>
              <li><a class="white-text" href="#!">Instagram</a></li>
              <li><a class="white-text" href="#!">Escom</a></li>
            </ul>
          </div>
        </div>
      </div>

      <div class="footer-copyright">
        <div class="container white-text">
        © 2019 CRAYDS
        <a class="white-text text-lighten-4 right" href="#!">More Links</a>
        </div>
      </div>

	</footer>

</body>

</html>
