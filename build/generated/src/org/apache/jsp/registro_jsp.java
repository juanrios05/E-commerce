package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registro_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-1.10.2.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/controlregistros.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style2.css\">          \n");
      out.write("        <title>Registro</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <div>\n");
      out.write("                <a class=\"logo\" href=\"index.jsp\">El Rinconcito</a>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <main>\n");
      out.write("            <div class=\"form-container\">\n");
      out.write("                <form method=\"post\" action=\"Controlador?menu=Registro\" id=\"formregistro\">\n");
      out.write("                    <ul class=\"form-items\">\n");
      out.write("                        <li>\n");
      out.write("                            <h1>Registro</h1>\n");
      out.write("                        </li>\n");
      out.write("                        <li>     \n");
      out.write("                            <input type=\"text\" placeholder=\"Cedula...\" name=\"cedula\" id=\"cedula\" required />\n");
      out.write("                        </li>\n");
      out.write("                        <li>     \n");
      out.write("                            <input type=\"text\" placeholder=\"Nombres...\" name=\"nombres\" id=\"nombres\" required />\n");
      out.write("                        </li>\n");
      out.write("                        <li>                            \n");
      out.write("                            <input type=\"text\" placeholder=\"Apellidos...\" name=\"apellidos\" id=\"apellidos\" required />\n");
      out.write("                        </li>\n");
      out.write("                        <li>                            \n");
      out.write("                            <input type=\"text\" placeholder=\"Telefono...\" name=\"telefono\" id=\"telefono\" required />\n");
      out.write("                        </li>\n");
      out.write("                        <li>                            \n");
      out.write("                            <input type=\"text\" placeholder=\"Direccion...\" name=\"direccion\" id=\"direccion\" required />\n");
      out.write("                        </li>\n");
      out.write("                        <li>                            \n");
      out.write("                            <input type=\"email\" placeholder=\"Correo...\" name=\"correo\" id=\"correo\" required />\n");
      out.write("                        </li>\n");
      out.write("                        <li> \n");
      out.write("                            <input type=\"password\" placeholder=\"Contraseña...\" name=\"clave\" id=\"clave\" required />\n");
      out.write("                        </li>\n");
      out.write("                        <li>                            \n");
      out.write("                            <input type=\"password\" placeholder=\"Confirmar Contraseña...\" name=\"confirmarClave\" id=\"confirmarClave\" required />\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <button type=\"submit\" value=\"Registrarse\" name=\"accion\" id=\"btnregistrarse\">Registrarse</button>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <div>\n");
      out.write("                                ¿Ya tienes una cuenta?\n");
      out.write("                                <a href=\"iniciosesion.jsp\">Iniciar Sesión</a>\n");
      out.write("                            </div>  \n");
      out.write("                        </li>  \n");
      out.write("                    </ul>\n");
      out.write("                </form> \n");
      out.write("            </div>\n");
      out.write("        </main>\n");
      out.write("        <footer>All Rights Reserved @2021</footer>\n");
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
