<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form  action="users/save">
SIGNUP
UserName:  <input type="text" name="userName" />
<br>
Password:  <input type="text" name="password" /><br>
emailId:  <input type="text" name="emailId" /><br>
RoleId:<input type="text" name="roleId"/><br>
<button  type="submit">Submit</button>
</form>

LOGIN
<form  action="/Article">
UserName:  <input type="text" name="userName" />
<br>
Password:  <input type="text" name="password" /><br>
<button  type="submit">Submit</button>
</form>


</body>
</html>