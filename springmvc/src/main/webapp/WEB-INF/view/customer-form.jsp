
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save Customer</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/style.css">

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/add-customer-style.css">
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM-CUSTOMER RELATIONSHIP MANAGER</h2>
		</div>
	</div>

	<div id="container">
		<h3>SAVE CUSTOMER</h3>

		<form:form action="savecustomer" modelAttribute="customer"
			method="post">

			<table>
				<tr>
					<td><label>First name:</label></td>
					<td><form:input path="firstname"></form:input></td>
				</tr>

				<tr>
					<td><label>Last name:</label></td>
					<td><form:input path="lastname" /></td>
				</tr>

				<tr>
					<td><label>Email:</label></td>
					<td><form:input path="email" /></td>
				</tr>

				<tr>
					<td><label></label></td>
					<td><input type="submit" value="Save" class="save" /></td>
				</tr>

			</table>

		</form:form>
		
		<div style="clear; both;"></div>
		<p>
		 <a href="${pageContext.request.contextPath}/customer/list">BACK TO LIST</a>
		</p>
	</div>
</body>
</html>