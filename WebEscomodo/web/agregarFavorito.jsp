<%-- 
    Document   : agregarFavorito
    Created on : 26-may-2019, 20:31:01
    Author     : chistopher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
    
    if(sesion.getAttribute("Mail") == null){
        String jsonE = "{\"estado\": \"false\"}";
        out.print(jsonE);
        out.flush();
    }
    else{
        
    }
%>