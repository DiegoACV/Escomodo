<%-- 
    Document   : perfilC
    Created on : 26/05/2019, 04:31:39 PM
    Author     : Yax
--%>

<%@page import="ldn.Pedido"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
    sesion.setAttribute("Mail", "diegoCV@crayds.com"); //BORRAR CUANDO ESTEN BIEN LAS SESIONES
    sesion.setAttribute("Tipo", "1"); //BORRAR CUANDO ESTEN BIEN LAS SESIONES
    String mail = sesion.getAttribute("Mail").toString();
    int tipo = Integer.parseInt(sesion.getAttribute("Tipo").toString());
    ldn.Cliente cli = new ldn.Cliente(mail);
    String Nombre = cli.getNombre();
    String Tel = cli.getTel();
    String Boleta = cli.getBoleta();
    String Foto = cli.getFoto();
    String Email = cli.getEmail();    
%>
<html>
    <head>
        <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>Escomodo</title>
        <%if(mail==null || tipo != 1){%>
                <script>window.location.replace("mainPage.html");</script>
        <%}%>
	<meta name='viewport' content='width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no'/>
	<meta name="description" content="">
	<meta name="keywords" content="">
	
	<link type="text/css" rel="stylesheet" href="libs/materialize/css/materialize.min.css"  media="screen,projection"/>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        
	<script type="text/javascript" src="libs/materialize/js/materialize.min.js"></script>
        <script type="text/javascript" src="libs/jquery-3.1.1/jquery-3.1.1.js"></script>
        <script type="text/javascript" src="libs/jquery-3.1.1/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/foot.js"></script>
        <script type="text/javascript" src="js/pedidos.js"></script>
        
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

	<link href="css/mainPage.css" rel="stylesheet">
        <link href="css/perfil.css" rel="stylesheet">
    </head>
    <body>
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

                      <a href="mainPage.html" class="brand-logo center">
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
        <div>
            <div class="row rowMarginT">
                <div class = "col s6 m4 l2">
                    <div>
                        <img src='<%=Foto%>' class='circle responsive-img z-depth-3'/>
                    </div>
                </div>
                <div class="col s5 m6 l9">
                    <br>
                    <div class="col s12 m12 l12">
                        <span class="center-align letradeIMPAKTO"><%=Nombre%></span>
                    </div>
                    <div class="col s6 m6 l6">
                        <span class="center-align noIMPAKTO"><%=Boleta%></span>
                    </div>
                    <div class="col s6 m6 l6">
                        <span class="center-align noIMPAKTO"><%=Email%></span>
                    </div>
                </div>
                <div class = "col s1 m2 l1">
                    <a class="btn-floating btn-large"><span><i class="small material-icons">edit</i></span></a>
                </div>
            </div>
            <div class="row">
                <div class="col s12 m12 l12"><div class = "divider"></div></div>
            </div>
            <div class = "row">
                <div class = "col s12 m6 l6 offset-m3 offset-l3" align="center">
                        <span class="center-align flow-text">Mis pedidos</span>
                </div>
                <div>
                    <%
                       ArrayList <Pedido>pedidos=Pedido.getPedidos(mail);
                       Pedido a; 
                    %>
                </div>
            </div>
            <div class="row rowMargin">
              <ul class="collapsible popout">
                <li>
                  <div class="collapsible-header"><i class="material-icons">filter_drama</i>First</div>
                  <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                </li>
                <li>
                  <div class="collapsible-header"><i class="material-icons">place</i>Second</div>
                  <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                </li>
                <li>
                  <div class="collapsible-header"><i class="material-icons">whatshot</i>Third</div>
                  <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                </li>
              </ul>
            </div>    
        </div>  
        <footer class="page-footer rowMarginT">
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
    </body>
</html>

