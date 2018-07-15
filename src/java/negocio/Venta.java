/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package negocio;

import java.util.ArrayList;

/**
 *
 * @author CIAN
 */
public class Venta {
    
    private Album album;
    private Cliente cliente;
    private String fecha_venta;
    private int cantidad;
    private String forma_pago;

    
    
    public Venta(){}
    
    public Venta(String fecha_venta ,
    String forma_pago){
        this.fecha_venta = fecha_venta;
        this.forma_pago = forma_pago;
    }
    
    public Venta(int cantidad){
        cantidad = 1;
    this.cantidad = cantidad;
    }

    public Album getAlbum() {
        return album;
    }

    public void setAlbum(Album album) {
        this.album = album;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public String getFecha_venta() {
        return fecha_venta;
    }

    public void setFecha_venta(String fecha_venta) {
        this.fecha_venta = fecha_venta;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getForma_pago() {
        return forma_pago;
    }

    public void setForma_pago(String forma_pago) {
        this.forma_pago = forma_pago;
    }



}