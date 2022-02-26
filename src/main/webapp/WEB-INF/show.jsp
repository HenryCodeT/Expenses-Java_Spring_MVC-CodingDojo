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
	<!-- //// HEADER ///////////////////////////////////////////////// -->
	<header>
		<div class="navbar navbar-dark bg-dark box-shadow">
			<div class="container d-flex justify-content-between">
				<a href="/" class="navbar-brand d-flex align-items-center"> <strong
					class="text-warning">Save travels</strong>
				</a> <a class="btn btn-secondary " href="/">HOME</a>
			</div>
		</div>
	</header>
	<!-- //// MAIN ///////////////////////////////////////////////// -->
	<main class="m-3">
		<h2 class="text-primary">Expense details</h2>
		<p>Expense name: <c:out value="${ expense.getName() }"></c:out></p>
		<p>Expense description: <c:out value="${ expense.getName() }"></c:out></p>
		<p>Vendor: <c:out value="${ expense.getName() }"></c:out></p>
		<p>Amount expense: <fmt:formatNumber value = "${expense.getAmount()}" type = "currency" currencySymbol="$"/></p>
	</main>
	<!-- jQuery (No necesario en Bootstrap 5) -->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<!--Bootstrap -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<!-- Javascript Local -->
	<script src="/js/app.js"></script>
</body>
</html>