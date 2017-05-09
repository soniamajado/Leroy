<%-- 
    Document   : insertarProducto
    Created on : 04-may-2017, 12:23:12
    Author     : Sonia Majado
--%>

<%@page import="almacen.producto"%>
<%@page import="almacen.fichero"%>
<%@page import="java.io.*"%>
<%@page import="almacen.producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserta Alumno</title>
        <link href="css/style.css" rel="stylesheet" rel="text/css">
        
    </head>
    <%
            String nombre=request.getParameter("nombre");
            String descripcion=request.getParameter("descripcion");
            int id;
            double precio;
            String respuesta;
            
            
            try{
                fichero f = new fichero("almacen.bin","ab");
                id= Integer.parseUnsignedInt(request.getParameter("id"));   
                precio= Integer.parseUnsignedInt(request.getParameter("precio")); 
                if(nombre==null 
                        || descripcion==null 
                        || request.getParameter("id")==null)
                {
                    respuesta="Alguno de los campos quedó sin rellenar";
                }
                else{
                    f.escribirObjeto(new producto(nombre,descripcion,id,precio));
                    respuesta="Se insertó con éxito";
                    
                }
                f.close();
            }catch(NumberFormatException nfe){
                respuesta=" ";
            }
            
            
        %>
    <body>
        
        <%@include file="html/nav.html" %>
        <h1 align="center">Inserta Producto</h1>
        
         <table id="tabla1">
            <tr><th>Formulario</th></tr>
            <tr>
                <td>
                    
                    <form action="insertarProducto.jsp" method="POST">
                    Id:<input type="number" name="id"><br>
                    Nombre:<input type="text" name="nombre"><br>
                    Descripción:<input type="text" name="descripcion"><br>
                    Precio:<input type="number" name="precio"><br>
                    <input type="submit" value="Enviar">
                    <input type="reset" value="Borrar"><br>

                    </form>
                          
                </td>
            </tr>
        </table>
        <p><%=respuesta%></p>
              
    </body>
</html>
