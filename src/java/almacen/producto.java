package almacen;



import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
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
        return (int) id;
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
/**
     * Convierte un ArrayList de Object a uno de Alumno
     * @param obj ArrayList<producto> - El ArrayList a convertir
     * @return ArrayList<nombre> - El ArrayList convertido
     */
    public static ArrayList<producto> ObjetoProducto(ArrayList<Object> obj){
        ArrayList<producto> listado = new ArrayList<>();
        obj.forEach((objeto) -> {
            listado.add((producto)objeto);
        });
        return listado;
    }
    /*
    public static List ObjetoProducto(List obj){
        List listado = new ArrayList();
        for(Object objeto: obj){
            listado.add((nombre) objeto);
        }
        return listado;
    }*/
    
    public static ArrayList<Object> ProductoObjetos(ArrayList<producto> nombres){
        ArrayList<Object> listado = new ArrayList<>();
        nombres.forEach((prod) -> {
            listado.add((producto)prod);
        });
        return listado;
    }
    /*
    public static List ObjetoProducto(List<nombre> nombres){
        List listado = new ArrayList();
        for(nombre nomb: nombres){
            listado.add((Object) nomb);
        }
        return listado;
    }
*/
  
    

  
}

