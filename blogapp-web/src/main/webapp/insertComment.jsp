<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form  action="comments/insertComments">

ArticleId:  <input type="text" name="articleId" required />
<br>
UserId:  <input type="text" name="userId" required/><br>
Comments:  <input type="text" name="comments" required /><br>
<button  type="submit">Submit</button>
</form>


</body>
</html>