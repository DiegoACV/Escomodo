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
    private String _foto;
    private String _origen;
    
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
    
    public String getFoto() {
        return _foto;
    }
    
    public String getOrigen() {
        return _origen;
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
    
    public void setFoto(String _foto) {
        this._foto = _foto;
    }
    
    public void setOrigen(String _origen){
        this._origen=_origen;
    }
    
    public static ArrayList<Platillo> getPlatillos(){
        BD.Datos base = new BD.Datos();
        ResultSet respuesta = null;
        ArrayList<Platillo> listaPlatillos=new ArrayList<Platillo>();
        try{
            base.conectar();
            respuesta= base.consulta("call verPlatillo();");
         
            while (respuesta.next()){
            
                Platillo platillo = new Platillo();
                platillo.setNombre(respuesta.getString("nombre"));
                platillo.setValoracion(respuesta.getFloat("valoracion"));
                platillo.setPrecio(respuesta.getFloat("precio"));
                platillo.setDescripcion(respuesta.getString("descripcion"));
                platillo.setFoto("images/comida1.jpg");//cambiar por la foto de la base
                platillo.setOrigen(respuesta.getString("lugar"));
            
                listaPlatillos.add(platillo);
            }
            base.cierraConexion();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return listaPlatillos;
   }
    
    public static ArrayList<Platillo> getPlatillosbyMail(String mail){
    BD.Datos base = new BD.Datos();
    ResultSet respuesta = null;
    ArrayList<Platillo> listaPlatillos=new ArrayList<Platillo>();
    try{
        base.conectar();
        respuesta= base.consulta("call verPlatillobyMail('"+mail+"');");

        while (respuesta.next()){

            Platillo platillo = new Platillo();
            platillo.setNombre(respuesta.getString("nombre"));
            platillo.setValoracion(respuesta.getFloat("valoracion"));
            platillo.setPrecio(respuesta.getFloat("precio"));
            platillo.setDescripcion(respuesta.getString("descripcion"));
            platillo.setFoto("images/comida1.jpg");//cambiar por la foto de la base
            platillo.setOrigen(respuesta.getString("lugar"));

            listaPlatillos.add(platillo);
        }
        base.cierraConexion();
    }
    catch (Exception e){
        e.printStackTrace();
    }
    return listaPlatillos;
   }
}
