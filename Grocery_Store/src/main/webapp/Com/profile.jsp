<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
<style>h1{front:bolt}</style>
</head>
<body>
	<h1>User Profile</h1>
		<h1>First name: ${user.first_name}</h1>
		<h1>Last name: ${user.last_name}</h1>
		<h1>Email: ${user.email}</h1>
		<h1>Phone: ${user.phone_no}</h1>
		<h1>Password: ${user.password}</h1>
		
		<a href="updateprofile.jsp?id=${user.id}&first_name=${user.first_name}&last_name=${user.last_name}&email=${user.email}&phone_no=${user.phone_no}&password=${user.password}&check_user=${user.check_user}">
			<button>Update</button>
		</a>
		
		<form action="../AccountDeleteServlet" method="post">
			<input type="hidden" name="id" value="${user.id}"/>
			<button>Delete</button>
		</form>
	
	<script>../js/profile.js</script>
	
</body>
</html>