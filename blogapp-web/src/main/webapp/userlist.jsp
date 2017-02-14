
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html >
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User List Page</title>
</head>
<body>
	<h3>User List JSP</h3>
	To Test Values : ${USER_LIST}
	<table class="stripped">
		<thead>
			<tr>
				<th>Sno</th>
				<th>User Id</th>
				<th>User Name</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${USER_LIST}" varStatus="i">
				<tr>
					<td>${i.index+1}</td>
					<td>${c.id}</td>
					<td>${c.name}</td>
					<td><a href="users/delete?id=${c.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br />
</body>
</html>