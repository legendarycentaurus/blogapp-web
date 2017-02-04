<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="courses/save" method="GET">
		Id : <input type="number" name="id" required autofocus /> Name : <input
			type="text" name="name" required />
		<button type="submit">Submit</button>

	</form>

	<a href="courses">Course List</a>
</body>
</html>