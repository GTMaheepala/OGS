<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="../images/logo_OGS_4.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Privacy Policy</title>
    <link rel="stylesheet" href="../css/P&P.css">
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
          <img class="logo1" src="../images/logo_GS.png" alt="Logo image">
        </a>
          <h2 class="name">GroceryStore</h2>
          <ul class="nav-links">
            <li><a href="index.jsp">Home</a></li>
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
 

<section class="container2">
    <div class="privacy">
        <br><br>
    <a href="index.html">Home</a><span>▸</span>
    <a href="P&P.html">Privacy Policy</a>
    </div>
   
   
  </section>
<br>
<br>


 
<div class="privacy-section">
    
    <span class = "container" > The Fresh Mart Online Grocery Shopping System  are totally committed to safeguarding your privacy while you  buying groceries online. 
         When you visit our website to place an order on groceries online, we collect, usage, declare, and protect your information as described in our Privacy Policy.</span>  

      <h3>01. Information We Collect:</h3>
      <p>
        
        • Personal Information:
        <br>
        • Name
        <br>
        • Email address
        <br>
        • Phone number
        <br>
        • Delivery address
        <br>
        • Payment information 
        <br>
        • Account credentials </p>
    
  
      <h3> 02. Non-Personal Information:</h3>
      <p> 

        • IP address
        <br>
        • Browser type
        <br>
        • Device information
        <br>
        • Usage data 
        <br>
        • Location Information:
        <br>
        • With your permission, we may collect your device’s location to facilitate delivery services.
       <br>
        </p>
    
      <h3>03. How We Use Your Information: </h3>
      <p> •  Provide and manage the grocery shopping services
        <br>
        • Process transactions and deliver orders
        <br>
        • Improve our website and customer experience
         <br>
         • Send order updates and promotional messages
        <br>
        • Respond to inquiries and provide customer support
        <br>
        • Detect and prevent fraud or other unauthorized activities</p>
     
  
      <h3> 04. Sharing Your Information: </h3>
      <p>  •  Service providers (e.g., payment processors, delivery partners)
        <br>
        •  Legal authorities, if required to comply with legal obligations
        <br>
        •  Business partners, if you consent or as part of a merger or sale
        <br>
        •  We do not sell or rent your personal information to third parties.</p>
     
      <h3> 05. Data Security: </h3>
      <p> 
        We take the proper organisational and technical precautions to safeguard your information.  
        However, there is no completely safe way to send data over the internet.
      </p>

           
      <h3> 06. Cookies and Tracking Technologies: </h3>
      <p> 
        Cookies and related technologies are used by us to improve your online experience.  
        In your browser's settings, you can modify your cookie choices.
      </p>

      <h3> 07. Third-Party Links: </h3>
      <p> 
        Links to external websites may be included in our service.  Their privacy policies are not under our control.
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