package ldn;

import BD.Datos;
import java.sql.ResultSet;
import java.sql.Statement;

public class Usuario {
    private String _nombre;
    private String _boleta;
    private String _email;
    private String _tel;
    private String _contra;

    public Usuario()
    {
        _nombre = "";
        _boleta = "";
        _email = "";
        _tel = "";
        _contra = "";
    }

    public Usuario(String _nombre, String _boleta, String _email, String _tel, String _contra) {
        this._nombre = _nombre;
        this._boleta = _boleta;
        this._email = _email;
        this._tel = _tel;
        this._contra = _contra;
    }
    
    public String getNombre() {
        return _nombre;
    }

    public String getBoleta() {
        return _boleta;
    }


    public String getEmail() {
        return _email;
    }


    public String getTel() {
        return _tel;
    }


    public String getContra() {
        return _contra;
    }

    public String login(String email, String contra)
    {
        String msj = "";
        BD.Datos sql = new BD.Datos();
        try
        {
            Statement s = sql.conectarMySQL().createStatement();   
            ResultSet rs = s.executeQuery ("call sp_Login('"+email+"','"+contra+"');"); 
            if(rs.next())
                msj = rs.getString("MSJ");
            
            rs.close();
            s.close();
            sql.conectarMySQL().close();;
        }
        catch(Exception error)
        {
            msj = error.toString();
        }
        return msj;
    }
    
}
