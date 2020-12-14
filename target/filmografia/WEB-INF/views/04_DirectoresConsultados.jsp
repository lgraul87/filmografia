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
<title>Lista de directores</title>
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
<body style="background-color: #D0F2E0;">
	<h2>Directores Consultados</h2>

	<table border=1>
		<tbody>
			<tr>
				<th>DIRECTOR</th>

			</tr>
			<c:forEach items="${model.directores}" var="directores">
				<tr>

					<td><c:out value="${directores}" /></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	<br>
	<br>
	<a href="05_PeliculasDirectoresNuevaSesion.htm">
		<button>Nueva consulta (Nueva sesion)</button>
	</a>
	<br>
	<br>
	<a href="00_menuEntrada.htm">
		<button>Inicio</button>
	</a>
</body>
</html>