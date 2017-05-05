package almacen;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.Serializable;
/**
 *
 * @author Sonia Majado
 */
public class producto implements Serializable{
    String nombre;
    String descripcion;
    int id;
    double precio;
    public producto(String nombre, String descripcion, int id, double precio) {
      this.nombre = nombre;
      this.descripcion = descripcion;
      this.id = id;
      this.precio = precio;
}
    @Override
    public String toString() {
        return "Producto{" 
                + "id=" + id 
                + ", nombre=" + nombre 
                + ", descripcion=" + descripcion 
                + ", precio=" + precio +'}';
    }
    public int getid() {
        return (int) precio;
    }

    public void setid(int id) {
        this.id = id;
    }
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getdescripcion() {
        return descripcion;
    }

    public void setdescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getprecio() {
        return (int) precio;
    }

    public void setprecio(int precio) {
        this.precio = precio;
    }
}

