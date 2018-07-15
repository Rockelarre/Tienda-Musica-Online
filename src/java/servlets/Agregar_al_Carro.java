/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.Album;

/**
 *
 * @author CIAN
 */
public class Agregar_al_Carro extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         Album album = new Album();
           album.setArtista(request.getParameter("txt_artista"));
           album.setNombre_album(request.getParameter("txt_nombre_album"));
           album.setAnho_edicion(request.getParameter("txt_anho_edicion"));
           album.setFormato(request.getParameter("txt_formato"));
           album.setPrecio(Integer.valueOf(request.getParameter("txt_precio")));
           
          
           
           //Si la sesión esta vacía creará una sesión de colección de Album
           //Se ejecuta la primera vez
           if (request.getSession().getAttribute("album_venta")==null)
           {
              ArrayList <Album>lista = new ArrayList(); 
              request.getSession().setAttribute("album_venta",lista);
           }
           //Rescata la colección para agregar un nuevo Album
           ArrayList<Album> lista = (ArrayList<Album>)request.getSession().getAttribute("album_venta");
           lista.add(album);
           //sobreescribe la sesión con la nueva lista de Albumes
           request.getSession().setAttribute("album_venta",lista);
           
          
           //response.sendRedirect("Catalogo de Albumes.jsp");  
           out.println("<script type=text/javascript>alert('Album Ingresado al Carro de Compras');</script>");
           out.println("<a href='Catalogo de Albumes.jsp' width=150 height=150><img src='volver_vinilo.png'></a>");
           
           
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Agregar_al_Carro.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Agregar_al_Carro.class.getName()).log(Level.SEVERE, null, ex);
        }
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
