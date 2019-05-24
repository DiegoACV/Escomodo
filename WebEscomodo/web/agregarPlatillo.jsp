<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	HttpSession sesion = request.getSession();
	
	ldn.Platillo platillo = new ldn.Platillo();
	//ldn.Repartidor repartidor = new ldn.Repartidor();

	String mensaje = "";

	String nom = "";
	float prec = 0;
	String desc = "";
	//String img = "";

	String acc = request.getParameter("acc") == null ? "0" : request.getParameter("acc");

	if (acc.equals("1")) {

		nom = request.getParameter("nombre") == null ? "" : request.getParameter("nombre");
		prec = Float.parseFloat(request.getParameter("precio")) ==  0 ? 0 : Float.parseFloat(request.getParameter("precio"));
		desc = request.getParameter("desc") == null ? "" : request.getParameter("desc");
		//img

		mensaje = platillo.registrar(nom, prec, desc, "prueba.jpg", sesion.getAttribute("Mail").toString());

		if(mensaje.equals("Platillo registrado")){
                    %><script> alert("<%=mensaje%>"); </script><%

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

	<link href="css/aplatillo.css" rel="stylesheet">

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
                            
                <div class = "col s12 m12 l12" id="escomensal">

                	<div class = "col s12 m12 l12">
						<h3>
							Registra tu platillo
						</h3>
					</div>

                    <form action="?acc=1" method="POST" id="registro">
                    
                        <div class = "row">

                            <div class="col s4 m4 l4">
                            	<!-- Aqui va lo de la foto-->
                            </div>

                            <div class="col s5 m5 l5">
                                    
	                            <div class="input-field">
	                              <input id="nombre" name="nombre" type="text" class="validate">
	                              <label for="nombre">Nombre del platillo</label>
	                            </div>
	                                
	                            <div class="input-field">
	                                <input id="precio" name="precio" type="text" class="validate">
	                                <label for="precio">Precio</label>
	                            </div>
                                
                                    <div class="input-field">
	                            <textarea id="desc" name="desc" class="validate materialize-textarea"></textarea>
                                    <label for="textarea1">Descripción del platillo</label>
	                            </div>
                                
                            </div>

                        </div>

                        <div class="row">
                        	
                        	<div class="col s12 m12 l12 center-align">
                        		<button class="btn-large waves-effect waves-light" type="submit" name="action">Agregar platillo
								    <i class="fas fa-plus"></i>
								</button>
                        	</div>

                        </div>
                        
                    </form>
                </div>

                                
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
