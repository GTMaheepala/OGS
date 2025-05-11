<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/DisplayConus.css">
<link rel="stylesheet" href="../css/contactUs.css">
    <link rel="stylesheet" type="text/css" href="css/navigation.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
    <link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
<div>
<nav class="navbar">
        <div class="nav-container">
          <a href="Com/index.jsp">
            <img class="logo" src="images/logo_OGS.png" alt="Logo image">
          </a>
          <h2 class="name">TheFreshMart</h2>
          <ul class="nav-links">
            <li><a href="Com/index.jsp" >Home</a></li>
            <li><a href="Com/store.jsp">Store</a></li>
            <li><a href="Com/aboutus.jsp">About Us</a></li>
            <li><a href="tharushi/ContactUs.jsp" class="active">Contact Us</a></li>
            <%
    		Object user = session.getAttribute("user");
    		String profileLink = (user != null) ? "profile.jsp" : "login.jsp";
			%>
			<li><a href="<%= profileLink %>"><i class="fa fa-user-circle-o" style="font-size: 30px;" aria-hidden="true"></i></a></li>

            <li><a href="#" onclick="toggleCartPanel()"><i class="fa fa-cart-arrow-down" style="font-size: 30px;" id="cart-icon" data-quantity="0" aria-hidden="true"></i></a></li>
            <!-- <li><a href="#" onclick="toggleCartPanel()">Cart 🛒</a></li> -->
          </ul>
        </div>
    </nav>
</div>
<br><br><br><br><br>
<div class="top-bar">
	<button id="backBtn">← Back</button>
</div>
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
                <th>Action</th>
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
    <!-- Footer -->
<footer>
  <div class="footer-container">
    <div class="footer-column">
      <h4>About Us</h4>
      <p>We are passionate about delivering quality content and services to our users worldwide. Your satisfaction is our mission.</p>
    </div>
    <div class="footer-column">
      <h4>Quick Links</h4>
      <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="store.html">Store</a></li>
        <li><a href="#" onclick="toggleCartPanel()">Cart</a></li>
      </ul>
    </div>
    <div class="footer-column">
      <h4>Support</h4>
      <ul>
        <li><a href="contactus.jsp">Contact Us</a></li>
        <li><a href="T&C.jsp">Terms of Service</a></li>
        <li><a href="P&P.jsp">Privacy Policy</a></li>
        <li><a href="faq.jsp">FAQ</a></li>
      </ul>
    </div>
    <div class="footer-column">
      <h4>Follow Us</h4>
      <div class="footer-social">
        <a href="#" class="social-icon"><i class="fa fa-facebook-square" aria-hidden="true"></i></a>
        <a href="#" class="social-icon"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a>
        <a href="#" class="social-icon"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
        <a href="#" class="social-icon"><i class="fa fa-twitter" aria-hidden="true"></i></a>
        <a href="#" class="social-icon"><i class="fa fa-envelope-square" aria-hidden="true"></i></a>
        <a href="#" class="social-icon"><i class="fa fa-instagram" aria-hidden="true"></i></a>
        <a href="#" class="social-icon"><i class="fa fa-phone-square" aria-hidden="true"></i></a>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    &copy; 2025 Tharu Baby Co. All rights reserved.
  </div>
</footer>
    <script src="js/update-profile.js"></script>
</body>
</html>