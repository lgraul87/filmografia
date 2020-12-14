<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario director a buscar</title>
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
	<h1>PELICULAS DIRECTOR</h1>
	<br><br><br>
<h3>INTRODUCE NOMBRE DE ACTOR</h3>
	<form:form method="POST" action="03_MostrarPeliculasDirectores.htm">
		<table>
			<tr>
				<td><input type="text" name="actor" /></td>
			</tr>

		</table>
		<br>
		<input type="submit" value="Execute">
	</form:form>
	<br>
	<br>
	<a href="00_menuEntrada.htm">
		<button>Atras</button>
	</a>

</body>
</html>