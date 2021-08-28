<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/fec6c7f184.js" crossorigin="anonymous"></script>        
        <link rel="stylesheet" href="css/style2.css">
        <title>Informes</title>
    </head>
    <body>
        <div class="grid-container">
            <header>
                <div>
                    <a class="logo" href="sesioniniciadaadministrador.jsp">El Rinconsito</a>                    
                </div>                  
            </header>               
            <main>
                <div class="menu-informes">
                    <div class="dropdown">
                        <span>Clientes</span>
                        <div class="dropdown-content">
                            <a href="informesjsp/listadoclientes.jsp" target="contenedorregistros">Listado Clientes</a>   
                            <a href="informesjsp/mejoresclientestotalventas.jsp" target="contenedorregistros">Mejores Clientes Ventas</a>
                            <a href="informesjsp/mejoresclientescantprod.jsp" target="contenedorregistros">Mejores Clientes Productos</a>
                            <a href="seleccionidclientereporte.jsp" target="contenedorregistros">Ventas por Cliente</a>                            
                        </div>
                    </div>
                    <span><b>|</b></span>
                    <div class="dropdown">
                        <span>Proveedores</span>
                        <div class="dropdown-content">
                            <a href="informesjsp/proveedormasventas.jsp" target="contenedorregistros">Mejor Proveedor Total</a>
                            <a href="informesjsp/proveedormasventascant.jsp" target="contenedorregistros">Mejor Proveedor Cantidad</a>                            
                        </div>                        
                    </div>
                    <span><b>|</b></span>
                    <div class="dropdown">
                        <span>Productos</span>
                        <div class="dropdown-content">
                            <a href="informesjsp/productomasvendido.jsp" target="contenedorregistros">Producto Mayor Precio Vendido</a>
                            <a href="informesjsp/productomasvendidocant.jsp" target="contenedorregistros">Producto Mayor Cantidad Vendida</a>
                            <a href="seleccionidproducto.jsp" target="contenedorregistros">Ventas Por Producto</a>
                            <a href="ingresofechasprod.jsp" target="contenedorregistros">Ventas en Rangos de Fechas</a>
                            <a href="informesjsp/marcasmasvendidas.jsp" target="contenedorregistros">Marca Mas Vendida Total</a>
                            <a href="informesjsp/marcasmasvendidascant.jsp" target="contenedorregistros">Marca Mas Vendida Cantidad</a>
                        </div>                        
                    </div>                    
                    <span><b>|</b></span>
                    <div class="dropdown">
                        <span>Ventas</span>
                        <div class="dropdown-content">
                            <a href="informesjsp/mayorventa.jsp" target="contenedorregistros">Mayor Venta</a>
                            <a href="ingresofechas.jsp" target="contenedorregistros">Ventas en Rangos de Fechas</a>
                        </div>                        
                    </div>                                          
                </div>
                <div>
                    <iframe name="contenedorregistros" style="height: 600px; width: 100%;"></iframe>
                </div>
            </main>
        </div>
    </body>
</html>
