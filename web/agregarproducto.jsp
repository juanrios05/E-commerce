<%-- 
    Document   : agregarproducto
    Created on : 14/07/2021, 04:37:20 PM
    Author     : juanb
--%>

<%@page import="java.util.List"%>
<%@page import="Modelos.Producto"%>
<%@page import="ModelosDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/fec6c7f184.js" crossorigin="anonymous"></script>
        <script src="js/imagenproducto.js" type="text/javascript"></script>
        <link rel="stylesheet" href="css/style2.css">
        <title>Productos</title>
    </head>
    <body>
        <div class="grid-container">
            <header>
                <div>
                    <a class="logo" href="#">El Rinconcito</a>
                </div>            
            </header>            
            <main>
                <div class="form-container">
                    <div class="fomulario-producto">
                        <form action="Administrador" class="form-producto" id="ingresoproducto">
                            <ul class="form-items-producto">
                                <li>
                                    <h2>Agregar Producto</h2>
                                </li>
                                <li>
                                    <input type="text" placeholder="Id Producto..." name="idproducto" id="idproducto" />
                                </li>                                
                                <li>
                                    <input type="text" placeholder="Nombre..." name="nombreproducto" id="nombreproducto" />
                                </li>
                                <li>
                                    <input type="text" placeholder="Descripcion..." name="descripcionproducto" id="descripcionproducto" />
                                </li>
                                <li>
                                    <input type="file" accept="image/*" onchange="ingresarImagen(this.files[0].name)" placeholder="Presentacion..." name="presentacionproducto" id="presentacionproductoId" />
                                    <input type="hidden" placeholder="Presentacion..." name="nombreimagenproducto" id="nombreimagenId" />
                                </li>
                                <li>
                                    <%
                                        ProductoDAO daoMarca = new ProductoDAO();
                                        List<Producto> marcas = daoMarca.listarMarcas();
                                    %> 
                                    <select name="marcaproducto">
                                        <%
                                            for (Producto marca : marcas) {
                                        %>
                                        <option value="<%= marca.getIdMarca()%>"><%= marca.getNombreMarca()%></option>                                                                                                                                   
                                        <%}%>
                                    </select>
                                </li>
                                <li>
                                    <input type="date" placeholder="Fecha Vencimineto..." name="vencimientoproducto" id="vencimientoproducto" />
                                </li>
                                <li>
                                    <input type="text" placeholder="Precio Compra..." name="preciocompraproducto" id="preciocompraproducto" />
                                </li>
                                <li>
                                    <input type="text" placeholder="Precio Venta..." name="precioventaproducto" id="precioventaproducto" />
                                </li>
                                <li>
                                    <input type="text" placeholder="Cantidad en Stock..." name="cantidadproducto" id="cantidadproducto" />
                                </li>
                                <li>  
                                    <%
                                        ProductoDAO dao = new ProductoDAO();
                                        List<Producto> subcategorias = dao.listarSubcategorias();
                                    %>
                                    <select name="subcategoriaproducto" >
                                        <%
                                            for (Producto subcategoria : subcategorias) {
                                        %>
                                        <option value="<%= subcategoria.getIdSubcategoria()%>"><%= subcategoria.getNombreSubcategoria()%></option>
                                        <%}%>
                                    </select>
                                </li>
                                <li>
                                    <input type="submit" value="Agregar" name="accion">                                    
                                </li>
                                <li>
                                    <a href="Administrador?accion=listarProducto">Regresar</a>
                                </li>
                            </ul>
                        </form>
                        <a href="Administrador?accion=nuevamarca">Agregar nueva marca</a>
                        <a href="Administrador?accion=nuevasubcategoria">Agregar nueva subcategoria</a>
                    </div>                    
                </div>
        </div>
    </main>
</div>
</body>
</html>
