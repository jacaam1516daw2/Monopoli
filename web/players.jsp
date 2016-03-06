<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style/style.css" type="text/css">
<script lang="JavaScript" type="text/javascript" src="js/scripts.js"></script>
<title>Bienvenido al Monopoli</title>
</head>
<body onload='preview();'>
    <div align="center">
	<form action="GameController" method="post">
		<table>
			<tr>
				<td>Jugador:</td>
				<td><input type="text" name="nick" /></td>
			</tr>
			<tr>
				<td>Avatar:</td>
				<td><select id="player" onchange='preview();' name="avatar">
						<option class="p1">1</option>
						<option class="p2">2</option>
						<option class="p3">3</option>
						<option class="p4">4</option>
				</select></td>
				<td>
					<div id="pl"></div>
				</td>
			</tr>			
		</table>
		<input type="submit" value="Nuevo Jugador" name="alta"> <input
			type="submit" value="Jugar" name="jugar">
	</form>
    </div>
</body>
</html>
