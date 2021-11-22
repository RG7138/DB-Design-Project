<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buyer Details</title>
</head>
<body>
	<table border='1'>
		<tr>
			<th>Id</th>
			<th>Shipping Address</th>
		</tr>
		<c:forEach items="${buyers}" var="buyer">
			<tr>
				<td>${buyer.buyerId}</td>
				<td>${buyer.shippingAddress}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>