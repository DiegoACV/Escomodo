<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
    ldn.Usuario log = new ldn.Usuario();
    String mensaje = "";
    String acc = request.getParameter("acc") == null ? "0" : request.getParameter("acc");
    String contra = request.getParameter("contra") == null ? "" : request.getParameter("contra");
    String email = request.getParameter("email") == null ? "" : request.getParameter("email");
    if (acc.equals("1")) 
    {
        mensaje = log.login(email, contra);
            
            if(mensaje.equals("1"))
            {
                sesion.setAttribute("Mail", email);
                sesion.setAttribute("Tipo", "1");
                %><script> alert("<%=mensaje%>"); </script><%
            }
            else if (mensaje.equals("2"))
            {    
                sesion.setAttribute("Mail", email);
                sesion.setAttribute("Tipo", "2");
                %><script> alert("<%=mensaje%>"); </script><%
            }
            else if (mensaje.equals("3"))
            {    
                sesion.setAttribute("Mail", email);
                sesion.setAttribute("Tipo", "3");
                %><script> alert("<%=mensaje%>"); </script><%
            }
            else
            {
                %><script> alert("<%=mensaje%>"); </script><%
            }

    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar</title>
    </head>
    <body>
        <h1>Ingresar</h1>
        <form action="?acc=1" method="POST" id="login">
            <input type="text" id="email" name="email" placeholder="Correo Electrónico" class=""/><br>
            <input type="password" id="contra" name="contra" placeholder="Contrase&ntilde;a" class=""/><br>
            <input type="submit" id="Login" value="Ingresar" class="" onclick=""/><br>
        </form>
    </body>
</html>
