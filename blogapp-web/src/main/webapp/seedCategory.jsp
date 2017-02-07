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
To Test Values : ${SEEDCATEGORY_LIST}
	<table border="1">
		<thead>
			<tr>
				
				<th>Category id</th>
				<th>Category</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${SEEDCATEGORY_LIST}" varStatus="i">
				<tr>
					
					<td>${c.id}</td>
					<td>${c.category}</td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>