<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
		rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" href="css/main.css" />
	<title>New Dojo</title>
	</head>
	<body>
		<div class="w-25 container">
			<br>
			<h1>Dojos and Ninjas</h1>
			<br>
			<hr />
			<br>
			<h2 class="bg-info p-3 text-white font-weight-light rounded">New Dojo</h2>
			<br>
			<form:form action="/dojos" method="post" modelAttribute="dojo">
				<div class="form-group font-weight-bold">
			        <form:label path="name">Name:</form:label>
			        <form:errors path="name"/>
			        <form:input class="form-control" path="name"/>
			    </div>
			    <br>
			    <button class="btn btn-outline-info">Create</button>
			</form:form>
			<div class="row justify-content-end">
				<div class="col-3">
					<h3><a class="p-2 btn btn-info" href="/dojos">All Dojos</a></h3>
				</div>
				<div class="col-3">
				<h3><a class="p-2 btn btn-info" href="/ninjas">All Ninjas</a></h3>
				</div>
			</div>
		</div>
	</body>
</html>