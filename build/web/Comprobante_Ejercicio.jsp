<%-- 
    Document   : Comprobante_Ejercicio
    Created on : 25-jun-2018, 4:14:54
    Author     : CIAN
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="negocio.Album"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comprobante_Ejercicio</title>
    </head>
    <body>
        <h2>Comprobante_Ejercicio</h2>
        
        <table border="1px">
            <thead>
                <tr>
                    <th>Artista</th>
                    <th>Album</th>
                    <th>Año de Edición</th>
                    <th>Formato</th>
                    <th>Precio</th>
                </tr>
            </thead>
            <tbody>
            <%
                   ArrayList<Album> lista = (ArrayList<Album>)request.getSession().getAttribute("album_venta");
                   for(Album item:lista)
                   {
                %>
                <tr>
                    <td><%= item.getArtista() %></td>
                    <td><%= item.getNombre_album() %></td>
                    <td><%= item.getAnho_edicion() %></td>
                    <td><%= item.getFormato() %></td>
                    <td><%= item.getPrecio() %></td>
                </tr>                
                <% } %>
                </table>
    </body>
</html>
