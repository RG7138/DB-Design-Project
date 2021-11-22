<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SubCategory Details</title>
</head>
<body>
	<table border='1'>
		<tr>
			<th>Id</th>
			<th>SubCategory Name</th>
			<th>Category ID</th>
		</tr>
		<c:forEach items="${subCategories}" var="subCategory">
			<tr>
				<td>${subCategory.subCategoryId}</td>
				<td>${subCategory.subCategoryName}</td>
				<td>${subCategory.category.categoryId}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>