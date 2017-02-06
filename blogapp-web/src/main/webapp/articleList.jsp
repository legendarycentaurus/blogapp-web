<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Articles</title>
</head>
<body>
<h3>User List JSP</h3>
	To Test Values : ${Article_LIST}
	
	<table border="1">
		<thead>
			<tr>
				<th>Sno</th>
				<th>Article</th>
				<th>Content</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${Article_LIST}" varStatus="i">
				<tr>
					<td>${i.index+1}</td>
					<td>${c.title}</td>
					<td>${c.content}</td>
					<td><a href="users/delete?id=${c.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<form  action="../Article/myArticles">
 Id:<input type="text" name="id">
 <button  type="submit">Submit</button></form>
</body>
</html>