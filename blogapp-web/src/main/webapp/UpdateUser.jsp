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
${updatedUser}
UPDATE USER CREDENTIALS<br>
<form  action="/users/update">
UserName:  <input type="text" name="userName" />
<br>
Password:  <input type="text" name="password" /><br>
<button  type="submit">Submit</button>
</form>
<table border="1">
		<thead>
			<tr>
<!-- 				<th>Sno</th> -->
				<th>User Id</th>
				<th>User Name</th>
				<th>Password</th>
				<th>EmailId</th>
				<th>RoleId</th>
			</tr>
		</thead>
		<tbody>
<%-- 			<c:forEach var="c" items="${updatedUser}" varStatus="i"> --%>
				<tr>
<%-- 					<td>${i.index+1}</td> --%>
					<td>${updatedUser.id}</td>
					<td>${updatedUser.name}</td>
					<td>${updatedUser.password}</td>
					<td>${updatedUser.emailId}</td>
					<td>${updatedUser.roleId.id}</td>
					</tr>
<%-- 			</c:forEach> --%>
		</tbody>
	</table>





</body>
</html>