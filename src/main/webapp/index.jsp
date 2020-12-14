<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<body>
	<br>
	<br>
	<c:redirect url="/00_menuEntrada.htm" />

	<!-- 1. Un botón "Info" que pulsándolo nos muestre una página de información
		general. En esa página habrá un enlace denominado "volver" que permitirá
		regresar a la página de inicio.

		2 Un botón “Consultar directores” con un formulario en el que se introducirá el
		nombre del director de cine, y tras pulsar un botón consultar, se dirigirá la
		petición a un servlet que validará y obtendrá el listado de películas de ese
		director. Una vez obtenida esa lista, el servlet la mostrará al usuario, dándole
		la opción de realizar otra consulta. Si se responde que sí, se vuelve al
		formulario y se procede de la misma manera. En la página que se muestra la
		lista de películas, también se ofrece un botón finalizar. Si se pulsa, se
		mostrará la lista de nombres de directores consultados. En esa página habrá
		un botón para volver al formulario inicial y realizar nuevas consultas, Y habrá un botón 
		“Inicio” para volver a la página inicial. Si se introduce un nombre de director no existente, 
		se informará de ello
		y se ofrecerá de nuevo el formulario para una nueva consulta.
		
		3 Un botón "login" que al pulsarlo muestra un formulario para identificarse a los
		usuarios administradores. El formulario se compone de dos cuadros de texto,
		uno para el login y otro para la clave. Estos datos estarán almacenados en
		una base de datos que se accederá mediante JDBC. Una vez rellenados los
		campos se podrá intentar logear.
	 
	 	4 Archivo Adjunto SQL
	 	
	 	5 Estilos
	 	
	 	6 Estructura mvc, uso de la estructura de proyecto estudiada en la guia de spring... (Objetos y Interfaces, servicios, DAoS etc)
	 -->
</body>
</html>