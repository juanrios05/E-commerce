package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class iniciosesion_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <script src=\"https://kit.fontawesome.com/fec6c7f184.js\" crossorigin=\"anonymous\"></script>        \n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style2.css\">\n");
      out.write("        <title>Inicio Sesión</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <div>\n");
      out.write("                <a class=\"logo\" href=\"index.jsp\">El Rinconcito</a>\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("                <a href=\"iniciosesionadministrador.jsp\" title=\"Administrador\"><i class=\"icono-index fas fa-user-cog\"></i></a>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <main>\n");
      out.write("            <div class=\"form-container\">\n");
      out.write("                <form method=\"POST\" action=\"Validar\">\n");
      out.write("                    <ul class=\"form-items\">\n");
      out.write("                        <li>\n");
      out.write("                            <h1>Iniciar Sesión</h1>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <input type=\"email\" placeholder=\"Correo...\" name=\"correo\" id=\"correo\" />\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <input type=\"password\" placeholder=\"Contraseña...\" name=\"clave\" id=\"clave\" />\n");
      out.write("                        </li>\n");
      out.write("                        <li>                            \n");
      out.write("                            <select name=\"perfilusuario\" id=\"perfilusuario\">\n");
      out.write("                                <option value=\"Usuario\">Usuario</option>\n");
      out.write("                                <option value=\"Administrador\">Administrador</option>                                \n");
      out.write("                            </select>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <button type=\"submit\" class=\"primary\" value=\"Ingresar\" name=\"accion\" >Iniciar Sesión</button>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <div>\n");
      out.write("                                ¿Aún no tienes cuenta?\n");
      out.write("                                <a href=\"registro.jsp\">Crear cuenta</a>\n");
      out.write("                            </div>  \n");
      out.write("                        </li>  \n");
      out.write("                    </ul>\n");
      out.write("                </form> \n");
      out.write("            </div>  \n");
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
