<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback Details</title>
</head>
<body>
	<table border='1'>
		<tr>
			<th>Feedback ID</th>
			<th>Buyer ID</th>
			<th>Seller ID</th>
			<th>Product ID</th>
			<th>Feedback Time</th>
			<th>rating</th>
			<th>Comments</th>
		</tr>
		<c:forEach items="${feedbacks}" var="feedback">
			<tr>
				<td>${feedback.feedbackId}</td>
				<td>${feedback.buyer.buyerId}</td>
				<td>${feedback.seller.sellerId}</td>
				<td>${feedback.product.productId}</td>
				<td>${feedback.feedbackTime}</td>
				<td>${feedback.rating}</td>
				<td>${feedback.comments}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>