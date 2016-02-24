<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style/style.css" type="text/css">
<script lang="JavaScript" type="text/javascript" src="js/scripts.js"></script>
<title>Estado</title>
</head>
<body>
	<form action="GameController" method="post">
		<jsp:useBean id="partida" class="beans.Partida" scope="request" />
		<table border=1>
			<c:forEach items="${partida.jugadores}" var="jugador">
				<tr>
					<td class="player"><h3>Jugador:</h3>
						<br>
					<b>${jugador.nick}<br>${jugador.dinero}</b></td>
					<td class="player"><img src="${jugador.avatar}" width=50px
						height=75px></td>
					<td class="player"><input type="submit" value="Comprar"
						name="comprar" ${jugador.activaComprar}><br> <input
						type="submit" value="Edificar" name="edificar"
						${jugador.activaEdificar}></td>
					<td class="player">${jugador.infoPlayer}</td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
<body>
