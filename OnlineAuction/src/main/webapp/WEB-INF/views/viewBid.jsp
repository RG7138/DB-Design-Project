<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bid Details</title>
</head>
<body>
	<table border='1'>
		<tr>
			<th>Bids ID</th>
			<th>Buyer ID</th>
			<th>Product ID</th>
			<th>Bid Time</th>
			<th>Bid price</th>
		</tr>
		<c:forEach items="${bids}" var="bid">
			<tr>
				<td>${bid.bidsId}</td>
				<td>${bid.buyer.buyerId}</td>
				<td>${bid.product.productId}</td>
				<td>${bid.bidTime}</td>
				<td>${bid.bidPrice}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>