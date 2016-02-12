<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <base href="${pageContext.request.contextPath}">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style/style.css" type="text/css">
        <title>Monopoli</title>
    </head>
    <body>
        <%-- redireccion en caso de error --%>
        <%@ page errorPage="/error/errorPage.jsp" %>
        
            <div id="tablero" >
                fueratarjeta
                <jsp:include page="/tablero.jsp" >
                    <jsp:param name="bgColor" value="YELLOW" />
                </jsp:include >
            </div>
            <div id="dados" >
                fueradados
                <jsp:include page="/dados.jsp" >
                    <jsp:param name="bgColor" value="RED" />
                </jsp:include >
            </div>
            <div id="estado">
                fueraDIOS
                <jsp:include page="/estado.jsp" >
                    <jsp:param name="bgColor" value="BLUE" />
                </jsp:include >
            </div>
    </body>
</html>