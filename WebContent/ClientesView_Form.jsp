<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@page import="usal.dominio.Cliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	Cliente cliente = (Cliente)request.getAttribute("cliente");
%>   
 
<!DOCTYPE html>
<html>
	<head>
		<title>Clientes Form</title>
		<link
			rel="stylesheet"
			href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
			integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
			crossorigin="anonymous"
		/>
		<link href="styles/FormStyles.css" type="text/css" rel="stylesheet"/>
	</head>
	
	<body>
		<div class="testbox">
			<form action="ClientesServlet" method="POST">
				<h1>Clientes Form</h1>
				<h3>Informacion Personal</h3>
				<div class="item">
					<div class="name-item">
						<input type="hidden" name="idCliente" value="${ cliente.getIdCliente() }" />
						<input type="text" name="nombre" placeholder="Nombre" value="${ cliente.getNombre() }" />
						<input type="text" name="apellido" placeholder="Apellido" value="${ cliente.getApellido() }" />
					</div>
				</div>
				<div class="item">
					<p>Email</p>
					<input type="text" name="mail" placeholder="ejemplo@ejemplo.com" value="${ cliente.getMail() }" />
				</div>
				<div class="item">
					<p>Direccion</p>
					<div class="city-item">
						<input type="text" name="calle" placeholder="Calle" value="${ cliente.getDireccion().getCalle() }" />
						<input type="text" name="numero" placeholder="Numero" value="${ cliente.getDireccion().getNumero() }" />
						<select name="provincia">
						 	<option selected value="${ cliente.getDireccion().getProvincia().getNombreProvincia() }">
						 		${ cliente.getDireccion().getProvincia().getNombreProvincia() }
						 	</option>
						 	
							<!-- LOGICA PARA DROPBOX PROVINCIAS -->
							<option value="Capital Federal">Capital Federal</option>
							<option value="Buenos Aires">Buenos Aires</option>
							<option value="Santa Fe">Santa Fe</option>
							<option value="Corrientes">Corrientes</option>
							<option value="Tierra del Fuego">Tierra del Fuego</option>
						</select>
					</div>
				</div>
				<div class="item">
					<p>Telefono</p>
					<input type="text" name="celular" placeholder="011 12345678" value="${ cliente.getCelular() }" />
				</div>
				<div class="item">
					<p>Cuit</p>
					<input type="text" name="cuit" placeholder="27652486329" value="${ cliente.getCuit() }" />
				</div>
				<div class="btn-block">
					<button type="submit">Aceptar</button>
					<button type="button" onclick="history.back()">Cancelar</button>					
				</div>
			</form>
		</div>
	</body>
</html>
