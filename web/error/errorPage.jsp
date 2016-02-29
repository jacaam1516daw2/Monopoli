<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Monopoli Error</title>
    </head>
    <body>
        <%@ page isErrorPage="true" %> <%-- pagina de tratamiento de errores --%>
       Unos goblins nos han robado el cobre, se ha producido un error <i><%= exception%></i>. 
        <pre>
            <%@ page import="java.io.*" %>
            <% exception.printStackTrace(new PrintWriter(out));%>
        </pre>
    </body>
</html>
