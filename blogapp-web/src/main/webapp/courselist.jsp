<%@page import="com.naresh.model.Course"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html >
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course List Page</title>
</head>
<body>
	<h3>Course List JSP</h3>
	To Test Values : ${COURSE_LIST}
	<table border="1">
		<thead>
			<tr>
				<th>Sno</th>
				<th>Course Id</th>
				<th>Course Name</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${COURSE_LIST}" varStatus="i">
				<tr>
					<td>${i.index+1}</td>
					<td>${c.id}</td>
					<td>${c.name}</td>
					<td><a href="courses/delete?id=${c.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br />
	<a href="addcourse.jsp">Add Course</a>
</body>
</html>