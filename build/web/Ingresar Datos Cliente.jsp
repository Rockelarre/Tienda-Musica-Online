<%-- 
    Document   : Ingresar Datos Cliente
    Created on : 19-jun-2018, 13:00:02
    Author     : CIAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Datos Cliente</title>
    </head>
    <body>
        <div>
            <h2>Ingresar Datos Cliente</h2>
        <form action="ingresar_cliente.do" method="POST">
             <table border="1px">
             <tr>
                <td>
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
                </td>
                <td>
                    <a><input type="text" name="txt_nombre"></a>
                    <br><br>
                    <a><input type="text" name="txt_telefono"></a>
                    <br><br>
                    <a><input type="text" name="txt_direccion"></a>
                    <br><br>
                    <a><input type="text" name="txt_comuna"></a>
                    <br><br>
                    <a><input type="text" name="txt_region"></a>
                    <br><br>
                    <a><input type="text" name="txt_email"></a>
                </td>
                <td>
                    <a>Fecha Compra:</a>
                    <br><br><br>
                    <a>Forma de Pago:</a>
                    <br>
                    <a><input type="radio" name="pago" value="debito" checked>Débito</a>
                    <br>
                    <a><input type="radio" name="pago" value="credito">Crédito<br></a>
                    <br><br>
                    <input type="submit" value="Ingresar Cliente">
                    <br><br>
                    <input type="submit" value="Eliminar Compra">
                 </td>
             </tr>
             </table>  
        </form>
        </div>
        <br><br>
        <a href="Comprobante de Compra.jsp">Comprobante de Compra</a>
    </body>
</html>
