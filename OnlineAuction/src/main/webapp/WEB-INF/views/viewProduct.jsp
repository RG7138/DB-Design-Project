<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Details</title>
</head>
<body>
	<table border='1'>
		<tr>
			<th>Id</th>
			<th>Product Name</th>
			<th>Product Info</th>
			<th>Initial Bid Price</th>
			<th>Max Bid Price</th>
			<th>Sub Category Id</th>
			<th>Managed By</th>
		</tr>
		<c:forEach items="${products}" var="product">
			<tr>
				<td>${product.productId}</td>
				<td>${product.productName}</td>
				<td>${product.productInfo}</td>
				<td>${product.initialBidPrice}</td>
				<td>${product.maxBidPrice}</td>
				<td>${product.subCategory.subCategoryId}</td>
				<td>${product.admin.adminId}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>