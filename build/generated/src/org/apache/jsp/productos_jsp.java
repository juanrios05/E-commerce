package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class productos_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <script src=\"https://kit.fontawesome.com/fec6c7f184.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style2.css\">\n");
      out.write("        <title>Productos</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"grid-container\">\n");
      out.write("            <header>\n");
      out.write("                <div>\n");
      out.write("                    <a class=\"logo\" href=\"/#/\">El Rinconcito</a>\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <a href=\"Controlador?menu=AgregarNuevoDato\">Agregar Marca, Categoría y Subcategoria</a>\n");
      out.write("                </div>                \n");
      out.write("            </header>\n");
      out.write("            <main>\n");
      out.write("                <div class=\"form-container\">\n");
      out.write("                    <div class=\"fomulario-producto\">\n");
      out.write("                        <form class=\"form-producto\" method=\"post\" action=\"Controlador?menu=Productos\">\n");
      out.write("                            <ul class=\"form-items-producto\">\n");
      out.write("                                <li>\n");
      out.write("                                    <h2>Producto</h2>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"text\" placeholder=\"Id Producto...\" name=\"idproducto\" id=\"idproducto\" />\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"text\" placeholder=\"Nombre...\" name=\"nombreproducto\" id=\"nombreproducto\" />\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"text\" placeholder=\"Descripcion...\" name=\"descripcionproducto\" id=\"descripcionproducto\" />\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"file\" placeholder=\"Presentacion...\" name=\"presentacionproducto\" id=\"presentacionproducto\" />\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <select name=\"marcaproducto\">\n");
      out.write("                                        <option>Opciones marca</option>\n");
      out.write("                                    </select>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"date\" placeholder=\"Fecha Vencimineto...\" name=\"vencimientoproducto\" id=\"vencimientoproducto\" />\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"number\" placeholder=\"Precio Compra...\" name=\"preciocompraproducto\" id=\"preciocompraproducto\" />\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"number\" placeholder=\"Precio Venta...\" name=\"precioventaproducto\" id=\"precioventaproducto\" />\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <input type=\"number\" placeholder=\"Cantidad en Stock...\" name=\"cantidadproducto\" id=\"cantidadproducto\" />\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <select name=\"subcategoriaproducto\">\n");
      out.write("                                        <option>Opciones Subcategoría</option>\n");
      out.write("                                    </select>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <button type=\"submit\" value=\"Agregar\" name=\"accion\">Agregar</button>\n");
      out.write("                                    <button type=\"submit\" value=\"Actualizar\" name=\"accion\">Actualizar</button>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"tabla-producto\">\n");
      out.write("                        <table class=\"tabla\">\n");
      out.write("                            <thead class=\"tabla-cabecera\">\n");
      out.write("                                <tr>\n");
      out.write("                                    <th>id</th>\n");
      out.write("                                    <th>Nombre</th>\n");
      out.write("                                    <th>Descripción</th>\n");
      out.write("                                    <th>Presentación</th>\n");
      out.write("                                    <th>Marca</th>\n");
      out.write("                                    <th>Fecha Vencimiento</th>\n");
      out.write("                                    <th>Precio Compra</th>\n");
      out.write("                                    <th>Precio Venta</th>\n");
      out.write("                                    <th>Stock</th>\n");
      out.write("                                    <th>Subcategoría</th>\n");
      out.write("                                    <th>Accion</th>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                                ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("        </div>\n");
      out.write("    </main>\n");
      out.write("</div>\n");
      out.write("</body>\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("producto");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${productos}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                    <tr>\n");
          out.write("                                        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${producto.getIdProducto()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("                                        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${producto.getNombre()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("                                        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${producto.getDescripcion()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("                                        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${producto.getPresentacion()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("                                        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${producto.getNombreMarca()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("                                        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${producto.getFechaVencimiento()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("                                        <th>$");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${producto.getPrecioCompra()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("                                        <th>$");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${producto.getPrecioVenta()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("                                        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${producto.getCantidad()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("                                        <th>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${producto.getNombreSubcategoria()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</th>\n");
          out.write("                                        <th>\n");
          out.write("                                            <button type=\"submit\" value=\"Editar\" name=\"accion\">Editar</button>\n");
          out.write("                                            <button type=\"submit\" value=\"Eliminar\" name=\"accion\">Eliminar</button>\n");
          out.write("                                        </th>\n");
          out.write("                                    </tr>                                                                    \n");
          out.write("                                ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
