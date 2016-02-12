<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page isErrorPage="true" %> <%-- pagina de tratamiento de errores --%>
       Se ha producido un error <i><%= exception%></i>. 
        <pre>
            <%@ page import="java.io.*" %>
            <% exception.printStackTrace(new PrintWriter(out));%>
        </pre>
    </body>
</html>
