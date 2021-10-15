<%@page import="usal.implementaciones.ClienteDaoImplMySql"%>
<%@page import="usal.interfaces.ICrudDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="usal.dominio.Cliente"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% List<Cliente> clientes = (ArrayList<Cliente>)request.getAttribute("clientes"); %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link href="styles/TableStyles.css" type="text/css" rel="stylesheet"/>
		<title>Easy Lawyer</title>
		
	</head>
	
	<body>
		<h1>Clientes</h1>
	
		<br /><br />
						
		<div class="table-wrapper">
			<table class="fl-table">
		        <thead>
			        <tr>
			            <th>ID</th>
			            <th>Nombre</th>
			            <th>Mail</th>
			            <th>Telefono</th>
			            <th>Direccion</th>
			            <th>Cuit</th>
			        </tr>
			    </thead>
			    <tbody>
			    	<c:forEach var="x" items="${clientes}">
						<tr>
					  		<td>${x.getIdCliente()}</td>
					        <td>${x.getNombre()} ${x.getApellido()}</td>
					        <td>${x.getMail()}</td>
					        <td>${x.getCelular()}</td>
					        <td>${x.getDireccion().toString()}</td>
					        <td>${x.getCuit()}</td>
					        <td style="width: 10%; justify-content: space-between">
								<input type="button" value="Edit" />
								<input type="button" value="Delete" onclick="return(confirm('¿ Seguro que quiere eliminar al cliente Agustin - ID= 1 ?'))" />
							</td>
					   	</tr>
				   	</c:forEach>
				<tbody>
		    </table>
		</div>
	</body>
</html>