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
<button class="add-user-btn" onclick="window.location.href='tharushi/ContactUs.jsp'">
   Add New Message
</button>
<table id="conusTable">
        <thead>
            <tr>
                <th>ID</th>
                <th>Full Name</th>
                <th>Email</th>
                <th>Message</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="msg" items="${conusList}">
                <tr>
                    <td>${msg.id}</td>
                    <td>${msg.fullName}</td>
                    <td>${msg.email}</td>
                    <td>${msg.message}</td>
                    <td class="action-buttons">
              <a href="tharushi/EditContactUs.jsp?id=${msg.id}&full_name=${msg.fullName}&email=${msg.email}&message=${msg.message}">
                <button class="edit-btn">Edit</button>
              </a>
              <form action="/Grocery_Store/ConusDeleteServlet" method="post">
                <input type="hidden" name="id" value="${msg.id}"/>
                <button class="delete-btn">Delete</button>
              </form>
            </td>
                </tr>
            </c:forEach>
            
        </tbody>
    </table>
</body>
</html>