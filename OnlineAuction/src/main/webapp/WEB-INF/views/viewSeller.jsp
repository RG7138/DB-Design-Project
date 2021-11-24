<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seller Details</title>
</head>
<body>
	<table border='1'>
		<tr>
			<th>Seller Id</th>
			<th>User Id</th>
			<th>Routing Number</th>
			<th>Account Number</th>
		</tr>
		<c:forEach items="${sellers}" var="seller">
			<tr>
				<td>${seller.sellerId}</td>
				<td>${seller.user.userId}</td>
				<td>${seller.routingNumber}</td>
				<td>${seller.accountNumber}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>