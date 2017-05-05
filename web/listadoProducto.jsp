<%-- 
    Document   : listadoProducto
    Created on : 04-may-2017, 13:30:01
    Author     : Sonia Majado

--%>
<%@page import="java.io.EOFException"%>
<%@page import="almacen.producto"%>
<%@page import="java.io.*"%>
<%@page import="almacen.fichero"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Productos</title>
    </head>
    <body>
                
<h1>Lista Productos</h1>
        <%@include file="html/nav.html" %>
        <table>
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Descripción</th>
                <th>Precio</th>
            </tr>
        <%
            
            String respuesta="";
            
           
                fichero f = new fichero("almacen.bin","rb");
                producto aux = (producto) f.leerObjeto();
                while(aux!=null){
                    
                    respuesta+="<tr>\n"
                            + "<td>"+aux.getid()+"</td>\n"
                            + "<td>"+aux.getNombre()+"</td>\n"
                            + "<td>"+aux.getdescripcion()+"<td>\n"
                            + "<td>"+aux.getprecio()+"</td>\n"
                            + "</tr>\n";
                    //respuesta+=aux.toString();
                   
                    
                    aux = (producto) f.leerObjeto();
                }
            
            f.close();
        %>
        <%=respuesta%>
       </table>
        
    </body>
</html>
