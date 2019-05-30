<%@page import="ldn.Establecimiento"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int index=Integer.parseInt(request.getParameter("numItemsDisplayed"));
    String cad = request.getParameter("cad");
    ArrayList <Establecimiento> establecimientos=Establecimiento.getEstablecimientosbySearch(cad);
    Establecimiento e;
    int cantidadDesplegar=12;
                    
    int cantidad=establecimientos.size();
    int restantes=establecimientos.size()-index;
    if(restantes !=0){
        int max=0;
        if(restantes>cantidadDesplegar)
            max=cantidadDesplegar;
        else
            max=restantes;

            for (int i=index+1; i <= (max+index); i++) {
                e=establecimientos.get(i-1);
                out.println("<div class=\"col s12 m6 l4\">");
                out.println("<div class=\"card\" data-product="+e.getEmail()+">");
                out.println("<div class=\"card-image\">");
                out.println("<img src="+e.getFoto()+"></div>");
                
                out.println("<div class=\"card-content\">");
                out.println("<span class=\"card-title\">"+e.getNombre()+"<button class=\"btn-flat right see\" "
                        + "data-button-id="+e.getEmail()+"><i class=\"far fa-eye\"></i></button></span>");
                out.println("</div></div></div>");
            }
            if(max==cantidadDesplegar){
                out.println("<input type='hidden' data-continue='true' id='continue'>");    
            }
            else{
                out.println("<input type='hidden' data-continue='false' id='continue'>");
            }
            
    }
    
%>

