<%-- 
    Document   : Ingreso_Venta_Ejercicio
    Created on : 25-jun-2018, 3:38:51
    Author     : CIAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingreso Venta Ejercicio</title>
        <link rel="stylesheet" href="./style.css" type="text/css" media="all" />
    </head>
    <body>
        <h2>Ingreso Venta Ejercicio</h2>
        
        <!-- Venta 1 -->
        <div>
        <form action="confirmar_Venta_Ejercicio.do" method="POST">
             <table border="1px">
             <tr>
                <td><img src="Kyuss_Wretch.jpg" height="200" width="200"></td>
                <td><a>Artista:</a>
                    <br><br>
                    <a>Nombre del Álbum:</a>
                    <br><br>
                    <a>Año Edición:</a>
                    <br><br>
                    <a>Formato:</a>
                    <br><br>
                    <a>Precio CLP $:</a>
                    <br><br>
                    <a>Nombre:</a>
                    <br><br>
                    <a>Teléfono:</a>
                    <br><br>
                    <a>Dirección:</a>
                    <br><br>
                    <a>Comuna:</a>
                    <br><br>
                    <a>Región:</a>
                    <br><br>
                    <a>E-mail:</a>
                    <br><br>
                    <a>Fecha Venta:</a>
                    <br><br>
                    <a>Cantidad:</a>
                    <br><br>
                    <a>Forma de Pago:</a>
                </td>
                <td><a><input type="text" name="txt_artista" value="Kyuss"></a>
                    <br><br>
                    <a><input type="text" name="txt_nombre_album" value="Wretch"</a>
                    <br><br>
                    <a><input type="text" name="txt_anho_edicion" value="23/09/1991"</a>
                    <br><br>
                    <a><input type="text" name="txt_formato" value="CD"</a>
                    <br><br>
                    <a><input type="text" name="txt_precio" value="15000"</a>
                    <br><br>
                    <a><input type="text" name="txt_nombre" value="Jimi Hendrix"></a>
                    <br><br>
                    <a><input type="text" name="txt_telefono" value="56965871"></a>
                    <br><br>
                    <a><input type="text" name="txt_direccion" value="Guitarras 555"></a>
                    <br><br>
                    <input type="text" name="txt_comuna" value="La Florida">
                    <br><br>
                    <input type="text" name="txt_region" value="RM">
                    <br><br>
                    <a><input type="text" name="txt_email" value="hendrix@gmail.com"></a>
                    <br><br>
                    <a><input name="txt_fecha" value="25/06/2018"></a>
                    <br><br>
                    <a><input type="text" name="txt_cantidad" value="5"></a>
                    <br><br>
                    <a><input type="text" name="txt_pago" value="Débito"></a>
                    </td>
                   </tr>
             <tr>
                 <td></td>
                 <td><input type="submit" value="agregar_Ejercicio"></td>
             </tr>
             </table>  
        </form>
            <br><br>
        </div>
    </body>
</html>
