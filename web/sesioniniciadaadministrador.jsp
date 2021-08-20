<%-- 
    Document   : sesioniniciadaadministrador
    Created on : 25/05/2021, 06:44:04 PM
    Author     : juanb
--%>

<%@page import="Controladores.ControladorServlet"%>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ControladorServlet cp = new Controladores.ControladorServlet();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/fec6c7f184.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/style2.css">
        <script src="js/menudesplegable.js" type="text/javascript"></script>
        <title>Administrador</title>
    </head>
    <body>
        <div class="grid-container">
            <header>
                <div>
                    <a class="logo" href="/#/">El Rinconcito</a>
                </div>
                <div>
                    <a href="Administrador?accion=listarProducto">Productos</a>
                </div>
                <div>
                    <a href="Administrador?accion=listarProovedor">Proveedores</a>
                </div>
                <div>
                    <a href="Administrador?accion=listarVentas">Ventas</a>
                </div> 
                <div class="dropdown">
                    <button onclick="myFunction()" class="drop-button">
                        ${usuario.getNombres()}
                    </button>
                    <div id="myDropdown" class="dropdown-content">
                        <a href="#"><i class="icono-index fa fa-user-cog"></i></a>
                        <a href="#">${usuario.getCedula()}</a>
                        <a href="#">${usuario.getCorreo()}</a>  
                        <div class="dropdown-divider"></div>
                        <form method="post" action="Validar">
                            <button class="danger" type="submit" name="accion" value="Salir">Cerrar Sesion</button>
                        </form>                        
                    </div>
                </div>
            </header>
            <main>
                <div>
                    <ul class="productos">
                        <%= cp.obtenerProductos()%>
                    </ul>
                </div>
            </main>
            <footer>All Rights Reserved @2021</footer>
        </div>
    </body>
</html>
