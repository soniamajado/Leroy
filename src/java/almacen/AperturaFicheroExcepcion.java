/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package almacen;

/**
 *
 * @author Mario
 */
public class AperturaFicheroExcepcion extends Exception{
    public AperturaFicheroExcepcion(String mensaje){
        super(mensaje);
    }
}