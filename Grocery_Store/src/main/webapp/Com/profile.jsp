<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
</head>
<body>
<h1>User Profile</h1>
	<h1>First_name: ${user.first_name}</h1>
<h1>Last_name: ${user.last_name}</h1>
<h1>Email: ${user.email}</h1>
<h1>Phone: ${user.phone_no}</h1>
<h1>Password: ${user.password}</h1>

<script>../js/profile.js</script>
	
</body>
</html>