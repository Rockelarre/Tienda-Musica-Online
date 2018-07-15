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
public class Cliente {
    
     private String nombre; 
     private String telefono;
     private String direccion; 
     private String comuna; 
     private String region; 
     private String correo;
     
     
     public Cliente(){
 }
     
     public Cliente( String nombre, String telefono, String direccion, String comuna, 
     String region, String correo){
     this.nombre = nombre;
     this.telefono = telefono;
     this.direccion = direccion;
     this.comuna = comuna;
     this.region = region;
     this.correo = correo;
 }


    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the telefono
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * @param telefono the telefono to set
     * @throws java.lang.Exception
     */
    public void setTelefono(String telefono) throws Exception {
        
        if (telefono.length()==9)
       {
        this.telefono = telefono;
       }
       else
       {
         throw new Exception("El teléfono debe tener 9 dígitos!!!");
       }
    }

    /**
     * @return the direccion
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * @param direccion the direccion to set
     */
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    /**
     * @return the comuna
     */
    public String getComuna() {
        return comuna;
    }

    /**
     * @param comuna the comuna to set
     */
    public void setComuna(String comuna) {
        this.comuna = comuna;
    }

    /**
     * @return the region
     */
    public String getRegion() {
        return region;
    }

    /**
     * @param region the region to set
     */
    public void setRegion(String region) {
        this.region = region;
    }

    /**
     * @return the correo
     */
    public String getCorreo() {
        return correo;
    }

    /**
     * @param correo the correo to set
     */
    public void setCorreo(String correo) {
        this.correo = correo;
    }
    
    public void informacionCliente()
    {
        System.out.println("- Información de Cliente -");
        System.out.println("Nombre:"+nombre);
        System.out.println("Telefono:"+telefono);
        System.out.println("Dirección:"+direccion);
        System.out.println("Comuna:"+comuna);
        System.out.println("Region:"+region);
        System.out.println("Correo:"+correo);
    }
    
    
    

}


