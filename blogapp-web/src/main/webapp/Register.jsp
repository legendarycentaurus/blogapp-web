<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>

</head>
<body>
	<div class="container">
		<h4>${MESSAGE}</h4>
		<div class="row">
			<div class="col s6">
				<form action="users/save">
					<h3>SIGNUP</h3>
					UserName: <input type="text" name="userName" required /> <br>
					Password: <input type="text" name="password" required /><br>
					emailId: <input type="text" name="emailId" required /><br>
					RoleId:<input type="text" name="roleId" required /><br>
					<button type="submit">Submit</button>
				</form>
			</div>

			<div class="col s6">
				<h3>LOGIN</h3>
				<form action="/users/login">
					UserName: <input type="text" name="userName" required /> <br>
					Password: <input type="text" name="password" required /><br>
					<button type="submit">Submit</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>