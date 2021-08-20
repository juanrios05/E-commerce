<%-- 
    Document   : productos
    Created on : 9/06/2021, 04:48:17 PM
    Author     : juanb
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ModelosDAO.ProductoDAO"%>
<%@page import="Modelos.Producto"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <a class="logo" href="Controlador?menu=PrincipalAdministrador">El Rinconsito</a>
                </div>            
            </header>            
            <main>
                <div class="form-container">                    
                    <div class="tabla-producto">
                        <a href="Controlador?menu=PrincipalAdministrador">Regresar</a>
                        <h1>Productos</h1>
                        <a href="Administrador?accion=agregarProducto">Agregar Producto</a>                       
                        <table border="1">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Nombre</th>
                                    <th>Descripcion</th>
                                    <th>Presentacion</th>
                                    <th>Marca</th>
                                    <th>Fecha Vencimiento</th>
                                    <th>Precio Compra</th>
                                    <th>Precio Venta</th>
                                    <th>Stock</th>
                                    <th>Subcategoria</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <%
                                ProductoDAO dao = new ProductoDAO();
                                List<Producto> list = dao.listarProductos();
                                Iterator<Producto> iter = list.iterator();
                                Producto prod = null;
                                while (iter.hasNext()) {
                                    prod = iter.next();

                            %>
                            <tbody>
                                <tr>
                                    <td><%= prod.getIdProducto()%></td>
                                    <td><%= prod.getNombre()%></td>
                                    <td><%= prod.getDescripcion()%></td>
                                    <td><img src="img/<%= prod.getPresentacion()%>" width="75px" ></td>
                                    <td><%= prod.getNombreMarca()%></td>
                                    <td><%= prod.getFechaVencimiento()%></td>
                                    <td><%= prod.getPrecioCompra()%></td>
                                    <td><%= prod.getPrecioVenta()%></td>
                                    <td><%= prod.getCantidad()%></td>
                                    <td><%= prod.getNombreSubcategoria()%></td>
                                    <td>
                                        <a href="Administrador?accion=editarProducto&idProducto=<%= prod.getIdProducto()%>">Editar</a>
                                        <a href="Administrador?accion=eliminarProducto&idProducto=<%= prod.getIdProducto()%>">Borrar</a>
                                    </td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </div>
                </div>
        </div>
    </main>
</div>
</body>
</html>
