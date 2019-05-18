<%-- 
    Document   : escomida
    Created on : 16-may-2019, 19:00:24
    Author     : christopher
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ldn.Platillo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Escomida</title>
	</head>
	<script src="libs/jquery-3.1.1/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js" ></script>
	<script src="js/productos.js"></script>
	<script type="text/javascript" src="libs/fly/js/flyto.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link href="libs/materialize/css/materialize.min.css" rel="stylesheet">
	<link href="libs/jquery-confirm/css/jquery-confirm.css" rel="stylesheet">
	<script src="libs/materialize/js/materialize.min.js"></script>
	<script src="libs/jquery-confirm/js/jquery-confirm.js"></script>
	<link rel="stylesheet" href="css/colors.css">
	<link rel="stylesheet" href="css/productos.css">
	<link rel="stylesheet" href="css/stilyes.css">
        <link href="css/mainPage.css" rel="stylesheet" type="text/css"/>
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
		<div class="section"><h3 class="header left-align">Productos populares</h3></div>
		<hr class="sound_waves-text">
		<div class="section items">
                    <div class="row">
                <%
                    Platillo platillo= new Platillo();
                    ArrayList datos=null;
                    
                    int cantidad=Platillo.countPlatillos();
                    
                    int max=0;
                    if(cantidad>12)
                        max=12;
                    else
                        max=cantidad;
                    
                    for (int i=1; i <= max; i++) {
                        datos=platillo.getDBdata(i);
                        out.println("<div class=\"col s12 m6 l4\">");
                        out.println("<div class=\"card small sticky-action\" data-product="+datos.get(0)+">");
                        out.println("<div class=\"card-image\">");
                        out.println("<img class=\"activator\" src="+datos.get(4)+"></div>");
                        out.println("<div class=\"card-content\">");
                        out.println("<span class=\"card-title\">"+datos.get(0));
                        out.println("<button class=\"btn-flat right fav\" data-button-id="+datos.get(0)+"><i class=\"far fa-heart\"></i></button>");
                        out.println("<button class=\"btn-flat right add\" data-button-id="+datos.get(0)+"><i class=\"fas fa-shopping-cart\"></i></button>");
                        out.println("</span></div><div class=\"card-action\">");
                        out.println("<span class=\"grey-text\">"+datos.get(1)+"<i class=\"fas fa-star\"></i><span class=\"right\">"+datos.get(2)+" MXN</span></span>");
                        out.println("</div>");
                        out.println("<div class=\"card-reveal\">");
                        out.println("<span class=\"card-title\">"+datos.get(0)+"<i class=\"right fas fa-times\"></i></span>");
                        out.println("<p>"+datos.get(3)+"</p>");
                        out.println("<h6 class=\"left header grey-text\"><strong>"+datos.get(5)+"</strong></h6>");
                        out.println("</div></div></div>");
                    }
                    
    
                %>
                </div>
		</div>
                <%
                    if(max==12){
                        out.println("<div class=\"scrollCreator\"></div>");
                    }
                %>
	</div>

</body>
</html>