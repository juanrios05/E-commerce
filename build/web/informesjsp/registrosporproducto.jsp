<%@page import="net.sf.jasperreports.engine.JasperRunManager" %>
<%@page import="net.sf.jasperreports.*"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%-- Conexion a Base de Datos, ubicación de archivos necesarios y parametros necesarios --%>
        
        <%
            
            Connection cn;
                Class.forName("com.mysql.jdbc.Driver");
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/elrinconsito2", "root", "");
	
            File reportFile = new File(application.getRealPath("Informes/registrosporproducto.jasper"));
            Map parameters = new HashMap();
            
            String valor = request.getParameter("parametro");
            parameters.put("idproducto",new String(valor));                                   
            
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);            
            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);
            ServletOutputStream outputStream = response.getOutputStream();
            outputStream.write(bytes, 0, bytes.length);
            outputStream.flush();
            outputStream.close();

        %>

    </body>
</html>

