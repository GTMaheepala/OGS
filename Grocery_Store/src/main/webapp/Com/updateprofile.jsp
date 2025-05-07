<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upadte Profile</title>
<link rel="stylesheet" href="../css/update-profile.css">
</head>
<body>
<%
	String id = request.getParameter("id");
	String first_name = request.getParameter("first_name");
	String last_name = request.getParameter("last_name");
	String email = request.getParameter("email");
	String phone_no = request.getParameter("phone_no");
	String password = request.getParameter("password");
	String check_user = request.getParameter("check_user");
%>


	<form action="../UpdateProfileServlet" method="post">
	<h2 class="form-title">Update Profile</h2>
	<div class="top-bar">
		<button id="backBtn">← Back</button>
	</div>
		<table>
			<tr>
				<td>ID:</td>
				<td><input type="text" id="id" name="id" value="<%=id%>" readonly></td>
			</tr>
			<tr>
				<td>First name:</td>
				<td><input type="text" id="first_name" name="first_name" value="<%=first_name%>" required></td>
			</tr>
			<tr>
				<td>Last name:</td>
				<td><input type="text" id="last_name" name="last_name" value="<%=last_name%>" required></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="text" id="email" name="email" value="<%=email%>" required></td>
			</tr>
			<tr>
				<td>Phone no:</td>
				<td><input type="text" id="phone_no" name="phone_no" value="<%=phone_no%>" required></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="text" id="password" name="password" value="<%=password%>" required></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit"></td>
			</tr>
		</table>
	</form>
	
	<script src="../js/update-profile.js"></script>
</body>
</html>