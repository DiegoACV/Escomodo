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

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>

	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

	<link href="css/registro.css" rel="stylesheet">

	<script type="text/javascript" src="js/registro.js"></script>

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
                            
                <div class = "container" id="div-registro">

                    <form action="?acc=1" method="POST" id="form-registro">
                    
                        <div class = "row">
                            <div class="col s12 m12 l12 center-align">
                            	<img src="images/default.png" class="responsive-img" id="foto-insert">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col s12 m10 l8 offset-l2 offset-m1">
	                            <div class="input-field">
	                              <i class="prefix fas fa-user"></i>
	                              <input id="nombre" name="nombre" type="text" class="validate">
	                              <label for="nombre">Nombre Completo</label>
	                            </div>
	                        </div>
	                    </div>

	                    <div class="row">
	                        <div class="col s12 m12 l6">
	                            <div class="input-field">
	                            	<i class="prefix fas fa-id-card"></i>
	                                <input id="boleta" name="boleta" type="text" class="validate">
	                                <label for="boleta">No. de Boleta</label>
	                            </div>
                            </div>
	                        
                            <div class="col s11 m11 l5 vertical-margin">
                            	 <div class="switch center-align">
								    <label>
								      <a id="eo">Escomodo</a>
								      <input type="checkbox" id="input-switch">
								      <span class="lever"></span>
								      <a id="e8">Escom8</a>
								    </label>
								 </div>
                            </div>

                            <div class="col s1 m1 l1 vertical-margin">
                            	<i class="fas fa-question-circle"></i>
                            </div>
	                        
                        </div>

                        <div class = "row">

                        	<div class="col s12 m12 l6">
                        		<div class="input-field">
                        		  <i class="prefix fas fa-envelope"></i>
	                              <input id="email" name="email" type="text" class="validate">
	                              <label for="email">Correo Electrónico</label>
	                            </div>
                        	</div>

                        	<div class="col s12 m12 l6">
                        		<div class="input-field">
                        		  <i class="prefix fas fa-phone"></i>
	                              <input id="tel" name="tel" type="text" class="validate">
	                              <label for="tel">Número de Teléfono</label>
	                            </div>
                        	</div>

                        </div>

                        <div class = "row">

                        	<div class="col s12 m12 l6">
                        		<div class="input-field">
                        		  <i class="prefix fas fa-lock"></i>
	                              <input id="contra" name="contra" type="password" class="validate">
	                              <label for="contra">Contraseña</label>
	                            </div>
                        	</div>

                        	<div class="col s12 m12 l6">
                        		<div class="input-field">
                        		  <i class="prefix fas fa-lock"></i>	
	                              <input id="contra2" type="password" class="validate">
	                              <label for="contra2">Confirma la Contraseña</label>
	                            </div>
                        	</div>

                        </div>

                        <div id="soloEscom8">
                        <div class="row">
                        	<h5>Horario de Reparto</h5>
                        </div>

                        
                        <div class="row">
                        	<div id="horario1">
	                        	<div class="col s10 offset-s1 m10 offset-m1 l4 offset-l1">
	                        		<div class="input-field">
									    <select  id="dia1">
									      <option value="" disabled selected>Elíge un día</option>
									      <option value="1">Lunes</option>
									      <option value="2">Martes</option>
									      <option value="3">Miércoles</option>
									      <option value="3">Jueves</option>
									      <option value="3">Viernes</option>
									    </select>
									    <label>Día</label>
									</div>
	                        	</div>
	                        	

	                    		<div class="col s2 offset-s2 m2 l1 center-align vertical-margin">
	                    			<p>De</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaInicio1" type="text" class="timepicker">
	                    				<label for="horaInicio1"> Hora de Inicio </label>
	                    			</div>
	                    		</div>

	                    		<div class="col s2 offset-s2 m1 l1 center-align vertical-margin">
	                    			<p>A</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaFin1" type="text" class="timepicker">
	                    				<label for="horaFin1"> Hora de Final </label>
	                    			</div>
	                    		</div>
                    		</div>

                    		<div class="col s1 m1 l1 center-align vertical-margin">
                            	<i class="fas fa-plus"></i>
                            </div>

                        </div>

                        <div class="row">
                        	<div id="horario2"><!---------------------------------------------------->
	                        	<div class="col s10 offset-s1 m10 offset-m1 l4 offset-l1">
	                        		<div class="input-field">
									    <select  id="dia2"><!---------------------------------------->
									      <option value="" disabled selected>Elíge un día</option>
									      <option value="1">Lunes</option>
									      <option value="2">Martes</option>
									      <option value="3">Miércoles</option>
									      <option value="3">Jueves</option>
									      <option value="3">Viernes</option>
									    </select>
									    <label>Día</label>
									</div>
	                        	</div>
	                        	

	                    		<div class="col s2 offset-s2 m2 l1 center-align vertical-margin">
	                    			<p>De</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaInicio2" type="text" class="timepicker"><!---->
	                    				<label for="horaInicio2"> Hora de Inicio </label><!---------->
	                    			</div>
	                    		</div>

	                    		<div class="col s2 offset-s2 m1 l1 center-align vertical-margin">
	                    			<p>A</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaFin2" type="text" class="timepicker"><!------>
	                    				<label for="horaFin2"> Hora de Final </label><!------------->
	                    			</div>
	                    		</div>
                    		

	                    		<div class="col s1 m1 l1 center-align vertical-margin">
	                            	<i class="fas fa-minus" id="minus2"></i><!-------------------------->
	                            </div>
	                        </div>
                        </div>

                        <div class="row">
                        	<div id="horario3"><!---------------------------------------------------->
	                        	<div class="col s10 offset-s1 m10 offset-m1 l4 offset-l1">
	                        		<div class="input-field">
									    <select  id="dia3"><!---------------------------------------->
									      <option value="" disabled selected>Elíge un día</option>
									      <option value="1">Lunes</option>
									      <option value="2">Martes</option>
									      <option value="3">Miércoles</option>
									      <option value="3">Jueves</option>
									      <option value="3">Viernes</option>
									    </select>
									    <label>Día</label>
									</div>
	                        	</div>
	                        	

	                    		<div class="col s2 offset-s2 m2 l1 center-align vertical-margin">
	                    			<p>De</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaInicio3" type="text" class="timepicker"><!---->
	                    				<label for="horaInicio3"> Hora de Inicio </label><!---------->
	                    			</div>
	                    		</div>

	                    		<div class="col s2 offset-s2 m1 l1 center-align vertical-margin">
	                    			<p>A</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaFin3" type="text" class="timepicker"><!------>
	                    				<label for="horaFin3"> Hora de Final </label><!------------->
	                    			</div>
	                    		</div>
                    		

	                    		<div class="col s1 m1 l1 center-align vertical-margin">
	                            	<i class="fas fa-minus" id="minus3"></i><!-------------------------->
	                            </div>
                            </div>

                        </div>

                        <div class="row">
                        	<div id="horario4"><!---------------------------------------------------->
	                        	<div class="col s10 offset-s1 m10 offset-m1 l4 offset-l1">
	                        		<div class="input-field">
									    <select  id="dia4"><!---------------------------------------->
									      <option value="" disabled selected>Elíge un día</option>
									      <option value="1">Lunes</option>
									      <option value="2">Martes</option>
									      <option value="3">Miércoles</option>
									      <option value="3">Jueves</option>
									      <option value="3">Viernes</option>
									    </select>
									    <label>Día</label>
									</div>
	                        	</div>
	                        	

	                    		<div class="col s2 offset-s2 m2 l1 center-align vertical-margin">
	                    			<p>De</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaInicio4" type="text" class="timepicker"><!---->
	                    				<label for="horaInicio4"> Hora de Inicio </label><!---------->
	                    			</div>
	                    		</div>

	                    		<div class="col s2 offset-s2 m1 l1 center-align vertical-margin">
	                    			<p>A</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaFin4" type="text" class="timepicker"><!------>
	                    				<label for="horaFin4"> Hora de Final </label><!------------->
	                    			</div>
	                    		</div>
                    		

	                    		<div class="col s1 m1 l1 center-align vertical-margin">
	                            	<i class="fas fa-minus" id="minus4"></i><!-------------------------->
	                            </div>
	                        </div>

                        </div>

                        <div class="row">
                        	<div id="horario5"><!---------------------------------------------------->
	                        	<div class="col s10 offset-s1 m10 offset-m1 l4 offset-l1">
	                        		<div class="input-field">
									    <select  id="dia5"><!---------------------------------------->
									      <option value="" disabled selected>Elíge un día</option>
									      <option value="1">Lunes</option>
									      <option value="2">Martes</option>
									      <option value="3">Miércoles</option>
									      <option value="3">Jueves</option>
									      <option value="3">Viernes</option>
									    </select>
									    <label>Día</label>
									</div>
	                        	</div>
	                        	

	                    		<div class="col s2 offset-s2 m2 l1 center-align vertical-margin">
	                    			<p>De</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaInicio5" type="text" class="timepicker"><!---->
	                    				<label for="horaInicio5"> Hora de Inicio </label><!---------->
	                    			</div>
	                    		</div>

	                    		<div class="col s2 offset-s2 m1 l1 center-align vertical-margin">
	                    			<p>A</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaFin5" type="text" class="timepicker"><!------>
	                    				<label for="horaFin5"> Hora de Final </label><!------------->
	                    			</div>
	                    		</div>
                    		

	                    		<div class="col s1 m1 l1 center-align vertical-margin">
	                            	<i class="fas fa-minus" id="minus5"></i><!-------------------------->
	                            </div>
                            </div>

                        </div>

                        <div class="row">
                        	<div id="horario6"><!---------------------------------------------------->
	                        	<div class="col s10 offset-s1 m10 offset-m1 l4 offset-l1">
	                        		<div class="input-field">
									    <select  id="dia6"><!---------------------------------------->
									      <option value="" disabled selected>Elíge un día</option>
									      <option value="1">Lunes</option>
									      <option value="2">Martes</option>
									      <option value="3">Miércoles</option>
									      <option value="3">Jueves</option>
									      <option value="3">Viernes</option>
									    </select>
									    <label>Día</label>
									</div>
	                        	</div>
	                        	

	                    		<div class="col s2 offset-s2 m2 l1 center-align vertical-margin">
	                    			<p>De</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaInicio6" type="text" class="timepicker"><!---->
	                    				<label for="horaInicio6"> Hora de Inicio </label><!---------->
	                    			</div>
	                    		</div>

	                    		<div class="col s2 offset-s2 m1 l1 center-align vertical-margin">
	                    			<p>A</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaFin6" type="text" class="timepicker"><!------>
	                    				<label for="horaFin6"> Hora de Final </label><!------------->
	                    			</div>
	                    		</div>
                    		

	                    		<div class="col s1 m1 l1 center-align vertical-margin">
	                            	<i class="fas fa-minus" id="minus6"></i><!-------------------------->
	                            </div>
                            </div>

                        </div>

                        <div class="row">
                        	<div id="horario7"><!---------------------------------------------------->
	                        	<div class="col s10 offset-s1 m10 offset-m1 l4 offset-l1">
	                        		<div class="input-field">
									    <select  id="dia7"><!---------------------------------------->
									      <option value="" disabled selected>Elíge un día</option>
									      <option value="1">Lunes</option>
									      <option value="2">Martes</option>
									      <option value="3">Miércoles</option>
									      <option value="3">Jueves</option>
									      <option value="3">Viernes</option>
									    </select>
									    <label>Día</label>
									</div>
	                        	</div>
	                        	

	                    		<div class="col s2 offset-s2 m2 l1 center-align vertical-margin">
	                    			<p>De</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaInicio7" type="text" class="timepicker"><!---->
	                    				<label for="horaInicio7"> Hora de Inicio </label><!---------->
	                    			</div>
	                    		</div>

	                    		<div class="col s2 offset-s2 m1 l1 center-align vertical-margin">
	                    			<p>A</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaFin7" type="text" class="timepicker"><!------>
	                    				<label for="horaFin7"> Hora de Final </label><!------------->
	                    			</div>
	                    		</div>
	                    		
	                    		<div class="col s1 m1 l1 center-align vertical-margin">
	                            	<i class="fas fa-minus" id="minus7"></i><!-------------------------->
	                            </div>

                            </div>

                        </div>

                        <div class="row">
                        	<div id="horario8"><!---------------------------------------------------->
	                        	<div class="col s10 offset-s1 m10 offset-m1 l4 offset-l1">
	                        		<div class="input-field">
									    <select  id="dia8"><!---------------------------------------->
									      <option value="" disabled selected>Elíge un día</option>
									      <option value="1">Lunes</option>
									      <option value="2">Martes</option>
									      <option value="3">Miércoles</option>
									      <option value="3">Jueves</option>
									      <option value="3">Viernes</option>
									    </select>
									    <label>Día</label>
									</div>
	                        	</div>
	                        	

	                    		<div class="col s2 offset-s2 m2 l1 center-align vertical-margin">
	                    			<p>De</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaInicio8" type="text" class="timepicker"><!---->
	                    				<label for="horaInicio8"> Hora de Inicio </label><!---------->
	                    			</div>
	                    		</div>

	                    		<div class="col s2 offset-s2 m1 l1 center-align vertical-margin">
	                    			<p>A</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaFin8" type="text" class="timepicker"><!------>
	                    				<label for="horaFin8"> Hora de Final </label><!------------->
	                    			</div>
	                    		</div>
                    		

	                    		<div class="col s1 m1 l1 center-align vertical-margin">
	                            	<i class="fas fa-minus" id="minus8"></i><!-------------------------->
	                            </div>
                            </div>

                        </div>

                        <div class="row">
                        	<div id="horario9"><!---------------------------------------------------->
	                        	<div class="col s10 offset-s1 m10 offset-m1 l4 offset-l1">
	                        		<div class="input-field">
									    <select  id="dia9"><!---------------------------------------->
									      <option value="" disabled selected>Elíge un día</option>
									      <option value="1">Lunes</option>
									      <option value="2">Martes</option>
									      <option value="3">Miércoles</option>
									      <option value="3">Jueves</option>
									      <option value="3">Viernes</option>
									    </select>
									    <label>Día</label>
									</div>
	                        	</div>
	                        	

	                    		<div class="col s2 offset-s2 m2 l1 center-align vertical-margin">
	                    			<p>De</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaInicio9" type="text" class="timepicker"><!---->
	                    				<label for="horaInicio9"> Hora de Inicio </label><!---------->
	                    			</div>
	                    		</div>

	                    		<div class="col s2 offset-s2 m1 l1 center-align vertical-margin">
	                    			<p>A</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaFin9" type="text" class="timepicker"><!------>
	                    				<label for="horaFin9"> Hora de Final </label><!------------->
	                    			</div>
	                    		</div>
                    		

	                    		<div class="col s1 m1 l1 center-align vertical-margin">
	                            	<i class="fas fa-minus" id="minus9"></i><!-------------------------->
	                            </div>
                            </div>

                        </div>

                        <div class="row">
                        	<div id="horario10"><!---------------------------------------------------->
	                        	<div class="col s10 offset-s1 m10 offset-m1 l4 offset-l1">
	                        		<div class="input-field">
									    <select  id="dia10"><!---------------------------------------->
									      <option value="" disabled selected>Elíge un día</option>
									      <option value="1">Lunes</option>
									      <option value="2">Martes</option>
									      <option value="3">Miércoles</option>
									      <option value="3">Jueves</option>
									      <option value="3">Viernes</option>
									    </select>
									    <label>Día</label>
									</div>
	                        	</div>
	                        	

	                    		<div class="col s2 offset-s2 m2 l1 center-align vertical-margin">
	                    			<p>De</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaInicio10" type="text" class="timepicker"><!---->
	                    				<label for="horaInicio10"> Hora de Inicio </label><!---------->
	                    			</div>
	                    		</div>

	                    		<div class="col s2 offset-s2 m1 l1 center-align vertical-margin">
	                    			<p>A</p>
	                    		</div>

	                    		<div class="col s6 m4 l2">
	                    			<div class="input-field">
	                    				<input id="horaFin10" type="text" class="timepicker"><!------>
	                    				<label for="horaFin10"> Hora de Final </label><!------------->
	                    			</div>
	                    		</div>
                    		

	                    		<div class="col s1 m1 l1 center-align vertical-margin">
	                            	<i class="fas fa-minus" id="minus10"></i><!-------------------------->
	                            </div>
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

<script type="text/javascript" src="libs/materialize/js/materialize.min.js"></script>
</body>

</html>
