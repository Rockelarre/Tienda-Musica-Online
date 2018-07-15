/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.Album;
import negocio.Cliente;
import negocio.Venta;

/**
 *
 * @author CIAN
 */
public class Comprobante_Pago extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String mensaje = "";
        try  {
            
            //Datos Cliente
           Cliente cliente = new Cliente();
           cliente.setNombre(request.getParameter("txt_nombre"));
           cliente.setTelefono(request.getParameter("txt_telefono"));
           cliente.setDireccion(request.getParameter("txt_direccion"));
           cliente.setComuna(request.getParameter("txt_comuna"));
           cliente.setRegion(request.getParameter("txt_region"));
           cliente.setCorreo(request.getParameter("txt_email"));
           
           cliente.informacionCliente();
           
           ArrayList<Album> lista = (ArrayList<Album>)request.getSession().getAttribute("album_venta");
           
           Venta venta = new Venta();
           venta.setFecha_venta(request.getParameter("txt_fecha"));
           venta.setForma_pago(request.getParameter("rbt_pago"));
            
           
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Comprobante_Pago</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<a><img src='comprobante.png'></a><br><br>");
            out.println("<a style='font-size: 23px; font-weight: bold;'>"
                    + "---- INFORMACIÓN DEL CLIENTE ----</a><br><br>");
            out.println("Nombre          : "+cliente.getNombre()+"<br>");
            out.println("Teléfono        : "+cliente.getTelefono()+"<br>");
            out.println("Dirección       : "+cliente.getDireccion()+"<br>");
            out.println("Comuna          : "+cliente.getComuna()+"<br>");
            out.println("Región          : "+cliente.getRegion()+"<br>");
            out.println("Correo          : "+cliente.getCorreo()+"<br>");
            out.println("---------------------------------------<br>");
            out.println("---------------------------------------<br>");
            out.println("<a style='font-size: 23px; font-weight: bold;'>"
                    + "-- INFORMACIÓN DE LA COMPRA --</a> <br><br>");
            
            double precio_bruto = 0;
            
            for(Album item:lista)
            {
           out.println("<a style='font-size: 18px; font-weight: bold;'>"
                   + "------ Disco Comprado ------ </a><br>");    
            out.println("Artista              : "+item.getArtista()+"<br>");
            out.println("Album                : "+item.getNombre_album()+"<br>");
            out.println("Año Edición          : "+item.getAnho_edicion()+"<br>");
            out.println("Formato              : "+item.getFormato()+"<br>");
            out.println("Precio Unitario      : "+item.getPrecio()+"<br>");
            out.println("---------------------------------------<br>");
            out.println("---------------------------------------<br>");
            precio_bruto = precio_bruto + item.getPrecio();
            }
            out.println("---------------------------------------<br>");
            out.println("---------------------------------------<br>");
            out.println("<a style='font-size: 23px; font-weight: bold;'>"
                    + "---------- Total a Pagar ----------</a> <br><br>");
            out.println("Fecha de Compra : "+venta.getFecha_venta()+"<br>");
            out.println("---------------------------------------<br>");
            out.println("Precio Bruto            : "+precio_bruto+"<br>");
            out.println("Forma de Pago           : "+venta.getForma_pago()+"<br>");
            
            double porcentaje;
            if(venta.getForma_pago().equals("Debito")){
            porcentaje = 10;
            }else{
            porcentaje = 0;
            }
            out.println("Porcentaje de Descuento : "+porcentaje+" %<br>");
            double descuento = (precio_bruto*porcentaje)/100;
            double precio_total = precio_bruto - descuento;
            out.println("Precio Total            : "+precio_total+"<br>");
            out.println("---------------------------------------<br>");
            out.println("---------------------------------------<br><br>");
             
            out.println("<a href='Carro de Compra.jsp'></a>");
            out.println("<a href='Catalogo de Albumes.jsp'><img src=\"disco-de-vinilo.jpg\" height=\"50\" width=\"50\"></a>");
            out.println("<a href='index.html'><img src=\"home - copia.png\" height=\"50\" width=\"80\"></a>");
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception e)
        {   
            out.println("<a><img src='error.png' height=\"100\" width=\"100\"></a><br><br>");
            mensaje = e.getMessage();
        }
        finally
        {
            out.println(mensaje);
            out.println("<br><br><br><br><a href='Carro de Compra.jsp'><img src=\"carro - copia.png\" height=\"100\" width=\"160\"></a>");
            out.println("<br><a style='font-size: 18px; font-weight: bold;'>Volver al Carro de Compra</a>");
        }
    }
   
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
