<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <form name="formseleccionidcliente" action="informesjsp/ventasporfechas.jsp">
                <input type="date" name="parametro1" />
                <input type="date" name="parametro2">
                <input type="submit" value="Generar PDF" />                
            </form>
        </center>
    </body>
</html>
