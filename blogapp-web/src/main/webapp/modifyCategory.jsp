<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form  action="../category/update">
Update
CategoryName:  <input type="text" name="categoryName" />
<br>
Id:  <input type="text" name="id" /><br>
UserId:  <input type="text" name="userId" /><br>
<button  type="submit">Submit</button>
</form>
<br><br>
Delete
<form  action="../category/delete">
Id:  <input type="text" name="id" /><br>
<button  type="submit">Submit</button>
</form>

</body>
</html>