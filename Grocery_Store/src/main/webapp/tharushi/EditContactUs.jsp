<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
    <link rel="stylesheet" href="../css/EditContactUs.css">
    <link rel="stylesheet" type="text/css" href="../css/navigation.css">
    <link rel="stylesheet" type="text/css" href="../css/footer.css">
    <link rel="stylesheet" type="text/css" href="../css/index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
</head>
<body>
<nav class="navbar">
        <div class="nav-container">
          <a href="../Com/index.jsp">
            <img class="logo" src="../images/logo_OGS.png" alt="Logo image">
          </a>
          <h2 class="name">TheFreshMart</h2>
          <ul class="nav-links">
            <li><a href="../Com/index.jsp" >Home</a></li>
            <li><a href="../Com/store.jsp">Store</a></li>
            <li><a href="Com/aboutus.jsp">About Us</a></li>
            <li><a href="../tharushi/ContactUs.jsp" class="active">Contact Us</a></li>
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

<br><br><br><br>
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
</body>
</html>