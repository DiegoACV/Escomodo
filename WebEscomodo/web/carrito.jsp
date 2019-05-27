<%-- 
    Document   : carrito
    Created on : 24-may-2019, 1:20:18
    Author     : chistopher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Compra</title>
    <script type="text/javascript" src="libs/jquery-3.1.1/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js" ></script>
    <script src="libs/materialize/js/materialize.min.js"></script>
    <script type="text/javascript" src="js/carrito.js"></script>
    <script type="text/javascript" src="libs/fly/js/flyto.js"></script>
    <script src="libs/jquery-confirm/js/jquery-confirm.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link href="libs/materialize/css/materialize.min.css" rel="stylesheet">
    <link href="libs/jquery-confirm/css/jquery-confirm.css" rel="stylesheet">
    <link rel="stylesheet" href="css/carrito.css">
    <link href="css/mainPage.css" rel="stylesheet" type="text/css"/> 
    <link href="css/nvBar.css" rel="stylesheet" type="text/css"/>
    <link href="css/foot.css" rel="stylesheet" type="text/css"/>
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
	<div class="my_container">
		<div class="section"><h3 class="header left-align">Compra</h3></div>
		<hr class="sound_waves-text">
		<div class="section items">
            <div class="row">
            	<div class="col s12 m6 l6">
                    <div class="responsive-table table-status-sheet">
            		<table class="highlight centered">
                        <thead>
                            <tr>
                                <th>Cantidad</th>
                                <th>Producto</th>
                                <th>Precio</th>
                                <th>Eliminar</th>
                            </tr>
                        </thead>
				        <tbody>
				          <tr>
				            <td>2</td>
				            <td>Amvorgesa</td>
				            <td>10.00 MXN</td>
				            <td><button class="btn-flat close" data-button-id="Escomida1"><i class="fas fa-times"></i></button></td>
				          </tr>

				          
				        </tbody>
      				</table>
                    </div>
            	</div>
                <form class="col  s12 m5 offset-m1 l5 offset-l1" name="form" id="form">
                    <div class="col s12">
                        <span class="grey-text one-line">Tu pedido de</span><br>
                        <h5 class="header left">Establecimiento 1</i></h5>
                    </div>
                    <div class="input-field col s12">
                        1. Describa el lugar de entrega
                        <input placeholder="Ejm. Sal&oacute;n 1012" id="lugar" name="lugar" type="text">
                    </div>
                    <div class="input-field col s12">
                        2. Elija la forma de pago
                        <div class="row">
                            <div class="col s12 m6">
                                <p>
                                <label>
                                <input class="with-gap" name="pago" id="efectivo" type="radio" checked />
                                <span for="efectivo">Efectivo</span>
                                </label>
                                </p>
                            </div>
                            <div class="col s12 m6">
                                <p>
                                <label>
                                <input class="with-gap" name="pago" id="paypal" type="radio"/>
                                <span>Paypal</span>
                                </label>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="input-field col s12">
                        3. Confirmar compra
                        <div class="row">
                            <div class="col s12">
                                <button id="btn-confirmar"class="btn-pay">Pagar en efectivo</button>
                            </div>
                            <div class="col s12">
                                <button id="btn-paypal" class="btn-paypal" display="none"><img src="https://www.paypalobjects.com/webstatic/es_MX/mktg/logos-buttons/redesign/btn_13.png" alt="PayPal Credit" /></button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
		</div>
        <div class="scrollCreator"></div>
	</div>
        
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
    <script src="libs/materialize/js/materialize.min.js"></script>
</body>
</html>
