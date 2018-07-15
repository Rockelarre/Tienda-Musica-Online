<%-- 
    Document   : Catalogo de Albumes
    Created on : 16-jun-2018, 1:17:00
    Author     : CIAN
--%>


<%@page session='true' contentType="text/html" pageEncoding="UTF-8"
 import='java.util.*'%>
 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Catálogo de Álbumes</title>
        <link rel="stylesheet" href="./style.css" type="text/css" media="all" />
    </head>
    <body>
        <a href="Carro de Compra.jsp" class="table2"><img src="carro.png" height="50" width="50"></a>
        <a href="index.html" class="table2"><img src="home.png" height="50" width="50"></a>
        <a href="Formulario de Contacto.jsp" class="table2"><img src="contacto.png" height="30" width="50"></a>
        
        <br><br><br>
        <h1>Catálogo de Álbumes</h1>
        
        <!-- Album 1 -->
        <div>    
        <form action="agregar_al_carro.do" method="POST">
             <table style="border: 3px solid gray; border-radius: 15px; width: 50%; 
                    text-align: center; background-color: #fefefe; ">
             <tr>
                 <br><br><br><br>
                <td><img src="Kyuss_Wretch.jpg" height="200" width="200"></td>
                <td>
                    <h2>Artista</h2>
                    <h3>Nombre del Álbum</h3>
                    <h3>Año Edición</h3>
                    <h3>Formato</h3>
                    <h2>Precio CLP $</h2>
                </td>
                <td>
                    <h2>:</h2>
                    <h3>:</h3>
                    <h3>:</h3>
                    <h3>:</h3>
                    <h2>:</h3>
                </td>
                <td><h2><input type="hidden" name="txt_artista" value="Kyuss">Kyuss</h2>
                    <h3><input type="hidden" name="txt_nombre_album" value="Wretch">Wretch</h3>
                    <h3><input type="hidden" name="txt_anho_edicion" value="23/09/1991">23/09/1991</h3>
                    <h3><input type="hidden" name="txt_formato" value="CD">CD</h3>
                    <h2><input type="hidden" name="txt_precio" value="15000">15000</h2>
             </tr>
             </table>
             <tr>
                 <input type="submit" value="Agregar al Carro" style="width:660px; height:50px;
                        border-radius: 100px; background-color: #1883ba; 
                        font-size: 20px; font-weight: 800; color: #fefefe;">
             </tr>
        </form>
            </tr>
        </div>
        <br><br><br><br>
        <!-- Album 2 -->
        <div>
        <form action="agregar_al_carro.do" method="POST">
             <table style="border: 3px solid gray; border-radius: 15px; width: 50%; 
                    text-align: center; background-color: #fefefe; ">
             <tr>
                <td><img src="Radiohead_TheBends.jpg" height="200" width="200"></td>
                <td>
                    <h2>Artista</h2>
                    <h3>Nombre del Álbum</h3>
                    <h3>Año Edición</h3>
                    <h3>Formato</h3>
                    <h2>Precio CLP $</h2>
                </td>
                <td>
                    <h2>:</h2>
                    <h3>:</h3>
                    <h3>:</h3>
                    <h3>:</h3>
                    <h2>:</h3>
                </td>
                <td><h2><input type="hidden" name="txt_artista" value="Radiohead">Radiohead</h2>
                    <h3><input type="hidden" name="txt_nombre_album" value="The Bends">The Bends</h3>
                    <h3><input type="hidden" name="txt_anho_edicion" value="13/03/1995">13/03/1995</h3>
                    <h3><input type="hidden" name="txt_formato" value="Vinilo">Vinilo</h3>
                    <h2><input type="hidden" name="txt_precio" value="30000">30000</h2>
                </tr>
             </table>
             <tr>
                 <input type="submit" value="Agregar al Carro" style="width:660px; height:50px;
                        border-radius: 100px; background-color: #1883ba; 
                        font-size: 20px; font-weight: 800; color: #fefefe;">
             </tr>
        </form>
            
            </tr>
        </div>
        <br><br><br><br>
        <!-- Album 3 -->
        <div>
        <form action="agregar_al_carro.do" method="POST">
             <table style="border: 3px solid gray; border-radius: 15px; width: 50%; 
                    text-align: center; background-color: #fefefe; ">
             <tr>
                <td><img src="Poseidotica_El Dilema del Origen.jpg" height="200" width="200"></td>
                <td>
                    <h2>Artista</h2>
                    <h3>Nombre del Álbum</h3>
                    <h3>Año Edición</h3>
                    <h3>Formato</h3>
                    <h2>Precio CLP $</h2>
                </td>
                <td>
                    <h2>:</h2>
                    <h3>:</h3>
                    <h3>:</h3>
                    <h3>:</h3>
                    <h2>:</h3>
                </td>
                <td><h2><input type="hidden" name="txt_artista" value="Poseidotica">Poseidotica</h2>
                    <h3><input type="hidden" name="txt_nombre_album" value="El Dilema del Origen">El Dilema del Origen</h3>
                    <h3><input type="hidden" name="txt_anho_edicion" value="6/01/2015">6/01/2015</h3>
                    <h3><input type="hidden" name="txt_formato" value="Flac">Flac</h3>
                    <h2><input type="hidden" name="txt_precio" value="5000">5000</h2>
                </tr>
             </table>
             <tr>
                 <input type="submit" value="Agregar al Carro" style="width:660px; height:50px;
                        border-radius: 100px; background-color: #1883ba; 
                        font-size: 20px; font-weight: 800; color: #fefefe;">
             </tr>
        </form>
            
            </tr>
        </div>
        <br><br><br><br>
        
        
        
        
    </body>
</html>
