<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
<link rel="stylesheet" href="../css/profile.css">
<style>
        body{
            background: url('../images/bg2.jpg')no-repeat;
            background-size: cover;
            background-position: center;
        }
    </style>
</head>
<body>	
<div class="profile-card">
	<div class="top-bar">
      <button id="backBtn">← Back</button>
      <form id="logoutForm" action="../LogoutServlet" method="get">
    		<button id="logoutBtn" type="submit">Logout</button>
	</form>
    </div>
    <div class="profile-header">
      <img src="https://via.placeholder.com/80" alt="User Photo" class="profile-photo">
      <div class="profile-info">
        <h2 id="fullName">${user.first_name}</h2>
      </div>
    </div>
		<!--<h2>First name: ${user.first_name}</h2>
		<h2>Last name: ${user.last_name}</h2>
		<h2>Email: ${user.email}</h2>
		<h2>Phone: ${user.phone_no}</h2>
		<h2>Password: ${user.password}</h2>-->
		
	<div class="profile-body">
      <label>First Name</label>
      <input type="text" id="first_name" value= "${user.first_name}" disabled>

      <label>Last Name</label>
      <input type="text" id="last_name" value="${user.last_name}" disabled>

      <label>Email</label>
      <input type="email" id="email" value="${user.email}" disabled>

      <label>Phone Number</label>
      <input type="text" id="phone_no" value="${user.phone_no}" disabled>

      <label>Password</label>
      <input type="password" id="password" value="${user.password}" disabled>

      <div class="button-group">
		
		<a href="updateprofile.jsp?id=${user.id}&first_name=${user.first_name}&last_name=${user.last_name}&email=${user.email}&phone_no=${user.phone_no}&password=${user.password}&check_user=${user.check_user}">
			<button id="editBtn" >Update</button>
		</a>
		
		<form action="../AccountDeleteServlet" method="post" onsubmit="return confirmDelete();">
			<input type="hidden" name="id" value="${user.id}"/>
			<button id="deleteBtn">Delete</button>
		</form>
		
	</div>
		
</div>
	
	<script src="../js/profile.js"></script>
	<br><br><br>
</body>
</html>