<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Easy Lawyer</title>
	</head>
	
	<body>
		<body>
			<h1>Clientes</h1>
	
			<br /><br />
	
			<div style="margin: auto 50px">
				<input style="display: block; margin-left: auto" type="button" value="+" />
	
				<table border="1" style="width: 100%; text-align: center; margin-top: 5px">
					<tr style="font-weight: bold">
						<td>ID</td>
						<td>Nombre</td>
						<td>Mail</td>
						<td>Telefono</td>
						<td>Direccion</td>
						<td>Cuit</td>
					</tr>
					<tr>
						<td>1</td>
						<td>Agustin de Nicolas</td>
						<td>agustin.denicolas@usal.edu.ar</td>
						<td>11 3214-6547</td>
						<td>Saravi 3588, La Lonja Pilar</td>
						<td>27-42496650-9</td>
						<td style="display: flex; justify-content: space-between">
							<input style="width: 48.5%" type="button" value="Edit" />
							<input style="width: 48.5%" type="button" value="Delete" />
						</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Carolina Segui</td>
						<td>carolina.segui@usal.edu.ar</td>
						<td>11 1234-5678</td>
						<td>Saravi 3588, La Lonja Pilar</td>
						<td>27-42496650-9</td>
						<td style="display: flex; justify-content: space-between">
							<input style="width: 48.5%" type="button" value="Edit" />
							<input style="width: 48.5%" type="button" value="Delete" />
						</td>
					</tr>
	
					<!-- <c:forEach var="x" items="${camiones}">
			<tr>
				<td>${x.getIdCamion()}</td>
				<td>${x.getMarca()}</td>
				<td>${x.getModelo()}</td>
				<td>${x.getPatente()}</td>
				<td>${x.getNroMotor()}</td>
				<td>${x.getNroChasis()}</td>
				<td>${x.getToneladasMax()}</td>
				<td>${x.getLitrosNafta()}</td>
				<td>${x.getLitrosPorKm()}</td>
			</tr>
		</c:forEach> -->
				</table>
			</div>
	</body>
</html>