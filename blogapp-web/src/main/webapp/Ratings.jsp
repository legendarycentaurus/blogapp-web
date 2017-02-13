<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${Message}

<form  action="../ratings/insertRatings">
id:  <input type="text" name="articleId" required/><br>
Rating:<input type="text" name="ratings" required/><br>
<input type="hidden" name="userId" value="${LOGGED_IN_USER.id}"/>
<button  type="submit">Submit</button>
</body>
</html>