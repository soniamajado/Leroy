<%-- 
    Document   : index
    Created on : 04-may-2017, 11:53:54
    Author     : Sonia Majado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Leroy Me.</title>
        <link href="css/style.css" rel="stylesheet" rel="text/css">
    </head>
    <body>
        <%@include file="html/nav.html" %>
        <h1 align="center">ALMACEN LEROY MERLIN</h1>
        
        
        <table id="tabla1">
        <ul>
            <tr>
                <th>Opciones disponibles</th>
            </tr>
            <tr>
                <td><a href="insertarProducto.jsp">Añadir Producto</a><br></td>
            </tr>
            <tr>
                <td><a href="listadoProducto.jsp">Listado Producto</a><br></td>
            </tr>
            <tr>
                <td><a href="consultarProducto.jsp">Consultar Producto</a><br></td>
            </tr>
            <tr>
                <td><a href="borrarProducto.jsp">Eliminar Producto</a><br></td>
            </tr>
        </th>
        </ul>
        </table>  
        
    </body>
</html>
