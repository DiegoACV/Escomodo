/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
public class EditarCliente extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Recupera del jsp
        String msj = "";
        String boleta  = request.getParameter("boleta");
        String nombre  = request.getParameter("nombre");
        String email  = request.getParameter("email");
        String tel  = request.getParameter("tel");
        String acont  = request.getParameter("acont");
        String contra  = request.getParameter("contra");
        Part filePart = request.getPart("img");
        
        boleta = "2015370179"; 
        //Mete los valores a la base
        ldn.Cliente cte = new ldn.Cliente();
        msj = cte.cambios(nombre, boleta, email, tel, acont, boleta+".jpg", contra);
        
        //Guarda la imagen
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        String img = boleta+".jpg";
        String uploadPath = getServletContext().getRealPath("")+"/images/img_cliente"; //Aquí va tu ruta donde guardas la imagen
        File uploads = new File(uploadPath);
        File file = new File(uploads,img); //el name del input de tipo file es "img_perfil"
        try (InputStream input = filePart.getInputStream()) {
            Files.copy(input, file.toPath());
        }
        
        PrintWriter out = response.getWriter();  
        response.setContentType("text/html");  
        out.println("<script type=\"text/javascript\">");  
        out.println("alert('"+msj+"');");  
        out.println("alert('"+boleta+"');");  
        out.println("</script>"); 
        
    }

}
