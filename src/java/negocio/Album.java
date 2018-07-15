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
    
     private String artista; 
     private String nombre_album;
     private String anho_edicion; 
     private String formato; 
     private double precio;

    
     
 public Album(){
 }
 
 public Album(String artista, String nombre_album, String anho_edicion,
         String formato, double precio){
     this.artista = artista;
     this.nombre_album = nombre_album;
     this.anho_edicion = anho_edicion;
     this.formato = formato;
     this.precio = precio;
     
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
    public void setPrecio(double precio) {
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
    


public void informacionAlbum()
    {
        
        System.out.println("- Información de Album -");
        System.out.println("Artista:"+artista);
        System.out.println("Album:"+nombre_album);
        System.out.println("Año Edición:"+anho_edicion);
        System.out.println("Formato:"+formato);
        System.out.println("Precio:"+precio);
    }

    public void setCantidad(Integer valueOf) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void setCant(Integer valueOf) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }


}
