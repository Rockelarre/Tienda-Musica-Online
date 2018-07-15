<%-- 
    Document   : Formulario de Contacto
    Created on : 16-jun-2018, 1:17:46
    Author     : CIAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario de Contacto</title>
        <link rel="stylesheet" href="./style.css" type="text/css" media="all" />
    </head>
    <body>
        <h1>Formulario de Contacto</h1>
        
        <!-- Formulario de Contacto -->
        <div>
            <a href="index.html" class="table2"><img src="home.png" height="50" width="50"></a>
            <h2>Formulario de Contacto</h2>
        <form action="Enviar_Consulta.do******" method="POST">
             <table style="border: 3px solid gray; border-radius: 15px; width: 30%; 
                    text-align: center; background-color: #fefefe; ">
             <tr>
                <td>
                    <h3>Nombre:</h3>
                    <h3>E-mail:</h3>
                </td>
                <td>
                    <h3><input type="text" name="txt_nombre_contacto" required></h3>
                    <h3><input type="text" name="txt_email_contacto" required></h3>
                </td>
             </tr>
             </table>  
        
        </div>
        
        <div>
            <h2>Consultas y Comentarios</h2>
            <table border="1px">
                <textarea name="comentarios" rows="10" cols="55" accesskey=""
                          style="border: 3px solid gray; border-radius: 15px; width: 30%; 
                    text-align: center; background-color: #fefefe; " required></textarea>
            </table>
        </div>
        
        <input type="submit" value="Enviar" style="width:150px; height:75px;
               border-radius: 100px; background-color: #1883ba; font-size: 25px; font-weight: bold">
        </form>
    </body>
</html>
