<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style/style.css" type="text/css">
<title>JSP Page</title>
</head>
<body>
	<h1>Monopoli</h1>
	<table border="1">
		<tr>
			<th>
				<h2>Nombre Casilla</h2>
				<p>Precio</p>
			</th>
			<th>
				<h2>Nombre Casilla</h2>

				<p>Precio</p>
			</th>
			<th>
				<h2>Nombre Casilla</h2>

				<p>Precio</p>
			</th>
			<th>
				<h2>Nombre Casilla</h2>

				<p>Precio</p>
			</th>
			<th>
				<h2>Nombre Casilla</h2>

				<p>Precio</p>
			</th>
			<th>
				<h2>Nombre Casilla</h2>

				<p>Precio</p>
			</th>
			<th>
				<h2>Nombre Casilla</h2>

				<p>Precio</p>
			</th>
		</tr>
		<tr>
			<td>
				<h2>Nombre Casilla</h2>

				<p>Precio</p>
			</td>
			<td colspan="5" rowspan="5">
			<div id="dados">
					<jsp:include page="/dados.jsp">
						<jsp:param name="bgColor" value="RED" />
					</jsp:include>
				</div>
	
				<div id="estado">
					<jsp:include page="/estado.jsp">
						<jsp:param name="bgColor" value="BLUE" />
					</jsp:include>
				</div>
			</td>
			<td>
				<h2>Nombre Casilla</h2>

				<p>Precio</p>
			</td>
		</tr>
		<tr>
			<td>
				<h2>Nombre Casilla</h2>

				<p>Precio</p>
			</td>
			<td>
				<h2>Nombre Casilla</h2>

				<p>Precio</p>
			</td>
		</tr>
		<tr>
			<td>
				<h2>Nombre Casilla</h2>

				<p>Precio</p>
			</td>
			<td>
				<h2>Nombre Casilla</h2>

				<p>Precio</p>
			</td>
		</tr>
		<tr>
			<td>
				<h2>Nombre Casilla</h2>

				<p>Precio</p>
			</td>
			<td>
				<h2>Nombre Casilla</h2>
				<p></p>
			</td>
		</tr>
		<tr>
			<td>
				<h2>Nombre Casilla</h2>
				<p></p>
			</td>
			<td>
				<h2>Nombre Casilla</h2>
				<p></p>
			</td>
		</tr>
		<tr>
			<td>
				<h2>Nombre Casilla</h2>
				<p></p>
			</td>
			<td>
				<h2>Nombre Casilla</h2>
				<p></p>
			</td>
			<td>
				<h2>Nombre Casilla</h2>
				<p></p>
			</td>
			<td>
				<h2>Estación Ferrocarriles Catalanes</h2>
				<p></p>
			</td>
			<td>
				<h2>Rosellon</h2>
				<p></p>
			</td>
			<td>
				<h2>Lauria</h2>
				<p></p>
			</td>
			<td>
				<h2>Salida</h2>
				<p></p>
			</td>
		</tr>
	</table>
</body>
</html>
