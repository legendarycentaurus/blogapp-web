<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="com.nanda.model.User"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Articles</title>
</head>
<body>
	<div class="container">
	<div class="row">
		<%
			User u = (User) session.getAttribute("LOGGED_IN_USER");
		
		%>
		<p>
			Welcome <%=u.getName()%></p>
		<h3>User List JSP</h3>
		To Test Values : ${Article_LIST}
		TO Test Current User:${currentUser}

		<table class="striped">
			<thead>
				<tr>
					<th>Sno</th>
					<th>Article</th>
					<th>Content</th>
					<th>UserId</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="c" items="${Article_LIST}" varStatus="i">
				 <%-- <c:if test="${c.userid.id==LOGGED_IN_USER.id}">  --%>
					<tr>
						<td>${i.index+1}</td>
						<td>${c.title}</td>
 						<td>${c.content}</td>
 						<td>${c.userid.id}</td>
 					</tr>
 					<%--  </c:if> --%>
				</c:forEach>
			</tbody>
		</table>
		<%-- <a href="../Article/myArticles?id=${LOGGED_IN_USER.id}" > Link</a> --%>
		<div class="row">
			<div class="col s4">
			<h4>To list My Articles</h4>
				<form action="../Article/myArticles">
				<input type="Hidden" name="id" value="${LOGGED_IN_USER.id}">
					<button type="submit">MyArticles</button>
				</form>
			</div>
		</div>
		<div class="container left">
			<a href="../UpdateUser.jsp">UpdateUser</a><br> <a
				href="../DeleteUser.jsp">DeleteUser</a><br>
				 <a href="../category">viewcategory</a><br> 
				 <a href="../newCategory.jsp">New Category</a><br>
			<a href="../modifyCategory.jsp">update category</a><br> <a
				href="../comments.jsp">comments</a><br> <a
				href="../modifyCategory.jsp">delete Category</a><br>
				 <a href="../ratings?userId=${LOGGED_IN_USER.id}">ratings</a>
				 <a href="../insertArticle.jsp">insertArticle</a>
		</div></div>
	</div>
</body>

<footer class="page-footer">
<div class="container">Footer</div>
</footer>

</html>