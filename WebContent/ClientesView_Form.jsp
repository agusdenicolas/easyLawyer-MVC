<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Clientes Form</title>
		<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet" />
		<link
			rel="stylesheet"
			href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
			integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
			crossorigin="anonymous"
		/>
		<style>
			html,
			body {
				min-height: 100%;
			}
			body,
			div,
			form,
			input,
			select,
			p {
				padding: 0;
				margin: 0;
				outline: none;
				font-family: Roboto, Arial, sans-serif;
				font-size: 14px;
				color: #666;
				line-height: 22px;
			}
			h1 {
				margin: 15px 0;
				font-weight: 400;
			}
			.testbox {
				display: flex;
				justify-content: center;
				align-items: center;
				height: inherit;
				padding: 3px;
			}
			form {
				width: 100%;
				padding: 20px;
				background: #fff;
				box-shadow: 0 2px 5px #ccc;
			}
			input,
			select,
			textarea {
				margin-bottom: 10px;
				border: 1px solid #ccc;
				border-radius: 3px;
			}
			input {
				width: calc(100% - 10px);
				padding: 5px;
			}
			select {
				width: 100%;
				padding: 7px 0;
				background: transparent;
			}
			textarea {
				width: calc(100% - 6px);
			}
			.item {
				position: relative;
				margin: 10px 0;
			}
			.item:hover p,
			.item:hover i {
				color: #f37e11;
			}
			input:hover,
			select:hover,
			textarea:hover,
			.preferred-metod label:hover input {
				box-shadow: 0 0 5px 0 #f37e11;
			}
			.preferred-metod label {
				display: block;
				margin: 5px 0;
			}
			.preferred-metod:hover input {
				box-shadow: none;
			}
			.preferred-metod-item input,
			.preferred-metod-item span {
				width: auto;
				vertical-align: middle;
			}
			.preferred-metod-item input {
				margin: 0 5px 0 0;
			}
			input[type='date']::-webkit-inner-spin-button {
				display: none;
			}
			.item i,
			input[type='date']::-webkit-calendar-picker-indicator {
				position: absolute;
				font-size: 20px;
				color: #a9a9a9;
			}
			.item i {
				right: 1%;
				top: 30px;
				z-index: 1;
			}
			[type='date']::-webkit-calendar-picker-indicator {
				right: 0;
				z-index: 2;
				opacity: 0;
				cursor: pointer;
			}
			.btn-block {
				margin-top: 20px;
				text-align: center;
			}
			button {
				width: 150px;
				padding: 10px;
				border: none;
				-webkit-border-radius: 5px;
				-moz-border-radius: 5px;
				border-radius: 5px;
				background-color: #f37e11;
				font-size: 16px;
				color: #fff;
				cursor: pointer;
			}
			button:hover {
				background-color: #d67010;
			}
			@media (min-width: 568px) {
				.name-item,
				.city-item {
					display: flex;
					flex-wrap: wrap;
					justify-content: space-between;
				}
				.name-item input,
				.city-item input {
					width: calc(50% - 20px);
				}
				.city-item select {
					width: calc(50% - 8px);
				}
			}
		</style>
		
		<!-- Script para crear Pop Up -->
		<script type="text/javascript">
			function deleteCliente_popUp(){
				window.open("http://localhost:8080/easyLawyer-MVC/ClientesView_DeletePopUp.jsp",
							"Pop uppp",
							"left=500px, top=250px, width= 600px, height=300px")
			}
		</script>
		
	</head>
	<body>
		<div class="testbox">
			<form action="/">
				<h1>Clientes Form</h1>
				<h5>Informacion Personal</h5>
				<div class="item">
					<p>Nombre Completo</p>
					<div class="name-item">
						<input type="text" name="nombre" placeholder="Nombre" />
						<input type="text" name="apellido" placeholder="Apellido" />
					</div>
				</div>
				<div class="item">
					<p>Email</p>
					<input type="text" name="name" placeholder="ejemplo@ejemplo.com" />
				</div>
				<div class="item">
					<p>Direccion</p>
					<div class="city-item">
						<input type="text" name="calle" placeholder="Calle" />
						<input type="text" name="numero" placeholder="Numero" />
						<select>
						 	<option selected>Provincia</option>
							<!-- LOGICA PARA DROPBOX PROVINCIAS -->
							<option value="1">Russia</option>
							<option value="2">Germany</option>
							<option value="3">France</option>
							<option value="4">Armenia</option>
							<option value="5">USA</option>
						</select>
					</div>
				</div>
				<div class="item">
					<p>Telefono</p>
					<input type="text" name="telefono" placeholder="011 12345678" />
				</div>
				<div class="item">
					<p>Cuit</p>
					<input type="text" name="cuit" placeholder="27 65248632 9" />
				</div>
				<div class="btn-block">
				
					
					<button type="button" onclick="deleteCliente_popUp()" href="/">SEND</button>
				</div>
			</form>
		</div>
	</body>
</html>
