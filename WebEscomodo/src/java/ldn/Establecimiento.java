package ldn;

import java.sql.ResultSet;

public class Establecimiento 
{
    private int _idest;
    private String _nombre;
    private String _ubicacion;
    private String _representante;
    private String _email;
    private String _tel;
    private String _horario;
    private String _foto;

    public Establecimiento(int _idest, String _nombre, String _ubicacion, String _representante, String _email, String _tel, String _horario, String _foto) {
        this._idest = _idest;
        this._nombre = _nombre;
        this._ubicacion = _ubicacion;
        this._representante = _representante;
        this._email = _email;
        this._tel = _tel;
        this._horario = _horario;
        this._foto = _foto;
    }
    
    public Establecimiento() {
        this._idest = _idest;
        this._nombre = _nombre;
        this._ubicacion = _ubicacion;
        this._representante = _representante;
        this._email = _email;
        this._tel = _tel;
        this._horario = _horario;
        this._foto = _foto;
    }
    
    public Establecimiento(String email)
    {
        BD.Datos base = new BD.Datos();
        ResultSet respuesta = null;
        try
        {
            base.conectar();
            respuesta = base.consulta("call sp_getEstbyMail('"+email+"');");
            if(respuesta.next())
            {
                _idest = Integer.parseInt(respuesta.getString("idest"));
                _nombre = respuesta.getString("nombre");
                _ubicacion = respuesta.getString("ubicacion");
                _representante = respuesta.getString("representante");
                _email = respuesta.getString("email");
                _tel = respuesta.getString("tel");
                _horario = respuesta.getString("horario");
                _foto = respuesta.getString("foto");
                
            }
            base.cierraConexion();
        }
        catch(Exception error)
        {
            System.out.println(error.getMessage());
        }
    }

    public int getIdest() {
        return _idest;
    }

    public String getNombre() {
        return _nombre;
    }

    public String getUbicacion() {
        return _ubicacion;
    }

    public String getRepresentante() {
        return _representante;
    }

    public String getEmail() {
        return _email;
    }

    public String getTel() {
        return _tel;
    }

    public String getHorario() {
        return _horario;
    }

    public String getFoto() {
        return _foto;
    }
    
}
