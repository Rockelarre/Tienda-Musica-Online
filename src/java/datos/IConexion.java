/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datos;

import java.sql.SQLException;
import java.util.ArrayList;
import negocio.Album;
import negocio.Album;

/**
 *
 * @author alumnossur
 */
public interface IConexion {
     void conectar();
     void insertar(Album album);
     int eliminar(String codigo);
     int modificar(Album album);
     ArrayList<Album> listar() throws SQLException;
    Album buscar(String codigo) throws SQLException;
}
