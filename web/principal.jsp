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
	<jsp:useBean id="casillaNormal" class="beans.CasillaNormal"
		scope="request" />
	<%-- redireccion en caso de error --%>
	<%@ page errorPage="/error/errorPage.jsp"%>
	<table border="1" align='center'>
		<tr>
			<th><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 14}">
						<div class="posicion" id="pos14">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 14}">
							<div class="posicion" id="pos14">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach> <img class="special" src="images/parking.png">14</th>
			<th><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 15}">
						<div class="posicion" id="pos15">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 15}">
							<div class="posicion" id="pos15">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>
					Plaza <br> Urquinaona
				</h2>
				<p>70&euro;</p>15</th>
			<th><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 16}">
						<div class="posicion" id="pos16">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 16}">
							<div class="posicion" id="pos16">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>
					Ronda <br> Sant Pedro
				</h2>
				<p>75&euro;</p>16</th>
			<th><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 17}">
						<div class="posicion" id="pos17">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 17}">
							<div class="posicion" id="pos17">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>Pago Impuesto</h2>
				<p>20&euro;</p>17</th>
			<th><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 18}">
						<div class="posicion" id="pos16">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 18}">
							<div class="posicion" id="pos18">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>
					Estación <br> De <br> Francia
				</h2>
				<p>60&euro;</p>18</th>
			<th><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 19}">
						<div class="posicion" id="pos19">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 19}">
							<div class="posicion" id="pos19">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>
					Vía <br> Layetana
				</h2>
				<p>80&euro;</p>19</th>
			<th><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 20}">
						<div class="posicion" id="pos20">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 20}">
							<div class="posicion" id="pos20">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>
					Plaza <br> Catalunya
				</h2>
				<p>90&euro;</p>20</th>
			<th><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 21}">
						<div class="posicion" id="pos21">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <img class="special" src="images/policia.png">21</th>
		</tr>
		<tr>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 13}">
						<div class="posicion" id="pos13">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 13}">
							<div class="posicion" id="pos13">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>
					Calle <br> Aragón
				</h2>
				<p>65&euro;</p>13</td>
			<td colspan="6" rowspan="5">
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
					<c:if test="${jugador.newPosicion == 22}">
						<div class="posicion" id="pos22">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 22}">
							<div class="posicion" id="pos22">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>
					Calle <br> Pelayo
				</h2>
				<p>90&euro;</p>22</td>
		</tr>
		<tr>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 12}">
						<div class="posicion" id="pos12">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 12}">
							<div class="posicion" id="pos12">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>
					Paseo de <br> Sant Juan
				</h2>
				<p>60&euro;</p>12</td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 23}">
						<div class="posicion" id="pos23">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 23}">
							<div class="posicion" id="pos23">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>
					Vía <br> Augusta
				</h2>

				<p>100&euro;</p>23</td>
		</tr>
		<tr>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 11}">
						<div class="posicion" id="pos11">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 11}">
							<div class="posicion" id="pos11">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>
					Estación <br> Paseo de <br> Gracia
				</h2>
				<p>60&euro;</p>11</td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 24}">
						<div class="posicion" id="pos24">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 24}">
							<div class="posicion" id="pos24">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>
					Estación <br> de <br> Sants
				</h2>

				<p>60&euro;</p>24</td>
		</tr>
		<tr>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 10}">
						<div class="posicion" id="pos10">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 10}">
							<div class="posicion" id="pos10">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>
					Calle <br> Aribau
				</h2>
				<p>60&euro;</p>10</td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 25}">
						<div class="posicion" id="pos25">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 25}">
							<div class="posicion" id="pos25">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>
					Calle <br> Balmes
				</h2>
				<p>110&euro;</p>25</td>
		</tr>
		<tr>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 9}">
						<div class="posicion" id="pos9">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 9}">
							<div class="posicion" id="pos9">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>
					Calle <br> Muntaner
				</h2>
				<p>55&euro;</p>9</td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 26}">
						<div class="posicion" id="pos26">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 26}">
							<div class="posicion" id="pos26">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>
					Paseo de <br> Gracia
				</h2>
				<p>120&euro;</p>26</td>
		</tr>
		<tr>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 8}">
						<div class="posicion" id="pos8">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <img class="special" src="images/carcel.png">8</td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 7}">
						<div class="posicion" id="pos7">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 7}">
							<div class="posicion" id="pos7">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>
					Calle <br> Urgel
				</h2>
				<p>45&euro;</p>7</td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 6}">
						<div class="posicion" id="pos5">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 6}">
							<div class="posicion" id="pos6">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>
					Calle <br>Marina
				</h2>
				<p>40&euro;</p>6</td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 5}">
						<div class="posicion" id="pos5">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach>
				<h2>Pago Impuesto</h2>
				<p>20&euro;</p>5</td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 4}">
						<div class="posicion" id="pos4">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 4}">
							<div class="posicion" id="pos4">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>
					Estación <br> Ferrocarriles<br> Catalanes
				</h2>

				<p>60&euro;</p>4</td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 3}">
						<div class="posicion" id="pos3">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 3}">
							<div class="posicion" id="pos3">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>Calle Rosellon</h2>
				<p>30&euro;</p>3</td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 2}">
						<div class="posicion" id="pos2">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <c:forEach items="${partida.jugadores}" var="jugador">
					<c:forEach items="${jugador.casillaNormales}" var="casillaNormal">
						<c:if test="${casillaNormal.numero == 2}">
							<div class="posicion" id="pos2">
								<img src="images/c${casillaNormal.casas}.png" width=40px
									height=35px>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
				<h2>Lauria</h2>
				<p>20&euro;</p>2</td>
			<td><c:forEach items="${partida.jugadores}" var="jugador">
					<c:if test="${jugador.newPosicion == 1}">
						<div class="posicion" id="pos1">
							<img src="${jugador.avatar}" width=10px height=15px>
						</div>
					</c:if>
				</c:forEach> <img class="special" src="images/salida.png">1</td>
		</tr>
	</table>
</body>
</html>