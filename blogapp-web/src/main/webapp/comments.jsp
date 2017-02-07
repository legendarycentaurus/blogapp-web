<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${Comments}
To List comments enter id
<form  action="/comments/listComments">
id:  <input type="text" name="id" required/><br>
<button  type="submit">Submit</button>
<table border="1">
		<thead>
			<tr>
				<th>Sno</th>
				<th>Comments</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${Comments}" varStatus="i">
				<tr>
					<td>${i.index+1}</td>
					<td>${c.comments}</td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
</form>
<a href="../deleteComment.jsp">Delete</a><br>

<a href="../insertComment.jsp">Insert</a><br>
</body>
</html>