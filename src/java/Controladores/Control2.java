/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Modelos.Carrito;
import Modelos.Producto;
import ModelosDAO.ProductoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Usuario
 */
public class Control2 extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            Carrito carrito = new Carrito();
            
            ProductoDAO productoDao = new ProductoDAO();
        List<Producto> listaProductos = new ArrayList<>();

        response.setContentType("text/html;charset=UTF-8");

        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        String idProducto = request.getParameter("idProducto");
            
      if(accion.equals("verCarrito")){
            request.setAttribute("carrito", carrito.getListaProductos());
            request.getRequestDispatcher("carritoCompras.jsp").forward(request, response);
            
        }
        
        if(accion.equals("agregarCarrito")){ 
            HttpSession misession = request.getSession(false);
if (misession != null) {
    // a session exists
     carrito= (Carrito) misession.getAttribute("producto");
     
} else {
    // no session
     misession= (HttpSession) request.getSession();
}
            
            
            
            Producto producto = productoDao.listarProducto(idProducto);
            carrito.getListaProductos().add(producto);
            carrito.setCantidadProductos(carrito.getListaProductos().size());
            misession.setAttribute("producto",carrito);
            request.setAttribute("contador", carrito.getListaProductos().size());
            request.getRequestDispatcher("sesioniniciada.jsp").forward(request, response);
            
        }
        
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("sesioniniciada.jsp").forward(request, response);
        }

        if (menu.equals("PrincipalAdministrador")) {
            request.getRequestDispatcher("sesioniniciadaadministrador.jsp").forward(request, response);
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
