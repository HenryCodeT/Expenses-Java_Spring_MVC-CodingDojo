<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title> Titulo </title>
	<!-- Bootstrap -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- Estilos Locales -->
	<link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
<div class="mx-auto" style="width: 400px">
	<div class="col bg-info p-3">
		<h1>Add an Expense:</h1>
		<!-- //// EDIT FORM ////////////////////////////////// -->
		<form:form action="/expenses/${ expense.getId() }" method="post" modelAttribute="expense">
			<input type="hidden" name="_method" value="put">
			<p class="form-group">
				<form:label path="name">Expense name:</form:label>
				<form:input class="form-control mb-3" path="name" />
				<form:errors path="name" class="alert alert-danger" />
			</p>
			<p class="form-group">
				<form:label path="vendor">Vendor:</form:label>
				<form:input class="form-control mb-3" path="vendor" />
				<form:errors path="vendor" class="alert alert-danger" />
			</p>
			<p class="form-group">
				<form:label path="amount">Amount in $</form:label>
				<form:input class="form-control mb-3" type="number" path="amount"/>
				<form:errors path="amount" class="alert alert-danger" />
			</p>
			<p class="form-group">
				<form:label path="description">Description</form:label>
				<form:textarea class="form-control mb-3" path="description" />
				<form:errors path="description" class="alert alert-danger" />
			</p>
			<input class="btn btn-success" type="submit" value="Submit" />
		</form:form>
	</div>
</div>

	<!-- jQuery (No necesario en Bootstrap 5) -->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<!--Bootstrap -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<!-- Javascript Local -->
	<script src="/js/app.js"></script>
</body>
</html>