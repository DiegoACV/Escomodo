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

	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous"/>

	<script type="text/javascript" src="libs/materialize/js/materialize.min.js"></script>
	<script src="libs/jquery-3.1.1/jquery-3.1.1.min.js"></script>

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>

	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

	<link href="css/registro.css" rel="stylesheet">

	<script type="text/javascript" src="js/registro.js"></script>
	<script type="text/javascript" src="js/editarCliente.js"></script>

</head>

<body>
	<header>
	</header>

	<main>
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
					          	<i class="fas fa-search titles"></i>
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
						Actualizar imagen
					</h1>
				</div>
			</div>

			<div class="row">
                            
                    <div class = "container" id="div-registro">


                        <form id="subirimagen" name="subirimagen" method="POST" enctype="multipart/form-data" action="<%if(sesion.getAttribute("Tipo").toString().equals("1")){%>SubirImagenCliente<%}else if(sesion.getAttribute("Tipo").toString().equals("3")){%>SubirImagenRepartidor<%}else{%>SubirImagenEstablecimiento<%}%>">                     
                        <div class = "row">
                            <div class="col s12 m12 l12 center-align">
                                <img src="images/img_cliente/<%=sesion.getAttribute("Boleta").toString()%>.jpg" class="responsive-img" id="foto-insert">  
                            </div>
                            <div class="file-field input-field col s12 m12 l6 center-align">
                                <div class="btn">
                                  <span>Imagen</span>
                                  <input type="file" id="img" name="img" accept="image/*">
                                </div>
                                <div class="file-path-wrapper">
                                  <input class="file-path validate" type="text">
                                </div>
                                <button class="btn-large waves-effect waves-light" type="submit" name="action">Subir imagen
                                    <i class=""></i>
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

<script type="text/javascript" src="libs/materialize/js/materialize.min.js"></script>
</body>

</html>
