<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="UserPackage.UserModel" %>
    <%
    UserModel user = (UserModel) request.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Details</title>
    <link rel="stylesheet" href="style/navigation.css">
    <link rel="stylesheet" href="style/footer.css">
    <link rel="stylesheet" href="style/myaccount.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            background: url('images/bg.jpg');
        }
    </style>
</head>
<body>
<!-- Navigation Bar -->
    <h1>Fashion Haven</h1>


    <div class="account-container">
        <h1>Account Details</h1>
        <div class="account-info">
            <div class="info-item"><label>First Name:</label> <p><%= user.getFirst_name() %></p></div>
            <div class="info-item"><label>Last Name:</label> <p><%= user.getLast_name() %></p></div>
            <div class="info-item"><label>Email Address:</label> <p><%= user.getEmail() %></p></div>
            <div class="info-item"><label>Phone Number:</label> <p><%= user.getPhone_no() %></p></div>
        </div>
        <div class="buttons">
            <a href="edit_account.jsp"><button class="edit-btn">Edit Details</button></a>
            <form action="deleteAccount" method="post" onsubmit="return confirm('Are you sure? This cannot be undone.')">
                <button type="submit" class="delete-btn">Delete Account</button>
            </form>
            <form action="logout" method="post">
                <button type="submit" class="btn-logout1">LOGOUT</button>
            </form>
        </div>
    </div>


</body>
</html>