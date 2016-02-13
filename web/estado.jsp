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
	<jsp:useBean id="partida" class="beans.Partida" scope="request" />
	<table border=1>
		<c:forEach items="${partida.jugadores}" var="jugador">
			<tr>
				<td class="player"><h1>Jugador:</h1></td>
				<td class="player">${jugador.nick}</td>
				<td class="player"><img src="${jugador.avatar}" width=50px height=75px></td>
			</tr>
		</c:forEach>
	</table>
</body>
<body>