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
<body align='center'>
	<form action="GameController" method="post">
		<jsp:useBean id="partida" class="beans.Partida" scope="request" />
		<jsp:useBean id="casillaNormal" class="beans.CasillaNormal"
			scope="request" />
		<table border=1>
			<c:forEach items="${partida.jugadores}" var="jugador">
				<tr>
					<td class="player"><h3>Jugador:</h3> <br> <b>${jugador.nick}<br>${jugador.dinero}</b><br>
						Posición: ${jugador.newPosicion}<br>
					<c:choose>
							<c:when test="${jugador.turnoIcon == 1}">
								<img src="images/turno.png" width=25px height=25px>
							</c:when>
							<c:otherwise>
								<img src="images/noturno.png" width=25px height=25px>
							</c:otherwise>
						</c:choose></td>
					<td class="player"><img src="${jugador.avatar}" width=50px
						height=75px></td>
					<td class="player"><input type="submit" value="Comprar"
						name="comprar" ${jugador.activaComprar}><br> <input
						type="submit" value="Edificar" name="edificar"
						${jugador.activaEdificar}></td>
					<td class="player">${jugador.infoPlayer}</td>
					<td><b>Casillas</b> <c:forEach
							items="${jugador.casillaNormales}" var="casillaNormal">
							<p>${casillaNormal.numero}</p>
						</c:forEach></td>
				</tr>
			</c:forEach>
		</table>
		<div>
			<h2>Impuestos Recaudados ${partida.impuesto}</h2>
		</div>
	</form>
</body>
<body>