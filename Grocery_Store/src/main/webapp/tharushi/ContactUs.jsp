<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact us form</title>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="../images/logo_OGS_4.png">
    <link rel="stylesheet" href="../css/contactUs.css">
    <link rel="stylesheet" type="text/css" href="../css/navigation.css">
    <link rel="stylesheet" type="text/css" href="../css/footer.css">
    <link rel="stylesheet" type="text/css" href="../css/index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div>
<nav class="navbar">
        <div class="nav-container">
          <a href="../Com/index.jsp">
            <img class="logo" src="../images/logo_OGS.png" alt="Logo image">
          </a>
          <h2 class="name">TheFreshMart</h2>
          <ul class="nav-links">
            <li><a href="../Com/index.jsp" >Home</a></li>
            <li><a href="../thilakshana/Store.jsp">Store</a></li>
            <li><a href="../Com/about.jsp">About Us</a></li>
            <li><a href="ContactUs.jsp" class="active">Contact Us</a></li>
            <%
    		Object user = session.getAttribute("user");
    		String profileLink = (user != null) ? "../Com/profile.jsp" : "../Com/login.jsp";
			%>
			<li><a href="<%= profileLink %>"><i class="fa fa-user-circle-o" style="font-size: 30px;" aria-hidden="true"></i></a></li>

            <li><a href="#" onclick="toggleCartPanel()"><i class="fa fa-cart-arrow-down" style="font-size: 30px;" id="cart-icon" data-quantity="0" aria-hidden="true"></i></a></li>
            <!-- <li><a href="#" onclick="toggleCartPanel()">Cart 🛒</a></li> -->
          </ul>
        </div>
    </nav>
</div>

<br><br><br><br>


<section class = "Contact">
        <div class = "content">
            <br>
           <h2>Contact Us </h2>

            <p>We are available to be of service!  Our staff is available to help, whether you need help with our website, have issues regarding your order, or would like to provide feedback. 
                 You can contact us by phone, email, or by completing the form below.  Our goal is to answer all questions as soon as we can.  <br>
                 Your happiness is our top priority, so thank you for selecting our FRESH MART online grocery service!</p>
                 
        </div>
        
        <div class = "container">
            <div class = "contactInfo">

                <div class="box">
                    <div class = "icon"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
                    <div class="text">
                        <h3>Address</h3>
                        <p>The FreshMart Online Grocery<br>
                            No. 45, Greenway Avenue,<br>
                            Colombo 05,<br>
                            Sri Lanka</p>
                    </div>
                </div>

                <div class="box">
                    <div class = "icon"><i class="fa fa-phone" aria-hidden="true"></i></div>
                    <div class="text">
                        <h3>Tel:</h3>
                        <p>+94 7025864</p>
                    </div>
                </div>

                <div class="box">
                    <div class = "icon"><i class="fa fa-envelope-o" aria-hidden="true"></i></div>
                    <div class="text">
                        <h3>Email</h3>
                        <p>thefreshmart@gmail.com</p>
                    </div>
                </div>

            </div>

            <br>
            <br>




           <div class = "contactform">
                <form method="post" action="/Grocery_Store/ContactServlet">
                    <h2>Send message  </h2>
                    <div class ="inputBox">
                        <input type = "text" name ="full_name" required = "required">
                        <span>Full Name </span>
                    </div>

                    <div class ="inputBox">
                        <input type = "email" name ="email" required = "required">
                        <span>Email </span>
                    </div>
                      
                    <div class ="inputBox">
                        <textarea name="message" required = "required"></textarea>
                        <span>Type your message.. </span>
                    </div>

                    <div class ="inputBox">
                        <input type = "submit" name ="" value = "send">  
                    </div>


                </form>
            </div>
		</div>	
  </section>
  
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
        <li><a href="../Com/index.jsp">Home</a></li>
        <li><a href="../thilakshana/Store.html">Store</a></li>
        <li><a href="#" onclick="toggleCartPanel()">Cart</a></li>
      </ul>
    </div>
    <div class="footer-column">
      <h4>Support</h4>
      <ul>
        <li><a href="ContactUs.jsp">Contact Us</a></li>
        <li><a href="../Com/T&C.jsp">Terms of Service</a></li>
        <li><a href="../Com/P&P.jsp">Privacy Policy</a></li>
        <li><a href="../Com/faq.jsp">FAQ</a></li>
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
  <script src="js/contactUs.js"></script>
  
</body>
</html>