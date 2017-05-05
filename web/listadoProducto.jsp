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
        <link href="css/style.css" rel="stylesheet" rel="text/css">
    </head>
    <body>
         <%@include file="html/nav.html" %>       
        <h1 align="center">Lista Productos</h1>
        
        <table id="tabla2">
            <tr class="lis">
                <th class="lis">Id</th>
                <th class="lis">Nombre</th>
                <th class="lis">Descripción</th>
                <th class="lis">Precio</th>
            </tr>
        <%
            
            String respuesta="";
            
           
                fichero f = new fichero("almacen.bin","rb");
                producto aux = (producto) f.leerObjeto();
                while(aux!=null){
                    
                    respuesta+="<tr class='lis'>\n"
                            + "<td class='lis'>"+aux.getid()+"</td>\n"
                            + "<td class='lis'>"+aux.getNombre()+"</td>\n"
                            + "<td class='lis'>"+aux.getdescripcion()+"</td>\n"
                            + "<td class='lis'>"+aux.getprecio()+"</td>\n"
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
