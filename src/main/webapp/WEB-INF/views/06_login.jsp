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
<title>LOGIN</title>
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
<h2>LOGIN DE USUARIO</h2>
<br>
<br>
<h3>Introduce tus datos:</h3>
<body style="background-color: #D0F2E0;">
	<form:form method="POST" action="07_loginUsuario.htm">
		<table>
			<tr>
				<td>Usuario</td>

				<td><input type="text" name="usuario" /></td>
			</tr>
			<tr>
				<td>Contrasenia</td>

				<td><input type="text" name="contrasenia" /></td>
			</tr>

		</table>
		<br>
		<input type="submit" value="Enviar">
	</form:form>
</body>
</html>