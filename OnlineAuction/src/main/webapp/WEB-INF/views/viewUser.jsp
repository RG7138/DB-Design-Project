<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details</title>
</head>
<body>
	<table border='1'>
		<tr>
			<th>Id</th>
			<th>Email</th>
			<th>Phone Number</th>
			<th>Password</th>
			<th>Managed By</th>
		</tr>
		<c:forEach items="${users}" var="user">
			<tr>
				<td>${user.userId}</td>
				<td>${user.email}</td>
				<td>${user.phoneNumber}</td>
				<td>${user.password}</td>
				<td>${user.admin.adminId }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>