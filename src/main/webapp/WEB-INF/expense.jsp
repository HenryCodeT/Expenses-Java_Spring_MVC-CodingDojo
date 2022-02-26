<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title> Expenses </title>
	<!-- Bootstrap -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
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
	<!-- //// MAIN AREA /////////////////////////////////////////////// -->
	<main role="main">
		<div class="container mt-4">
			<h1>Expenses</h1>
			<br>
			<!-- //// ALL EXPENSES TABLE ////////////////////////////// -->
			<div class="row card bg-dark">
				<div class="col">
					<table class="table table-dark">
						<thead>
							<tr>
								<th scope="col">ID</th>
								<th scope="col">Expense</th>
								<th scope="col">Vendor</th>
								<th scope="col">Amount</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="expense" items="${ expenses }">
								<tr>
									<td><c:out value="${ expense.getId() }"></c:out></td>
									<td><c:out value="${ expense.getName() }"></c:out></a></td>
									<td><c:out value="${ expense.getVendor() }"></c:out></td>
									<td><fmt:formatNumber value = "${expense.getAmount()}" type = "currency" currencySymbol="$"/></td>
								</tr>							
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<br>
			<div class="col bg-info p-3">
				<h1>Add an Expense:</h1>
				<!-- //// CREATE FORM ////////////////////////////////// -->
				<form:form action="/expenses" method="post" modelAttribute="expense">
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
	</main>

	<!--Bootstrap -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>