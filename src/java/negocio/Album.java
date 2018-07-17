/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio;

/**
 *
 * @author CIAN
 */
public class Album {
    
     private int cod_album;
     private String artista; 
     private String nombre_album;
     private String anho_edicion; 
     private String formato; 
     private int precio;

    
     
 public Album(){
     cod_album = 0;
     artista = ""; 
     nombre_album = "";
     anho_edicion = ""; 
     formato = ""; 
     precio = 0;
 }
 
 public Album(String artista, String nombre_album, String anho_edicion,
         String formato, int precio){
     this.artista = artista;
     this.nombre_album = nombre_album;
     this.anho_edicion = anho_edicion;
     this.formato = formato;
     this.precio = precio;
     
 }

     public int getCod_album() {
        return cod_album;
    }

    public void setCod_album(int cod_album) {
        this.cod_album = cod_album;
    }
 
  
    /**
     * @return the artista
     */
    public String getArtista() {
        return artista;
    }

    /**
     * @param artista the artista to set
     */
    public void setArtista(String artista) {
        this.artista = artista;
    }

    /**
     * @return the nombre_album
     */
    public String getNombre_album() {
        return nombre_album;
    }

    /**
     * @param nombre_album the nombre_album to set
     */
    public void setNombre_album(String nombre_album) {
        this.nombre_album = nombre_album;
    }

    

    /**
     * @return the formato
     */
    public String getFormato() {
        return formato;
    }

    /**
     * @param formato the formato to set
     */
    public void setFormato(String formato) {
        this.formato = formato;
    }

    /**
     * @return the precio
     */
    public double getPrecio() {
        
        return precio;
    }

    /**
     * @param precio the precio to set
     */
    public void setPrecio(int precio) {
        this.precio = precio;
    }

    /**
     * @return the año_edicion
     */
    public String getAnho_edicion() {
        return anho_edicion;
    }

    /**
     * @param anho_edicion the año_edicion to set
     */
    public void setAnho_edicion(String anho_edicion) {
        this.anho_edicion = anho_edicion;
    }
}
