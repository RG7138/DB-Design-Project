<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Message Details</title>
</head>
<body>
	<table border='1'>
		<tr>
			<th>Contact Message ID</th>
			<th>Buyer ID</th>
			<th>Seller ID</th>
			<th>Product ID</th>
			<th>Message Time</th>
			<th>Message</th>
		</tr>
		<c:forEach items="${contactMessages}" var="contactMessage">
			<tr>
				<td>${contactMessage.contactMessagesId}</td>
				<td>${contactMessage.buyer.buyerId}</td>
				<td>${contactMessage.seller.sellerId}</td>
				<td>${contactMessage.product.productId}</td>
				<td>${contactMessage.messageTime}</td>
				<td>${contactMessage.messages}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>