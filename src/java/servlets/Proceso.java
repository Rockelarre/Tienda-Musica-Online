/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import datos.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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
 * @author alumnossur
 */
public class Proceso extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           Conexion con = new Conexion();
           ////// GUARDAR /////////////////////////////
           if (request.getParameter("btn_guardar")!=null)
           {
            Album alb = new Album();
            alb.setArtista(request.getParameter("txt_codigo"));
            alb.setNombre_album(request.getParameter("txt_farmaco"));
            alb.setAnho_edicion(request.getParameter("txt_codigo"));
            alb.setFormato(request.getParameter("txt_farmaco"));
            alb.setPrecio(Integer.valueOf(request.getParameter("txt_precio")));    
            con.insertar(alb);
            response.sendRedirect("formulario.jsp?mensaje="+"Farmaco ingresado");
           }
           
           //////// ELIMINAR /////
           if (request.getParameter("btn_eliminar")!=null)
           {
               String codigo = request.getParameter("txt_Artista");
               if (con.eliminar(codigo)!=0)
               {
                    response.sendRedirect("formulario.jsp?mensaje="+"Farmaco ha sido Eliminado");
               }
               else
               {
                 response.sendRedirect("formulario.jsp?mensaje="+"Farmaco No eliminado");
               }
           }         
           
           
           /////// MODIFICAR ////           
           if (request.getParameter("btn_modificar")!=null)
           {
                   Album alb = new Album();
                   alb.setArtista(request.getParameter("txt_codigo"));
                   alb.setNombre_album(request.getParameter("txt_farmaco"));
                   alb.setAnho_edicion(request.getParameter("txt_codigo"));
                   alb.setFormato(request.getParameter("txt_farmaco"));
                   alb.setPrecio(Integer.valueOf(request.getParameter("txt_precio"))); 
                   if (con.modificar(alb)!=0)
                   {
                       response.sendRedirect("formulario.jsp?mensaje="+"Farmaco correctamente modificado");
                   }
                   else
                   {
                      response.sendRedirect("formulario.jsp?mensaje="+"Farmaco No Modificado");
                   }
           
           }
           
           //////////////  LISTAR //////////
           if (request.getParameter("btn_listar")!=null)
           {
                 ArrayList<Album>lista = con.listar();
                 request.getSession().setAttribute("listaMedicamento", lista);
                 response.sendRedirect("formulario.jsp?valor_listar="+"true");
           }
           
           ///////////  BUSCAR POR CODIGO //////////
           if (request.getParameter("btn_buscar")!=null)
           {
               Album alb = new Album();
               String codigo = request.getParameter("txt_codigo");
               alb = con.buscar(codigo);
               //Si el codigo tiene caracteres significa que encontro un registro
               if (alb.getArtista().length()>0)
               {
                request.getSession().setAttribute("objetoBuscado", alb);
                 response.sendRedirect("formulario.jsp?valor_buscar="+"true");
               }
               else
               {
                 response.sendRedirect("formulario.jsp?mensaje="+"Medicamento No encontrado");
               }
           }
           
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
        } catch (SQLException ex) {
            Logger.getLogger(Proceso.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (SQLException ex) {
            Logger.getLogger(Proceso.class.getName()).log(Level.SEVERE, null, ex);
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
