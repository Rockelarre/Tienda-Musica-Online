<%-- 
    Document   : Catalogo de Albumes
    Created on : 16-jun-2018, 1:17:00
    Author     : CIAN
--%>


<%@page import="negocio.Album"%>
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
        <%
          if (request.getParameter("mensaje")!=null)
          {
              String mensaje = request.getParameter("mensaje");
         %>
             <script language="javascript">
             alert('<%= mensaje %>');
             </script>
        <%
          }
             Album alb = new Album();
             if (request.getParameter("valor_buscar")!=null)
              {
                  alb = (Album)request.getSession().getAttribute("objetoBuscado");
              }
        %>
        
        
        <a href="index.html" class="table2"><img src="home.png" height="50" width="50"></a>
        
        
        <br><br><br>
        <h1>Mantenedor de Álbumes - CRUD</h1>
        
        
        <!-- Mantenedor CRUD -->
        <div>
            <form action="proceso.do" method="POST">
            
   
    <body>
        <div>
        
            <h2>....</h2>
             <table style="border: 3px solid gray; border-radius: 15px; width: 30%; 
                    text-align: center; background-color: #fefefe; ">
             <tr>
                <td>
                    <br>
                    <h3>Artista</h3>
                    <h3>Album</h3>
                    <h3>Año de Edición</h3>
                    <h3>Formato</h3>
                    <h3>Precio</h3>
                </td>
                <td>
                    <br>
                    <h3><input type="text" name="<%= alb.getArtista()%>" value="Jimi Hendrix" required></h3>
                    <h3><input type="text" name=""<%= alb.getNombre_album()%>"" value="Are You Experienced" required></h3>
                    <h3>
                    <select name="<%= alb.getAnho_edicion()%>" >
                        <option>2018</option>
                        <option>2017</option>
                        <option>2016</option>
                        <option>2015</option>
                    </select>
                    </h3>
                    <h3>
                    <select name="<%= alb.getFormato()%>">
                        <option>Vinilo</option>
                        <option>CD</option>
                        <option>DVD</option>
                        <option>BlueRAY</option>
                        <option>mp3</option>
                        <option>flac</option>
                        
                    </select>
                    </h3>
                    <h3><input type="text" name="<%= alb.getPrecio()%>" value="5000" required></h3>
                </td>
                
             </tr>
             </table>  
            
            
            
            
            <!-- Guardar -->
        <input type="submit" value="Guardar" name="btn_guardar" style="width:100px; height:50px;
               border-radius: 100px; background-color: #1883ba; 
               font-size: 14px; font-weight: 800; color: #fefefe;">
        </form>
            
        <!-- Eliminar -->
        <input type="submit" value="Eliminar" name="btn_eliminar" style="width:100px; height:50px;
               border-radius: 100px; background-color: #1883ba; 
               font-size: 14px; font-weight: 800; color: #fefefe;">
        </form>
        
        <!-- Modificar -->
        <input type="submit" value="Modificar" name="btn_modificar" style="width:100px; height:50px;
               border-radius: 100px; background-color: #1883ba; 
               font-size: 14px; font-weight: 800; color: #fefefe;">
        </form>
        
        <!-- Listar -->
        <input type="submit" value="Listar" name="btn_listar" style="width:100px; height:50px;
               border-radius: 100px; background-color: #1883ba; 
               font-size: 14px; font-weight: 800; color: #fefefe;">
        </form>
        
        <!-- Buscar por Código -->
        <input type="submit" value="Buscar por Código" name="btn_buscar" style="width:200px; height:50px;
               border-radius: 100px; background-color: #1883ba; 
               font-size: 14px; font-weight: 800; color: #fefefe;">
        
        </div>
        <br><br>
         
        
        </form>
        <!-- Lista de Albumes -->
        <%
        if (request.getParameter("valor_listar")!=null)
          {
              ArrayList<Album> lista = (ArrayList<Album>) request.getSession().getAttribute("listaAlbum");
        %>
              <table border="1">  
                  <thead>
                      <tr>
                          <td>Artista</td>
                          <td>Album</td>
                          <td>Año de Edición</td>
                          <td>Formato</td>
                          <td>Precio</td>
                                       
                      </tr>
                  </thead>
            <%
              for (Album m:lista)
              {
            %>
            <tr>
                  <td><%= m.getArtista() %> </td>
                  <td><%= m.getNombre_album() %> </td>
                  <td><%= m.getAnho_edicion() %> </td>
                  <td><%= m.getFormato() %> </td>
                  <td><%= m.getPrecio() %> </td>
                  
           </tr>
           <%   
            }
           
            }
          %>
         
            </tr>
        </div>
        <br><br><br><br>
        
        
        
        
    </body>
</html>
