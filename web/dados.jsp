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
	<img src="images/${Dice.valor}.png">
	<form action="GameController" method="post">
		<input type="submit" value="Tirar" name="tirar">
	</form>
</body>
</html>