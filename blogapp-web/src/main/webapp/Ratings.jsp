<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h4>${Message}</h4> ${ratingList}<br><br>
TO rate an article
	<form action="../ratings/insertRatings">
		Articleid: <input type="text" name="articleId" required /><br>
		 Rating:<input type="text" name="ratings" required /><br> 
		 <input type="hidden" name="userId" value="${LOGGED_IN_USER.id}" />
		<button type="submit">Submit</button>
	</form>
<a href="../ratings?userId=${LOGGED_IN_USER.id}" >to view the rated articles</a>
<div class="row">
	<table class="striped">
		<thead>
			<tr><th>ID</th>
				<th>userId</th>
				<th>ArticleId</th>
				<th>Rating</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${ratingList}" varStatus="i">
				<%-- <c:if test="${c.userid.id==LOGGED_IN_USER.id}">  --%>
				<tr>
				<td>${c.id}</td>
					<td>${c.userId.id}</td>
					<td>${c.articleId.id}</td>
					<td>${c.rating}</td>
					<td>
					<form action="../ratings/updateRatings">
					Rating:<input type="text" name="ratings" required />
					<input type="hidden" name="id" value="${c.id}" />
					 <button type="submit">Submit</button>
					</form>
					</td>
				</tr>
				<%--  </c:if> --%>
			</c:forEach>
		</tbody>
	</table>
</div>
</div>

</body>
</html>