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

	<jsp:useBean id="partida" class="beans.Partida" scope="request"/>
	<img src="images/${partida.dado}.png" width=100px height=100px>
	<br><br><br>
	<form action="GameController" method="post">
		<input type="submit" value="Tirar" name="tirar">
	</form>
</body>
</html>