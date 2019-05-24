<%-- 
    Document   : favoritos
    Created on : 24-may-2019, 1:22:57
    Author     : chistopher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Favoritos</title>
    <script type="text/javascript" src="libs/jquery-3.1.1/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js" ></script>
    <script src="libs/materialize/js/materialize.min.js"></script>
    <script type="text/javascript" src="js/favoritos.js"></script>
    <script type="text/javascript" src="libs/fly/js/flyto.js"></script>
    <script src="libs/jquery-confirm/js/jquery-confirm.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link href="libs/materialize/css/materialize.min.css" rel="stylesheet">
    <link href="libs/jquery-confirm/css/jquery-confirm.css" rel="stylesheet">
    <link rel="stylesheet" href="css/colors.css">
    <link rel="stylesheet" href="css/favoritos.css">
    <link href="css/mainPage.css" rel="stylesheet" type="text/css"/>            
</head>
<body>
	<div>
            <nav>
                <div class="nav-wrapper">
                    <ul id="nav-mobile" class="left hide-on-med-and-down">
                        <li><a href="mainPage.html" class = "titles">Escomodo</a></li>
		        <li><a href="badges.html" class = "titles">Escomida</a></li>
		        <li><a href="collapsible.html" class = "titles">Escomercio</a></li>
		        <li id="cart"><a href="sass.html" class = "brand-logo"><i class="fas fa-shopping-cart titles"></i></a></li>
		    </ul>
                    <a href="#" class="brand-logo center">
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
	<div class="my_container">
		<div class="section"><h3 class="header left-align">Favoritos</h3></div>
		<hr class="sound_waves-text">
		<div class="section items">
            <div class="row">
            	<div class="col s12 m12 l12">
            		<table class="highlight">
				        <tbody>
				          <tr>
				            <td><img src="images/comida1.jpg" alt="" class="circle mini"></td>
				            <td>Chapata de milanesa</td>
				            <td>10.00 MXN</td>
				            <td class="grey-text">Agregado el 22/05/2019</td>
				            <td><button class="btn-flat close" data-button-id="Escomida1"><i class="fas fa-shopping-cart"></i></button></td>
				            <td><button class="btn-flat close" data-button-id="Escomida1"><i class="fas fa-times"></i></button></td>
				          </tr>

				        </tbody>
      				</table>
            	</div>
            </div>
		</div>
        <div class="scrollCreator"></div>
	</div>

</body>
</html>
