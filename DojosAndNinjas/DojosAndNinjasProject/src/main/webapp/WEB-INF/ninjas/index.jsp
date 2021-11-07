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
	<title>All Ninjas</title>
	</head>
	<body>
		<div class="w-25 container">
			<br>
			<h1>Dojos and Ninjas</h1>
			<br>
			<h3><a class="btn btn-info p-3" href="/dojos">All Dojos</a></h3>
			<hr />
			<br>
			<h2 class="bg-info p-3 text-white font-weight-light rounded">All Ninjas</h2>
			<br>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Name</th>
						<th>Last Name</th>
						<th>Age</th>
						<th>Dojo</th>	
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${ ninjas }" var="ninja">
					<tr>
						<td>${ ninja.firstName }</td>
						<td>${ ninja.lastName }</td>
						<td>${ ninja.age }</td>
						<td>${ ninja.dojo.name }</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			<br>
			<div class="d-flex">
				<a class="ml-auto btn btn-outline-info" href="/ninjas/new">New Ninja</a>
			</div>
		</div>
	</body>
</html>