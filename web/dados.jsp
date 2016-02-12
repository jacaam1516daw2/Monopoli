<%@page import="beans.Dice"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style/style.css" type="text/css">
        <title>Dado</title>
    </head>
    <body>
        
       <jsp:useBean id="Dice" class="beans.Dice" />
        <OL> <LI>Valor:
    <I><jsp:getProperty name="Dice" property="valor" /></I>
            <br>
       <img src="images/${Dice.valor}.png">
            <br>
       <form>
        <input type="submit" value="Tirar">
       </form>
    </body>
</html>