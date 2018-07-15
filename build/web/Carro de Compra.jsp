<%-- 
    Document   : Carro de Compra
    Created on : 16-jun-2018, 1:17:14
    Author     : CIAN
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="negocio.Album"%>
<%@page session='true' contentType="text/html" pageEncoding="UTF-8"
 import='java.util.*'%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carro de Compra</title>
        <link rel="stylesheet" href="./style.css" type="text/css" media="all" />
    </head>
    <body>
        <a href="Catalogo de Albumes.jsp" class="table2"><img src="disco-de-vinilo.jpg" height="50" width="50"></a>
        <a href="index.html" class="table2"><img src="home.png" height="50" width="50"></a>
        <a href="Formulario de Contacto.jsp" class="table2"><img src="contacto.png" height="30" width="50"></a>
        <h1>Carro de Compra</h1>
        
        <!-- Formulario Compra -->
        <div>
            <form action="comprobante_pago.do" method="POST">
            <h2>Lista de Productos en el Carro</h2>
            <table style="border: 3px solid gray; border-radius: 15px; width: 60%; 
                    text-align: center; background-color: #fefefe; ">
            <thead>
                <tr >
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
                <br>
        </div>
    </head>
    <body>
        <div>
        
            <h2>Ingresar Datos Cliente</h2>
             <table style="border: 3px solid gray; border-radius: 15px; width: 30%; 
                    text-align: center; background-color: #fefefe; ">
             <tr>
                <td>
                    <br>
                    <h3>Nombre:</h3>
                    <h3>Teléfono:</h3>
                    <h3>Dirección:</h3>
                    <h3>Comuna:</h3>
                    <h3>Región:</h3>
                    <h3>E-mail:</h3>
                </td>
                <td>
                    <br>
                    <h3><input type="text" name="txt_nombre" value="Jimi Hendrix" required></h3>
                    <h3><input type="text" name="txt_telefono" value="88888888" required></h3>
                    <h3><input type="text" name="txt_direccion" value="Las Guitarras 555" required></h3>
                    <h3>
                    <select name="txt_comuna" >
                        <option>La Florida</option>
                        <option>Macul</option>
                        <option>Maipu</option>
                        <option>Santiago</option>
                    </select>
                    </h3>
                    <h3>
                    <select name="txt_region">
                        <option>RM</option>
                        <option>I</option>
                        <option>II</option>
                        <option>III</option>
                        <option>IV</option>
                        <option>V</option>
                        <option>VI</option>
                        <option>VII</option>
                        <option>VIII</option>
                        <option>IX</option>
                        <option>X</option>
                        <option>XI</option>
                        <option>XII</option>
                        
                    </select>
                    </h3>
                    <h3><input type="text" name="txt_email" value="hendrix@gmail.com" required></h3>
                </td>
                
             </tr>
             </table>  
            <table style="border: 3px solid gray; border-radius: 15px; width: 30%; 
                    text-align: center; background-color: #fefefe; ">
                <tr>
                 <td>
                    <h3>Fecha Compra:   </h3>
                    <h3>Forma de Pago:     </h3>
                 </td>
                 <td>
                    <h3><input type="text" name="txt_fecha" value="25/06/2018" required></h3>
                    <h3><a><input type="radio" name="rbt_pago" value="Debito" checked>Débito</a>
                    <a><input type="radio" name="rbt_pago" value="Credito" >Crédito</a></h3>
                 </td>
                 </tr>
                 <br>
                 </table>
        
        </div>
        <br>
        <img src="confirmar.png" height="200" width="200">
        <br><br>
        <input type="submit" value="Confirmar Compra" style="width:200px; height:75px;
               border-radius: 100px; background-color: #1883ba; 
               font-size: 16px; font-weight: 800; color: #fefefe;">
        </form>
                
                
       
    </body>
</html>
