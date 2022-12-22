package Controladores;

import Modelos.Carrito;
import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Usuario
 */
@WebServlet(name = "Factura", urlPatterns = {"/Factura"})

public class Factura extends HttpServlet {

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
        response.setContentType("application/pdf");
        OutputStream out = response.getOutputStream();
        try {
                Calendar c1 = Calendar.getInstance();
            Calendar c2 = new GregorianCalendar();
            
            int dia = c2.get(Calendar.DAY_OF_MONTH);
            int mes = c2.get(Calendar.MONTH);
            int annio = c2.get(Calendar.YEAR);
            int hora = c2.get(Calendar.HOUR_OF_DAY);
            int minuto = c2.get(Calendar.MINUTE);
            int segundo = c2.get(Calendar.SECOND);
            
            String fechaI1 = annio + "-" + (mes + 1) + "-" + dia;
            
           // out.println("<h6>'"+fechaI1+"'</h6>");
            Carrito carrito = (Carrito) request.getAttribute("carrito");
            Document documento = new Document() {
            };
            
            PdfWriter.getInstance(documento, out);
            documento.open();
            Rectangle one = new Rectangle(700, 400);
            documento.setPageSize(one);
            documento.setMargins(20, 8, 8, 8);

            documento.add(new Paragraph("                                                      FACTURA COMPRA"));
            documento.add(new Paragraph(" NIT. 345.445.334-5 "));
            documento.add(new Paragraph(" EL RINCONSITO "));
            documento.add(new Paragraph(" CODIGO:00"+Math.random()));
            documento.add(new Paragraph(" TELEFONO: 534-32-88 "));
            documento.add(new Paragraph(" DIRECCION: Calle 37# 87-23 Rionegro - el porvenir"));
            documento.add(new Paragraph(" FECHA:"+fechaI1));
            documento.add(new Paragraph(" "));
            documento.add(new Paragraph(" "));
            
            documento.add(new Paragraph());

            //documento.add(new Paragraph("Este es el segundo y tiene una fuente rara", FontFactory.getFont("arial", // fuente
            // 22, // tamaño
            //Font.ITALIC, // estilo
            // BaseColor.CYAN)));             // color
            PdfPTable tabla = new PdfPTable(6);
            tabla.addCell("Item");
            tabla.addCell("Descripcion");
            tabla.addCell("cantidad en stock");
            tabla.addCell("cantidad en carrito");
            tabla.addCell("precio unidad");
            tabla.addCell("total");
            
            

            int total = 0;
            int preciocompra = 0;
            int totalProducto = 0;
         
            for (int i = 0; i <= carrito.getListaProductos().size()-1; i++) {
                tabla.addCell(carrito.getListaProductos().get(i).getNombre());
                tabla.addCell(carrito.getListaProductos().get(i).getDescripcion());
                tabla.addCell(String.valueOf(carrito.getListaProductos().get(i).getCantidad()));
                tabla.addCell(String.valueOf(carrito.getListaProductos().get(i).getCantidadAgregadoAlCarrito()));
                preciocompra = (int) carrito.getListaProductos().get(i).getPrecioCompra();
                String precio = String.valueOf  (preciocompra);
                tabla.addCell(precio);
                totalProducto = ((int) Math.round(carrito.getListaProductos().get(i).getPrecioCompra())) * carrito.getListaProductos().get(i).getCantidadAgregadoAlCarrito();                
                tabla.addCell(String.valueOf(totalProducto));
                total += ((int) Math.round(carrito.getListaProductos().get(i).getPrecioCompra())) * carrito.getListaProductos().get(i).getCantidadAgregadoAlCarrito();                

            }

            documento.add(tabla);
            documento.add(new Paragraph("total: " + total));
            documento.close();

        } catch (Exception e) {
            System.out.print(e);
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
    }
}
