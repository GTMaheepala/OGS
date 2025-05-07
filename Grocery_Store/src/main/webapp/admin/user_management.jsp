<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
    <title>User Management</title>
    <link rel="stylesheet" href="../css/user_mane.css">
</head>
<body>
<h2>User Table</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Phone No</th>
            <th>Password</th>
            <th>Action</th>
        </tr>
        <c:forEach var="user" items="${allUsers}">
    <tr>
        <td>${user.id}</td>
        <td>${user.first_name}</td>
        <td>${user.last_name}</td>
        <td>${user.email}</td>
        <td>${user.phone_no}</td>
        <td>${user.password}</td>
        <td>${user.check_user}</td>
    </tr>
</c:forEach>

    </table>
</body>
</html>