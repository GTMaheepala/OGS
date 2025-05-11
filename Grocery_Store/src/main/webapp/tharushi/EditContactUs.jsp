<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
    String fullName = request.getParameter("full_name");
    String email = request.getParameter("email");
    String message = request.getParameter("message");
%>
<div class="top-bar">
    <button onclick="window.history.back();">← Back</button>
</div>

<div class="edit-container">
    <h2>Edit Contact Message</h2>
    <form action="/Grocery_Store/UpdateConusServlet" method="POST">
        <div class="form-group">
            <label for="id">Message ID</label>
            <input type="text" id="id" name="id" value="<%= id %>" readonly>
        </div>
        <div class="form-group">
            <label for="full_name">Full Name</label>
            <input type="text" id="full_name" name="full_name" value="<%= fullName %>" required>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" value="<%= email %>" required>
        </div>
        <div class="form-group">
            <label for="message">Message</label>
            <textarea id="message" name="message" rows="4" required><%= message %></textarea>
        </div>
        <div class="form-footer">
            <button type="reset" class="btn cancel">Cancel</button>
            <button type="submit" class="btn save">Save</button>
        </div>
    </form>
</div>
</body>
</html>