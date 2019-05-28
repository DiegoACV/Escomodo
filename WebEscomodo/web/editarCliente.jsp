<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	HttpSession sesion = request.getSession();
	
        sesion.setAttribute("Mail", "diegoCV@crayds.com");//BORRAR CUANDO ESTÉN LAS SESIONES
        sesion.setAttribute("Tipo", "1");//BORRAR CUANDO ESTÉN LAS SESIONES
	ldn.Cliente cliente = new ldn.Cliente(sesion.getAttribute("Mail").toString());
	//ldn.Repartidor repartidor = new ldn.Repartidor();

	String mensaje = "";
        
	String nom = cliente.getNombre();
	String bol = cliente.getBoleta();
        sesion.setAttribute("Boleta", bol);
	String email = cliente.getEmail();
	String tel = cliente.getTel();
	String foto = cliente.getFoto();
	//String img = "";

	String acc = request.getParameter("acc") == null ? "0" : request.getParameter("acc");
       
        if(acc.equals("1"))
        {
            String msj = "";
            String cnombre  = request.getParameter("nombre");
            String cemail  = request.getParameter("email");
            String ctel  = request.getParameter("tel");
            String acont  = request.getParameter("acont");
            String contra  = request.getParameter("contra");
        
            ldn.Cliente cte = new ldn.Cliente();
            msj = cte.cambios(cnombre, bol, cemail, ctel, acont, bol+".jpg", contra);
            
            response.sendRedirect("perfilC.jsp");
            
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
						Actualizar datos
					</h1>
				</div>
			</div>

			<div class="row">
                            
                <div class = "container" id="div-registro">


                        <div class = "row">
                            <div class="col s12 m12 l12 center-align">
                                <img src="images/img_cliente/<%=sesion.getAttribute("Boleta").toString()%>.jpg" class="responsive-img" id="foto-insert">  
                                <a class="btn-floating btn-small waves-effect waves-light red" href="SubirImagen.jsp"><i class="fa fa-pen"></i></a>
                            </div>

                        </div>
                    <form action="?acc=1" method="POST" id="form-actualizar" name="form-actualizar">
                        <div class="row">
                            <div class="col s12 m10 l8 offset-l2 offset-m1">
	                            <div class="input-field">
	                              <i class="prefix fas fa-user"></i>
                                      <input id="nombre" name="nombre" type="text" class="validate" value="<%=nom%>">
	                              <label for="nombre">Nombre Completo</label>
	                            </div>
	                        </div>
	                </div>

	                <div class="row">
	                        <div class="col s12 m12 l6">
	                            <div class="input-field">
	                            	<i class="prefix fas fa-id-card"></i>
                                        <input disabled id="boleta" name="boleta" type="text" class="validate" value="<%=bol%>">
	                                <label for="boleta">No. de Boleta</label>
	                            </div>
                            </div>
                                <div class="col s12 m12 l6">
                                    <div class="input-field">
                        		  <i class="prefix fas fa-phone"></i>
	                              <input id="tel" name="tel" type="text" class="validate" value="<%=tel%>">
	                              <label for="tel">Número de Teléfono</label>
	                            </div>
                        	</div>               
	                        
                        </div>

                        <div class = "row">

                        	<div class="col s12 m12 l6">
                        		<div class="input-field">
                        		  <i class="prefix fas fa-envelope"></i>
	                              <input id="email" name="email" type="text" class="validate" value="<%=email%>">
	                              <label for="email">Correo Electrónico</label>
	                            </div>
                        	</div>
                                <div class="col s12 m12 l6">
                                    <a class="waves-effect waves-light btn show">Cambiar contrase&ntilde;a</a>
                        	</div>
                                <div class="col s12 m12 l6 psw">
                                    <div class="input-field">
                        		  <i class="prefix fas fa-lock"></i>	
                                          <input id="acont" name="acont" type="password" class="validate cc" value="sc">
                                          <label for="acont">Contraseña anterior</label>
	                            </div>
                        	</div>

                        </div>

                        <div class = "row">

                        	<div class="col s12 m12 l6 psw">
                        		<div class="input-field">
                        		  <i class="prefix fas fa-lock"></i>
                                          <input id="contra" name="contra" type="password" class="validate cc" value="sc">
	                              <label for="contra">Contraseña nueva</label>
	                            </div>
                        	</div>

                        	<div class="col s12 m12 l6 psw">
                        		<div class="input-field">
                        		  <i class="prefix fas fa-lock"></i>	
	                              <input id="contra2" type="password" class="validate cc" value="sc">
	                              <label for="contra2">Confirma la contraseña nueva</label>
	                            </div>
                        	</div>

                        </div>


                        <div class="row">
                        	
                        	<div class="col s12 m12 l12 center-align">
                        		<button class="btn-large waves-effect waves-light" type="submit" name="action">Actualizar datos
								    <i class="fas fa-user-edit"></i>
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
