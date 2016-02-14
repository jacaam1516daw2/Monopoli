<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style/style.css" type="text/css">
<title>Monopoli</title>
</head>
<body>
	<jsp:useBean id="partida" class="beans.Partida" scope="request" />
	<%-- redireccion en caso de error --%>
	<%@ page errorPage="/error/errorPage.jsp"%>
	<table border="1">
		<tr>
			<th><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 13}">
						<div class="posicion" id="pos13">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <img class="special" src="images/parking.png"></th>
			<th><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 14}">
						<div class="posicion" id="pos14">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>
					Plaza <br> Urquinaona
				</h2>
				<p>70&euro;</p></th>
			<th><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 15}">
						<div class="posicion" id="pos15">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>
					Ronda <br> Sant Pedro
				</h2>
				<p>75&euro;</p></th>
			<th><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 16}">
						<div class="posicion" id="pos16">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>
					Estación <br> De <br> Francia
				</h2>
				<p>60&euro;</p></th>
			<th><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 17}">
						<div class="posicion" id="pos17">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>
					Vía <br> Layetana
				</h2>
				<p>80&euro;</p></th>
			<th><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 18}">
						<div class="posicion" id="pos18">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>
					Plaza <br> Catalunya
				</h2>
				<p>90&euro;</p></th>
			<th><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 19}">
						<div class="posicion" id="pos19">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach><img class="special" src="images/policia.png"></th>
		</tr>
		<tr>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 12}">
						<div class="posicion" id="pos12">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>
					Calle <br> Aragón
				</h2>
				<p>65&euro;</p></td>
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
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 20}">
						<div class="posicion" id="pos20">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>
					Calle <br> Pelayo
				</h2>
				<p>90&euro;</p></td>
		</tr>
		<tr>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 11}">
						<div class="posicion" id="pos11">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>
					Paseo de <br> Sant Juan
				</h2>
				<p>60&euro;</p></td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 21}">
						<div class="posicion" id="pos21">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>
					Vía <br> Augusta
				</h2>

				<p>100&euro;</p></td>
		</tr>
		<tr>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 10}">
						<div class="posicion" id="pos10">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>
					Estación <br> Paseo de <br> Gracia
				</h2>
				<p>60&euro;</p></td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 22}">
						<div class="posicion" id="pos22">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>
					Estación <br> de <br> Sants
				</h2>

				<p>60&euro;</p></td>
		</tr>
		<tr>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 9}">
						<div class="posicion" id="pos9">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>
					Calle <br> Aribau
				</h2>
				<p>60&euro;</p></td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 23}">
						<div class="posicion" id="pos23">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>
					Calle <br> Balmes
				</h2>
				<p>110&euro;</p></td>
		</tr>
		<tr>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 8}">
						<div class="posicion" id="pos8">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>
					Calle <br> Muntaner
				</h2><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
				<p>55&euro;</p></td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 24}">
						<div class="posicion" id="pos24">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>
					Paseo de <br> Gracia
				</h2>
				<p>120&euro;</p></td>
		</tr>
		<tr>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 7}">
						<div class="posicion" id="pos7">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <img class="special" src="images/carcel.png"></td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 6}">
						<div class="posicion" id="pos6">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>
					Calle <br> Urgel
				</h2>
				<p>45&euro;</p></td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 5}">
						<div class="posicion" id="pos5">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>
					Calle <br>Marina
				</h2>
				<p>40&euro;</p></td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 4}">
						<div class="posicion" id="pos4">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>
					Estación <br> Ferrocarriles <br>Catalanes
				</h2>
				<p>60&euro;</p></td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 3}">
						<div class="posicion" id="pos3">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>Calle Rosellon</h2>
				<p>30&euro;</p></td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 2}">
						<div class="posicion" id="pos2">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>Lauria</h2>
				<p>20&euro;</p></td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.posicion == 1}">
						<div class="posicion" id="pos1">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <img class="special" src="images/salida.png"></td>
		</tr>
	</table>
</body>
</html>