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
                            <a href="informeclientes.jsp" target="contenedorregistros">Mejores Clientes</a>                            
                        </div>
                    </div>
                    <span><b>|</b></span>
                    <div class="dropdown">
                        <span>Proveedores</span>
                        <div class="dropdown-content">
                            <p>Mejor Proveedor</p>                                                        
                        </div>                        
                    </div>
                    <span><b>|</b></span>
                    <div class="dropdown">
                        <span>Productos</span>
                        <div class="dropdown-content">
                            <p>Mejor Producto</p>
                        </div>                        
                    </div>                    
                    <span><b>|</b></span>
                    <div class="dropdown">
                        <span>Ventas</span>
                        <div class="dropdown-content">
                            <p>Mayor Venta</p>                            

                        </div>                        
                    </div>  
                    <span><b>|</b></span>
                    <div class="dropdown">
                        <span>Compras</span>
                        <div class="dropdown-content">
                            <p>Menor Venta</p>                                                        
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
