<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Auction Details</title>
</head>
<body>
	<table border='1'>
		<tr>
			<th>Auction ID</th>
			<th>Seller ID</th>
			<th>Product ID</th>
			<th>Auction Date</th>
			<th>Expiration Date</th>
		</tr>
		<c:forEach items="${auctions}" var="auction">
			<tr>
				<td>${auction.auctionId}</td>
				<td>${auction.seller.sellerId}</td>
				<td>${auction.product.productId}</td>
				<td>${auction.auctionDate}</td>
				<td>${auction.expirationDate}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>