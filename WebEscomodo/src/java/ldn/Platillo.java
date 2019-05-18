package ldn;

import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author christopher
 */
public class Platillo {
    private String _nombre;
    private float _valoracion;
    private float _precio;
    private String _descripcion;
    
    public Platillo(){
        _nombre="";
        _valoracion=0f;
        _precio=0f;
        _descripcion="";
    }
    
    public Platillo(String nombre, float valoracion, float precio, String descripcion){
        _nombre=nombre;
        _valoracion=valoracion;
        _precio=precio;
        _descripcion=descripcion;
    }

    public String getNombre() {
        return _nombre;
    }

    public float getValoracion() {
        return _valoracion;
    }

    public float getPrecio() {
        return _precio;
    }

    public String getDescripcion() {
        return _descripcion;
    }

    public void setNombre(String _nombre) {
        this._nombre = _nombre;
    }

    public void setValoracion(float _valoracion) {
        this._valoracion = _valoracion;
    }

    public void setPrecio(float _precio) {
        this._precio = _precio;
    }

    public void setDescripcion(String _descripcion) {
        this._descripcion = _descripcion;
    }
    
    public static int countPlatillos(){
        BD.Datos base = new BD.Datos();
        ResultSet respuesta = null;
        int numero=0;
        try
        {
            base.conectar();
            respuesta = base.consulta("select count(*) as cantidad from platillo");
            if(respuesta.next())
                numero = Integer.parseInt(respuesta.getString("cantidad"));
            
            base.cierraConexion();
        }
        catch(Exception error)
        {
            numero = -1;
        }
        
        return numero;
    }
    
    public ArrayList getDBdata(int idProducto){
        BD.Datos base = new BD.Datos();
        ResultSet respuesta = null;
        ArrayList datos = new ArrayList();
        
        try
        {
            base.conectar();
            respuesta = base.consulta("select platillo.nombre, valoracion, precio, descripcion, platillo.foto, "
            + "establecimiento.nombre as lugar from platillo, establecimiento where idplatillo= "+idProducto+" and establecimiento=idest");
            if(respuesta.next()){
                datos.add(respuesta.getString("nombre"));
                datos.add(respuesta.getFloat("valoracion"));
                datos.add(respuesta.getFloat("precio"));
                datos.add(respuesta.getString("descripcion"));
                datos.add("images/comida1.jpg");//cambiar por la foto de la base
                datos.add(respuesta.getString("lugar"));
            }
            base.cierraConexion();
        }
        catch(Exception error)
        {
            for (int i = 0; i < 6; i++) {
                datos.add(error);
            }
        }
        
        return datos;
    }
}
