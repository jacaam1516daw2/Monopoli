<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style/style.css" type="text/css">
<title>Monopoli</title>
</head>
<body>
	<%-- redireccion en caso de error --%>
	<%@ page errorPage="/error/errorPage.jsp"%>
	<table border="1">
		<tr>
			<th><img class="special" src="images/parking.png"></th>
			<th>
				<h2>
					Plaza <br> Urquinaona
				</h2>
				<p>70&euro;</p>
			</th>
			<th>
				<h2>
					Ronda <br> Sant Pedro
				</h2>
				<p>75&euro;</p>
			</th>
			<th>
				<h2>
					Estación <br> De <br> Francia 
				</h2>
				<p>60&euro;</p>
			</th>
			<th>
				<h2>
					Vía <br> Layetana
				</h2>
				<p>80&euro;</p>
			</th>
			<th>
				<h2>
					Plaza <br> Catalunya
				</h2>
				<p>90&euro;</p>
			</th>
			<th><img class="special" src="images/policia.png"></th>
		</tr>
		<tr>
			<td>
				<h2>
					Calle <br> Aragón
				</h2>
				<p>65&euro;</p>
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
				<h2>
					Calle <br> Pelayo
				</h2>
				<p>90&euro;</p>
			</td>
		</tr>
		<tr>
			<td>
				<h2>
					Paseo de <br> Sant Juan
				</h2>
				<p>60&euro;</p>

			</td>
			<td>
				<h2>
					Vía <br> Augusta
				</h2>

				<p>100&euro;</p>
			</td>
		</tr>
		<tr>
			<td>
				<h2>
					Estación <br> Paseo de <br> Gracia
				</h2>
				<p>60&euro;</p>
			</td>
			<td>
				<h2>
					Estación <br> de <br> Sants
				</h2>

				<p>60&euro;</p>
			</td>
		</tr>
		<tr>
			<td>
				<h2>
					Calle <br> Aribau
				</h2>
				<p>60&euro;</p>
			</td>
			<td>
				<h2>
					Calle <br> Balmes
				</h2>
				<p>110&euro;</p>
			</td>
		</tr>
		<tr>
			<td>
				<h2>
					Calle <br> Muntaner
				</h2>
				<p>55&euro;</p>
			</td>
			<td>
				<h2>
					Paseo de <br> Gracia
				</h2>
				<p>120&euro;</p>
			</td>
		</tr>
		<tr>
			<td><img class="special" src="images/carcel.png"></td>
			<td>
				<h2>
					Calle <br> Urgel
				</h2>
				<p>45&euro;</p>
			</td>
			<td>
				<h2>
					Calle <br>Marina
				</h2>
				<p>40&euro;</p>
			</td>
			<td>
				<h2>
					Estación <br> Ferrocarriles <br>Catalanes
				</h2>
				<p>60&euro;</p>
			</td>
			<td>
				<h2>Calle Rosellon</h2>
				<p>30&euro;</p>
			</td>
			<td>
				<h2>Lauria</h2>
				<p>20&euro;</p>
			</td>
			<td><img class="special" src="images/salida.png"></td>
		</tr>
	</table>
</body>
</html>