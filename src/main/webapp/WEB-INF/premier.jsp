<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="rm" uri="/WEB-INF/Premier.tld"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<div class="container">
	<h3 class="text-danger" style="text-align: center;">Nombre premiers de 2 à 30</h3>
	<c:forEach var="i" begin="2" end="30">
		<c:if test="${rm:Premier(i)}">
			<p ><c:out value="${i} premier" /></p>
		</c:if>
		<c:if test="${!rm:Premier(i)}">
			<p ><c:out value="${i} non premier" /></p>
		</c:if>
	</c:forEach>
	<h3>Nombre donnée en paramètre</h3>
	<form action="/premier" method="post">
		<input class="form-control" placeholder="Nombre" name="nombre" type="number" >
		<br>
		<input class="btn btn-primary" type="submit" value="Envoyer">
	</form>

		<c:if test="${rm:Premier(param.nombre)}">
			<p><c:out value="${param.nombre} premier" /></p>
		</c:if>
		<c:if test="${!rm:Premier(param.nombre)}">
			<p><c:out value="${param.nombre} non premier" /></p>
		</c:if>

	<br>
	<h3> 2 nombres données en paramètres pour calculer la liste</h3>
	<form action="/premier" method="post">
		<input class="form-control" placeholder="Nombre un"  name="nombre1" type="number">
		<br>
		<input class="form-control" placeholder="Nombre deux" name="nombre2" type="number">
		<br>
		<input class="btn btn-primary" type="submit" value="Envoyer">
	</form>
		<c:choose>
			<c:when test="${param.nombre1 > param.nombre2}">
				<c:set var="max" value="${param.nombre1}" />
				<c:set var="min" value="${param.nombre2}" />
			</c:when>
			<c:otherwise>
				<c:set var="max" value="${param.nombre2}" />
				<c:set var="min" value="${param.nombre1}" />
			</c:otherwise>
		</c:choose>
		<c:forEach var="i" begin="${min}" end="${max}">
			<c:if test="${rm:Premier(i)}">
				<p><c:out value="${i} premier" /></p>
			</c:if>
			<c:if test="${!rm:Premier(i)}">
				<p><c:out value="${i} non premier" /></p>
			</c:if>

		</c:forEach>

</div>
</body>
</html>