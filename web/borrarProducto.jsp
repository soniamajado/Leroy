<%-- 
    Document   : borrarProducto
    Created on : 08-may-2017, 11:32:31
    Author     : Sonia Majado
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="almacen.producto"%>
<%@page import="almacen.fichero"%>
<%@page import="java.io.*"%>
<%@page import="almacen.producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Productos</title>
        <link href="css/style.css" rel="stylesheet" rel="text/css">
    </head>
    <%
        String nombre = request.getParameter("nombre");
        String respuesta = "";
        if(nombre!=null){
            respuesta="No se encontraron coincidencias";
            fichero f = new fichero("almacen.bin","rb");
            ArrayList<producto> nombres = f.leerTodos();
            f.close();
            ArrayList<producto> listado = new ArrayList<>();
            for(producto prod: nombres){
                if(!prod.getNombre().equals(nombre)){
                    listado.add((producto)prod);
                    
                }else{
                    respuesta="Encontré al menos una coincidencia";
                }
            }
            f = new fichero("almacen.bin","wb");
            f.escribirTodos(producto.ProductoObjetos(listado));
            f.close();
        }
    %>
    <body>
        <%@include file="html/nav.html" %>       
        <h1 align="center">Eliminar Productos</h1>
        <form id="tabla2" action="borrarProducto.jsp" method="POST">
            Nombre:<input type="text" name="nombre"><br>
            <input type="submit" value="Borrar">
            <input type="reset" value="Reset">
        </form>
    </body>
</html>
