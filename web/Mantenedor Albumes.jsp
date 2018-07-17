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
        
            <br><br>
             <table style="border: 3px solid gray; border-radius: 15px; width: 30%; 
                    text-align: center; background-color: #fefefe; ">
             <tr>
                <td>
                    
                    <h3>Codigo</h3>
                    <h3>Artista</h3>
                    <h3>Album</h3>
                    <h3>Año de Edición</h3>
                    <h3>Formato</h3>
                    <h3>Precio</h3>
                </td>
                <td>
                    
                    <h3><input type="text" name="txt_codigo" value="<%= alb.getCod_album() %>" ></h3>
                    <h3><input type="text" name="txt_artista" value="<%= alb.getArtista() %>" ></h3>
                    <h3><input type="text" name="txt_album" value="<%= alb.getNombre_album() %>" ></h3>
                    <h3>
                    <select name="txt_anho" value="<%= alb.getAnho_edicion() %>" >
                        <option>2018</option>
                        <option>2017</option>
                        <option>2016</option>
                        <option>2015</option>
                        <option>2014</option>
                        <option>2013</option>
                        <option>2012</option>
                        <option>2011</option>
                        <option>2010</option>
                        <option>2009</option>
                        <option>2008</option>
                        <option>2007</option>
                        <option>2006</option>
                        <option>2005</option>
                        <option>2004</option>
                        <option>2003</option>
                        <option>2002</option>
                        <option>2001</option>
                        
                        
                    </select>
                    </h3>
                    <h3>
                    <select  name="txt_formato" value="<%= alb.getFormato() %>">
                        <option>Vinilo</option>
                        <option>Cassete</option>
                        <option>CD</option>
                        <option>DVD</option>
                        <option>BlueRay</option>
                        <option>Mp3</option> 
                        <option>Flac</option> 
                    </select>
                    </h3>
                    <h3><input type="text" name="txt_precio" value="<%= alb.getPrecio() %>" ></h3>
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
        </form>
        <!-- Lista de Albumes -->
        <%
        if (request.getParameter("valor_listar")!=null)
          {
              ArrayList<Album> lista = (ArrayList<Album>) request.getSession().getAttribute("listaAlbum");
        %>
              <table style="border: 3px solid gray; border-radius: 15px; width: 80%; 
                    text-align: center; background-color: #fefefe; ">  
                  <thead>
                      <tr>
                          <td>Código</td>
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
                  <td><%= m.getCod_album() %> </td>
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
        
        
        
        
    
</html>
