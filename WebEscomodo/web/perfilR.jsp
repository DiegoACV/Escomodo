<%-- 
    Document   : perfilR
    Created on : 22/05/2019, 02:23:40 PM
    Author     : Yax
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
    sesion.setAttribute("Mail", "prueba@ada.com"); //BORRAR CUANDO ESTEN BIEN LAS SESIONES
    sesion.setAttribute("Tipo", "2"); //BORRAR CUANDO ESTEN BIEN LAS SESIONES
    String mail = sesion.getAttribute("Mail").toString();
    ldn.Repartidor rep = new ldn.Repartidor(mail);
    String Nombre = rep.getNombre();
    String Tel = rep.getTel();
    String Horario = rep.getHorario();
    String Foto = rep.getFoto();
    String Valoracion = rep.getValoracion();
    int np = rep.NPedidos(mail);
    
%>
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

	<link href="css/mainPage.css" rel="stylesheet">
    </head>
    <body>
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
        <div>
            <div class="row rowMargin valign-wrapper">
                <div class = "col s12 m4 l12 offset-l1 red">
                    <div class ="col s12 m4 l2">
                        <img src='<%=Foto%>' class='circle responsive-img z-depth-3'/>
                    </div>
                </div>
            </div>
            <div class="row rowMargin">
                <div class = "col s12 m4 l4 red">
                    <p class="center-align flow-text"><%=Nombre%></p>
                </div>
                <div class = "col s12 m4 l4 orange">
                    <p class="center-align flow-text"> <%=np%> </p>
                    <p class="center-align flow-text">Pedidos completados</p>
                </div>
                <div class = "col s12 m4 l4 red">
                    <span><p class="center-align flow-text"><%=Valoracion%><i class="medium fas fa-star "></i></p></span>
                </div>
            </div>
        </div>      
    </body>
</html>
