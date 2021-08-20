<%-- 
    Document   : informacionproducto
    Created on : 31/05/2021, 08:38:00 PM
    Author     : juanb
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="contenido">
            <div class="regresar">
                <a href="/#/" title="Regresar"><i class="fa fa-reply"></i></a>
            </div>
            <div class="detalles">
                <div class="detalle-imagen">
                    <img src="Imagen" alt="Nombre" />
                </div>
                <div class="detalle-informacion">
                    <ul>
                        <li>
                            <h1>Nombre</h1>
                        </li>                        
                        <li>
                            Precio: <strong>$Precio</strong>
                        </li>
                        <li>
                            Descripcion:
                            <div>
                                descripcion
                            </div>
                        </li> 
                    </ul>
                </div>
                <div class="envio-carrito">
                    <ul>
                        <li>
                            Precio: $Precio
                        </li>
                        <li>
                            Estado: 
                            Cantidad
                        </li>
                        <li>
                            <button id="añadir-boton" class="fw primary">Añadir al carrito</div>
                        </li>
                    </ul> 
                </div>
            </div>
        </div>
    </body>
</html>
