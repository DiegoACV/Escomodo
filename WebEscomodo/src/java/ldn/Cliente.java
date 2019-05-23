package ldn;

import BD.Datos;
import java.sql.ResultSet;
import java.sql.Statement;

public class Cliente extends Usuario{
    
    public Cliente(){
        super();
    }
    
    public Cliente(String nombre, String boleta, String email, String tel, String contra){
        super(nombre, boleta, email, tel, contra);
    }
    
    public String registrar(String nombre, String boleta, String email, String tel, String contra){
        
        String msj = "";
        BD.Datos base = new BD.Datos();
        ResultSet respuesta = null;
        
        try{
            base.conectar();
            respuesta = base.consulta("call sp_ACliente('"+nombre+"','"+boleta+"','"+email+"','"+tel+"','"+contra+"','prueba.png')");
            if(respuesta.next())
                msj = respuesta.getString("MSJ");
            
            base.cierraConexion();
        }
        catch(Exception error){
            msj = error.toString();
        }
        
        return msj;
    }
    
}