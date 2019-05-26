/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ldn;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Diego
 */
@MultipartConfig
public class SubirImagenUsuario extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        Part filePart = request.getPart("img");  
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        String img = request.getParameter("email")+".jpg";
        String uploadPath = getServletContext().getRealPath("")+"/images/img_user";
        File uploads = new File(uploadPath);
        File file = new File(uploads,img);
        try (InputStream input = filePart.getInputStream()) {
                Files.copy(input, file.toPath());
        }
    }
}
