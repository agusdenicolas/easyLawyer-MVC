<%@page import="org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToIntArray"%>
<%@page import="usal.implementaciones.ClienteDaoImplMySql"%>
<%@page import="usal.interfaces.ICrudDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="usal.dominio.Cliente"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<link href="styles/TableStyles.css" type="text/css" rel="stylesheet"/>
		<title>Easy Lawyer</title>
	</head>
	
	<body>
		<h1>Clientes</h1>
		
		<div class="table-wrapper">
			<a class="input-nuevo btn btn-dark btn-sm" href="ClientesServlet?op=nuevo"><i class="fas fa-plus"></i></a>
		
			<table class="fl-table">
		        <thead>
			        <tr>
			            <th>ID</th>
			            <th>Nombre</th>
			            <th>Mail</th>
			            <th>Telefono</th>
			            <th>Direccion</th>
			            <th>Cuit</th>
			            <th></th>
			        </tr>
			    </thead>
			    <tbody>
			    	<c:forEach var="x" items="${clientes}">
						<tr>
					  		<td >${x.getIdCliente()}</td>
					        <td>${x.getNombre()} ${x.getApellido()}</td>
					        <td>${x.getMail()}</td>
					        <td>${x.getCelular()}</td>
					        <td>${x.getDireccion().toString()}</td>
					        <td>${x.getCuit()}</td>
					        <td style="width: 10%; justify-content: space-between">
								<a class="btn btn-dark btn-sm" href="ClientesServlet?op=modificar&idCliente=${x.getIdCliente()}"><i class="fas fa-pencil-alt"></i></a>
								<a 
									class="btn btn-dark btn-sm"
									href="ClientesServlet?op=eliminar&idCliente=${x.getIdCliente()}" onclick='return(confirm("¿Seguro que quiere eliminar al" + 
									"cliente ${x.getNombre()} ${x.getApellido()} - ID= ${x.getIdCliente()}?"))'
								>
									<i class="far fa-trash-alt"></i>
								</a>
							</td>
					   	</tr>
				   	</c:forEach>
				<tbody>
		    </table>
		</div>
	</body>
</html>