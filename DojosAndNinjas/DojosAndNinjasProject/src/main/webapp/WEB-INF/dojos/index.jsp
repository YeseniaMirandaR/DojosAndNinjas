<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
	crossorigin="anonymous">
	<link rel="stylesheet" href="css/main.css" />
	<title>All Dojos</title>
	</head>
	<body>
		<div class="w-25 container">
		<br>
			<h1>Dojos and Ninjas</h1>
			<br>
			<h3><a class="btn btn-info p-3" href="/ninjas">All Ninjas</a></h3>
			<hr />
			<br>
			<h2 class="bg-info p-3 text-white font-weight-light rounded">All Dojos</h2>
			<br>
			<ul class="list-unstyled">
			<c:forEach items="${ dojos }" var="dojo">
				<li><a class="text-dark" href="/dojos/${ dojo.id }"><strong>${ dojo.name }</strong></a></li>
			</c:forEach>
			<br>
			<div class="d-flex">
				<a class="ml-auto btn btn-outline-info" href="/dojos/new">New Dojo</a>		
			</div>
		</div>
	</body>
</html>

