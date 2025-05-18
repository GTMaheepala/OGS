<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ - Online Grocery Ordering System</title>
<link rel="icon" type="image/png" href="../images/logo_OGS_4.png">
    <link rel="stylesheet" href="../css/faq.css">
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
          <img class="logo1" src="../images/logo_OGS.png" alt="Logo image">
        </a>
          <h2 class="name">GroceryStore</h2>
          <ul class="nav-links">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="../thilakshana/Store.jsp">Store</a></li>
            <li><a href="about.jsp">About Us</a></li>
            <li><a href="../tharushi/ContactUs.jsp">Contact Us</a></li>
            <li><a href="login.jsp"><i class="fa fa-user-circle-o" style="font-size: 30px;" aria-hidden="true"></i></a></li>
            <li><a href="#" onclick="toggleCartPanel()"><i class="fa fa-cart-arrow-down" style="font-size: 30px;" id="cart-icon" data-quantity="0" aria-hidden="true"></i></a></li>
            <!-- <li><a href="#" onclick="toggleCartPanel()">Cart 🛒</a></li> -->
          </ul>
        </div>
    </nav>
</div>

<h1>.</h1><br><br><br><br>

    <div class="faq-container">
        <h1>Frequently Asked Questions</h1>
        <div class="faq">
            <div class="faq-question">What is the Online Grocery Ordering System?</div>
            <div class="faq-answer">
                Our system allows you to browse, order, and schedule delivery for groceries from your home or mobile device.
            </div>
        </div>

        <div class="faq">
            <div class="faq-question">How do I place an order?</div>
            <div class="faq-answer">
                Simply register or log in, browse the store, add items to your cart, and proceed to checkout to place your order.
            </div>
        </div>

        <div class="faq">
            <div class="faq-question">What payment methods do you accept?</div>
            <div class="faq-answer">
                We accept credit/debit cards, online banking, and cash on delivery.
            </div>
        </div>

        <div class="faq">
            <div class="faq-question">Can I schedule a delivery time?</div>
            <div class="faq-answer">
                Yes, you can choose a preferred delivery time slot during checkout based on availability.
            </div>
        </div>

        <div class="faq">
            <div class="faq-question">How can I track my order?</div>
            <div class="faq-answer">
                After placing your order, you'll receive an email and in-app notifications with tracking updates.
            </div>
        </div>
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


    <script src="../js/faq.js"></script>
</body>
</html>