<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mostrar empleados</title>
<style type="text/css">
table {
	align-content: center;
	text-align: center;
	margin: 0 auto;
	border: 1px;
	width: 60%;
}

th {
	background-color: black;
	color: white;
}

td {
	text-align: left;
	background-color: #DFCFF5;
	color: black;
}

h1 {
	text-align: center;
}
</style>
</head>
<body>
	<h2>Peliculas</h2>
	<table border=1>
		<tbody>
			<tr>
				<th>ACTOR</th>
				<th>PELICULA</th>
				<th>FECHA</th>
		
			</tr>
			<c:forEach items="${model.peliculas}" var="pelicula">
				<tr>
					<td><c:out value="${pelicula.director}" /></td>
					<td><c:out value="${pelicula.titulo}" /></td>
					<td><c:out value="${pelicula.fecha}" /></td>
				
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
	<a href="00_menuEntrada.htm">
		<button>Atras</button>
	</a>
</body>
</html>