<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category Details</title>
</head>
<body>
	<table border='1'>
		<tr>
			<th>Id</th>
			<th>Category Name</th>
			<th>Created By</th>
		</tr>
		<c:forEach items="${categories}" var="category">
			<tr>
				<td>${category.categoryId}</td>
				<td>${category.categoryName}</td>
				<td>${category.admin.adminId}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>