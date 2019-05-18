<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
    sesion.setAttribute("Mail", "prueba@aaaa.com"); //BORRAR CUANDO ESTEN BIEN LAS SESIONES
    sesion.setAttribute("Tipo", "2"); //BORRAR CUANDO ESTEN BIEN LAS SESIONES
    ldn.Establecimiento est = new ldn.Establecimiento(sesion.getAttribute("Mail").toString());
    String nomEst = est.getNombre();
    
%>
<!DOCTYPE html>
<html>
	<head>
		<title>Menú <%=nomEst%></title>
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
	<link rel="stylesheet" href="css/menu.css">
	<link rel="stylesheet" href="css/stilyes.css">
<body>
	<div>
		<nav>
		<div class="nav-wrapper">
		<ul id="nav-mobile" class="left hide-on-med-and-down">
			<li><a href="mainPage.html" class = "titles">Escomodo</a></li>
			<li><a href="badges.html" class = "titles">Escomida</a></li>
			<li><a href="collapsible.html" class = "titles">Escomercio</a></li>
		</ul>
		<a href="#" class="brand-logo center" class = "titles">Logo</a>
		<a href="#" class="right hide-on-med-and-down">
			<form>
				<div id="cart"class="input-field">
					<input id="search" type="search" required>
					<label class="label-icon" for="search"><i class="fas fa-search" ></i></label><i class="material-icons fas fa-times"></i>
				</div>
			</form>
		</a>
	</div>
</nav>
	</div>
	<div class="my_container">
		<div class = "row rowMargin">
                    <div class = "col s12 m3 l3">
                            <h3 class="header">Menú de <%=nomEst%></h3>
                    </div>
                            <%if(sesion.getAttribute("Tipo").toString() == "2"){%>
                    <div class = "col s12 m3 l3 " style=" padding-top: 1.5%; padding-right: 30%" align="center">
                        <button class="btn-floating btn-large waves-effect waves-light red" data-button-id="Escomida1"><i class="fas fa-plus"></i></button>                    
                    </div> <%}%>
		</div>
                <hr class="sound_waves-text">
		<div class="section items">
		<div class="row">
			<div class="col s12 m4 l4">
			</div>
		</div>
		<div class="row"></div>
		<div class="row"></div>
		<div class="row"></div>
		</div>
	</div>

</body>
</html>
