package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Modelos.Carrito;
import java.util.GregorianCalendar;
import java.util.Calendar;

public final class carritoCompras_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <script src=\"https://kit.fontawesome.com/fec6c7f184.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style2.css\">\n");
      out.write("        <title>Carrito compras</title>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">        \n");
      out.write("    </head>\n");
      out.write("    <body>       \n");
      out.write("            <header>\n");
      out.write("                <div>\n");
      out.write("                    \n");
      out.write("                    <a class=\"logo\" href=\"sesioniniciada.jsp\">El Rinconcito</a>\n");
      out.write("                </div>\n");
      out.write("              \n");
      out.write("            </header>\n");
      out.write("        <div class=\"container mt-4\">\n");
      out.write("                \n");
      out.write("            ");
 
            Calendar c1 = Calendar.getInstance();
            Calendar c2 = new GregorianCalendar();
            
            int dia = c2.get(Calendar.DAY_OF_MONTH);
            int mes = c2.get(Calendar.MONTH);
            int annio = c2.get(Calendar.YEAR);
            int hora = c2.get(Calendar.HOUR_OF_DAY);
            int minuto = c2.get(Calendar.MINUTE);
            int segundo = c2.get(Calendar.SECOND);
            
            String fechaI1 = annio + "-" + (mes + 1) + "-" + dia;
            
            out.println("<h4>fecha: "+fechaI1+"</h4>");

        
      out.write("\n");
      out.write("            \n");
      out.write("            <div class=\"row\" class=\"text-center\">  \n");
      out.write("                \n");
      out.write("                <h1 class=\"th\" style='text-align:center'>CARRITO COMPRAS</h1>\n");
      out.write("                <div class=\"col-lg-8\">                 \n");
      out.write("                    <table border=\"8\" class=\"table\">\n");
      out.write("                        <thead class=\"thead-light\">\n");
      out.write("                            <tr class=\"text-center\">\n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                                <th>Item</th>                               \n");
      out.write("                                <th>Articulo</th>\n");
      out.write("                                <th>Descripcion</th>\n");
      out.write("                                <th>Cantidad</th> \n");
      out.write("                                <th>Total</th>\n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("                            ");
 Carrito carrito=(Carrito) request.getAttribute("carrito");
                            double total=0;
                            for(int i=0;i<carrito.getListaProductos().size();i++){
                          out.println("<tr>"
                                  + "<td style='text-align:center'>"+carrito.getListaProductos().get(i).getNombre()+ "</td>"
                                  + "<td style='text-align:center'><img src= 'img/"+ carrito.getListaProductos().get(i).getPresentacion() +"  ' class=\"imagen-carrito2\"></td>"
                                  + "<td style='text-align:center'>"+carrito.getListaProductos().get(i).getDescripcion()+ "</td>"                                                         
                                  + "<td style='text-align:center'> <select><option>1</option><option>2</option><option>3</option></select> </td>"
                                  + "<td style='text-align:center'>"+carrito.getListaProductos().get(i).getPrecioCompra()+  "</td>"                  
                                  + 
                                          
                                  
                                          "</tr>"); 
                                  total += carrito.getListaProductos().get(i).getPrecioCompra();
                          
                         ;}
                            
                                     

                             
      out.write("\n");
      out.write("                         \n");
      out.write("                         \n");
      out.write("                        \n");
      out.write("                                \n");
      out.write("                            \n");
      out.write("                        </tbody>\n");
      out.write("                    </table>                    \n");
      out.write("                </div>\n");
      out.write("                 <div class=\"col-lg-3\">                  \n");
      out.write("                    <div class=\"card\">\n");
      out.write("                        <div class=\"card-header\">\n");
      out.write("                            Generar Compra\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                            <label>Subtotal:</label>\n");
      out.write("                            ");
out.println("<a class='form-control text-center'><i class='fas fa-dollar-sign h5'> "+total+"</i></a>");
      out.write("\n");
      out.write("                            <label>Total a Pagar:</label>\n");
      out.write("                            ");
out.println("<a class='form-control text-center'><i class='fas fa-dollar-sign h4' primary> "+total+"</i></a>");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card-footer\">\n");
      out.write("                            \n");
      out.write("                            <a href=\"#\" data-toggle=\"modal\" data-target=\"#myModalPago\" class=\"btn btn-info btn-block form-control text-center\">Realizar Pago</a>\n");
      out.write("                            \n");
      out.write("                            <form method=\"POST\" action=\"Controlador\">                            \n");
      out.write("                \n");
      out.write("                                <button type=\"submit\" id=\"PresentacionPDF\" name=\"accion\" value=\"realizarPago\" class=\"btn btn-danger\" >Factura compra pdf </i></button>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div> \n");
      out.write("            </div>          \n");
      out.write("        </div>\n");
      out.write("        <!-- Modal Iniciar Session o Registrarse -->\n");
      out.write("      \n");
      out.write("        <!-- Modal de Pago -->\n");
      out.write("        <div class=\"modal fade\" id=\"myModalPago\" tabindex=\"-1\" role=\"dialog\">\n");
      out.write("            <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">         \n");
      out.write("                <div class=\"modal-content\">                   \n");
      out.write("                    <div class=\"modal-header text-center\"> \n");
      out.write("                        <label><i class=\"fa-dollar-sign\">PAGO REALIZADO</i></label>\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" >\n");
      out.write("                            <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                        </button>  \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.4.1.js\" integrity=\"sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>\n");
      out.write("        <script src=\"js/funciones.js\" type=\"text/javascript\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
