<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="../images/logo_OGS_4.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Terms of Service</title>
    <link rel="stylesheet" href="../css/T&C.css">
    <link rel="stylesheet" type="text/css" href="../css/navigation.css">
    <link rel="stylesheet" type="text/css" href="../css/footer.css">
    <link rel="stylesheet" type="text/css" href="../css/index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
  <!-- nav bar -->
<div>
    <nav class="navbar">
        <div class="nav-container">
          <a href="index.jsp">
            <img class="logo" src="../images/logo_OGS.png" alt="Logo image">
          </a>
          <h2 class="name">TheFreshMart</h2>
          <ul class="nav-links">
            <li><a href="index.jsp" class="">Home</a></li>
            <li><a href="../thilakshana/Store.jsp">Store</a></li>
            <li><a href="about.jsp">About Us</a></li>
            <li><a href="../tharushi/ContactUs.jsp">Contact Us</a></li>
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
 

  <section class="banner">
    <div class="tac">
      <br><br>
    <a href="index.html">Home</a><span>▸</span>
    <a href="T&C.html">Terms of Service</a>
    </div>
    <h1>Terms of Service</h1>
   
  </section>
<br>
<br>

 
<div class="tac-section">
    
    <span class = "container" > Customers who visit and use our website agrees follow by all of the terms, conditions, policies, and notifications included below. 
        When you learn about shop, or buy something on our platform, you are using our "Service" and agreeing to these terms of service as well as any other conditions that may be offered through links on our website.
        Customers, suppliers, companies, and content creators are all subject to these conditions, as are other users of The FreshMart.</span>  

      <h3>✦ Services Offered</h3>
      <p> We provide a platform for online grocery product browsing, ordering, and delivery.  Items may not always be available at all times or places.</p>
    
  
      <h3> ✦ User Profiles</h3>
      <p> What you are responsible for:
       <br>
        i. During registration, giving correct and all the details
        <br>
        ii. Keeping the credentials for your account secure
        <br>
        iii. Every action that takes place under your account
        <br>
         iv. If there is a possibility of a scam, misuse, or violation of these terms, we have the right to suspend or terminate accounts. </p>
     
    
      <h3>✦ Orders and Payment</h3>
      <p> i. In addition when suggested, all prices are shown in LKR  and include any taxes.
        <br>
        ii. Order availability and acceptance are subject to change.
        <br>
        iii. Any order may be rejected or cancelled at any time.
        <br>
        iii. Only approved payment methods that are mentioned on our site may be used.</p>
     
  
      <h3> ✦ Delivery and Pickup</h3>
      <p> i. The estimated dates for delivery will continue to change based on accessibility, request, and weather conditions.
            <br>
       ii. We might return the things or leave them in a safe place if no one is home at the delivery address.
      </p>

      <h3> ✦ Returns and Refunds</h3>
      <p> For additional information, please see our Refund and Return Policy.  Returns of perishable goods are not accepted unless they are damaged or wrong.
      </p>
     
      <h3> ✦ You agree to avoid doing anything from:</h3>
      <p> 
        i. Use the service for illegal activities.
        <br>
        ii. Send or upload any harmful software or code.
        <br>
        iii. interfere with the security or functionality of the platform
        <br>
        iv. Use automated technologies for data extraction, or "scraping."
      </p>
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
        <li><a href="index.jsp">Home</a></li>
        <li><a href="../thilakshana/Store.jsp">Store</a></li>
        <li><a href="#" onclick="toggleCartPanel()">Cart</a></li>
      </ul>
    </div>
    <div class="footer-column">
      <h4>Support</h4>
      <ul>
        <li><a href="../tharushi/ContactUs.jsp">Contact Us</a></li>
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
    &copy; 2025  All rights reserved.
    </div>
</footer>


</body>
</html>