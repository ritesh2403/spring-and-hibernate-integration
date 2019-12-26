
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="<c:url value="/resource/css/style.css" />" rel="stylesheet">

<title>List Customer</title>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM-CUSTOMER RELATIONSHIP MANAGEMENT</h2>

		</div>

	</div>


	<div id="container">

		<div id="content">
	<input type="button" value="Add Customer" onClick="window.location.href='ShowFormForAdd'"; return="false" class="add-button"></input>

			<table>
				<tr>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Email</th>
					<th>Action</th>
				</tr>


				<c:forEach var="tempCustomer" items="${customers}">
				
				    <c:url var="updateLink" value="/customer/showformForUpdate">
				        <c:param name="customerId" value="${tempCustomer.id}"></c:param>
				    </c:url>
					<tr>
						<td>${tempCustomer.firstname}</td>
						<td>${tempCustomer.lastname}</td>
						<td>${tempCustomer.email}</td>
						<td>
						<a href="${updateLink}">Update</a>
						</td>

					</tr>


				</c:forEach>

			</table>

		</div>
	</div>
</body>
</html>