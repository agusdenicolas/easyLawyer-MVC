<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Eliminar Cliente</title>
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
			form{
				padding: 0;
				margin: 0;
				outline: none;
				font-family: Roboto, Arial, sans-serif;
				font-size: 14px;
				color: #666;
				line-height: 22px;
			}
			.testbox {
				display: flex;
				justify-content: center;
				align-items: center;
				height: inherit;
				padding: 3px;
			}
			form {
				display: inline-block;
				text-align: center;
				width: 60%;
				margin-top: 10%;
				padding: 20px;
				background: #fff;
				box-shadow: 0 2px 5px #ccc;
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
				width: 100px;
				<!--padding: 10px; -->
				border: none;
				-webkit-border-radius: 5px;
				-moz-border-radius: 5px;
				border-radius: 5px;
				background-color: #f37e11;
				font-size: 14px;
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
	</head>
	
	<body>
		<div class="testbox">
			<form action="/">		
				<h3>¿ Seguro que quiere eliminar al cliente Agustin - ID= 1 ?</h3>
					<button type="button" onclick="" href="/">Aceptar</button>
					<button type="button" onclick="" href="/">Cancelar</button>
				</div>
			</form>
		</div>
	</body>
</html>
