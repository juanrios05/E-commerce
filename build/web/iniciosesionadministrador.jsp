<%-- 
    Document   : iniciosesionadministrador
    Created on : 25/05/2021, 08:44:52 PM
    Author     : juanb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/fec6c7f184.js" crossorigin="anonymous"></script>        
        <link rel="stylesheet" href="css/style2.css">
        <title>Inicio Sesión</title>
    </head>
    <body>
        <header>
            <div>
                <a class="logo" href="index.jsp">El Rinconcito</a>
            </div>            
        </header>
        <main>
            <div class="form-container">
                <form method="POST" action="ValidarAdministrador">
                    <ul class="form-items">
                        <li>
                            <h1>Iniciar Sesión</h1>
                        </li>
                        <li>
                            <input type="email" placeholder="Correo..." name="correo" id="correo" />
                        </li>
                        <li>
                            <input type="password" placeholder="Contraseña..." name="clave" id="clave" />
                        </li>                        
                        <li>
                            <button type="submit" class="primary" value="IngresarAdministrador" name="accion" >Iniciar Sesión</button>
                        </li>                         
                    </ul>
                </form> 
            </div>  
        </main>
        <footer>All Rights Reserved @2021</footer>
    </body>
</html>
