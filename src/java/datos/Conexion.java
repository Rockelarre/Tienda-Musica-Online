/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datos;

import java.sql.*;
import java.util.ArrayList;
import negocio.Album;

/**
 *
 * @author alumnossur
 */
public class Conexion implements IConexion {
    private Connection con;
    private Statement state;
         
    public Conexion()
    {
      
    }
    
    /**
     *
     */
    
    public void conectar()
    {
     try {
         //CADENA DE CONEXIÓN
         Class.forName("com.mysql.jdbc.Driver").newInstance();
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/web_musica","root","");
         state = con.createStatement();
     }
     catch(Exception ex)
     {
        ex.printStackTrace();
     }
     }
    
    public void insertar(Album album)
    {
         try{

         conectar();
         state.executeUpdate("INSERT INTO album VALUES('"+album.getCod_album()+
         "', '"+album.getArtista()+"', '"+album.getNombre_album()+"', '"+album.getAnho_edicion()+
                 "', '"+album.getFormato()+"',"+album.getPrecio()+");");
         con.close();
         }
         catch(Exception ex)
         {
         ex.printStackTrace();
         }
    }
    
     public int eliminar(String codigo)
    {
         int inserto=0;
         try{
         
         conectar();
         inserto= state.executeUpdate("DELETE FROM album Where cod_album='"+codigo+"';");
         con.close();
         }
         catch(Exception ex)
         {
         ex.printStackTrace();
         }
         //SI INSERTA RETORNA UN VALOR DISTINTO DE CERO
         return inserto;
    }
    
    //Si devuelve un valor distinto de cero significa que modificó correctamente
public int modificar(Album album)
{
    int entero = 0;
    try{
    conectar();
    entero = state.executeUpdate("update tabla1 set artista='"+album.getArtista()+"',album='"+album.getNombre_album()+"',año_edicion='"+album.getAnho_edicion()+"', "
                                    + "formato='"+album.getFormato()+"', precio='"+album.getPrecio()+"' where cod_album='"+album.getCod_album()+"'");
    con.close();
    }
    catch(Exception ex)
    {
    ex.printStackTrace();
    }
    return entero;
}

////////////  LISTAR ///////////////////
public ArrayList<Album> listar() throws SQLException
{
 conectar();

 ArrayList <Album>albumes = new ArrayList<Album>();
 ResultSet result = state.executeQuery("select * from album");
 while (result.next())
 {
 Album album = new Album();
 album.setCod_album((String)result.getObject(1));
 album.setArtista((String)result.getObject(2));
 album.setNombre_album((String)result.getObject(3));
 album.setAnho_edicion((String)result.getObject(4));
 album.setFormato((String)result.getObject(5));
 album.setPrecio((Integer)result.getObject(6));
 albumes.add(album);
 }
 return albumes;
}
    
/////////// BUSCAR POR CODIGO /////
//Busca un medicamento por codigo
public Album buscar(String codigo) throws SQLException
{
 conectar();
 Album alb = new Album();
 ResultSet result = state.executeQuery("select * from album Where cod_album='"+codigo+"';");
 while (result.next())
 {
 alb.setCod_album((String)result.getObject(1));
 alb.setArtista((String)result.getObject(2));
 alb.setNombre_album((String)result.getObject(3));
 alb.setAnho_edicion((String)result.getObject(4));
 alb.setFormato((String)result.getObject(5));
 alb.setPrecio((Integer)result.getObject(6));
 }
 return alb;
}


}
