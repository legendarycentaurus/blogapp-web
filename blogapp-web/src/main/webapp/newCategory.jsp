<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Enter a new Category<br>
<form  action="/category/newCategory">
CategoryName:  <input type="text" name="categoryName" />
<br>
 <input type="Hidden" name="userId" value="${LOGGED_IN_USER.id}"/><br>
<button  type="submit">Submit</button>
</body>
</html>