<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <link rel="icon" type="image/png" href="../images/logo_OGS_4.png">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Grocery Store</title>
  <!-- <link rel="stylesheet" href="style/index.css"> -->
  <link rel="stylesheet" type="text/css" href="../css/navigation.css">
  <link rel="stylesheet" type="text/css" href="../css/footer.css">
  <link rel="stylesheet" type="text/css" href="../css/about.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>

    <nav class="navbar">
        <div class="nav-container">
          <a href="index.html">
            <img class="logo" src="../images/logo_OGS.png" alt="Logo image">
          </a>
          <h2 class="name">TheFreshMart</h2>
          <ul class="nav-links">
            <li><a href="index.jsp" >Home</a></li>
            <li><a href="../thilakshana/Store.jsp">Store</a></li>
            <li><a href="about.jsp" class="active">About Us</a></li>
            <li><a href="../tharushi/ContactUs.jsp">Contact Us</a></li>
            <li><a href="login.jsp"><i class="fa fa-user-circle-o" style="font-size: 30px;" aria-hidden="true"></i></a></li>
            <li><a href="#" onclick="toggleCartPanel()"><i class="fa fa-cart-arrow-down" style="font-size: 30px;" id="cart-icon" data-quantity="0" aria-hidden="true"></i></a></li>
            <!-- <li><a href="#" onclick="toggleCartPanel()">Cart 🛒</a></li> -->
          </ul>
        </div>
    </nav>
<br><br><br><br>
    <main class="about-container">
        <section class="about-hero">
            <h1>About TheFreshMart</h1>
            <p class="tagline">Your Trusted Online Grocery Partner</p>
        </section>

        <section class="about-content">
            <div class="about-section">
                <h2>Our Story</h2>
                <p>Founded in 2025, TheFreshMart emerged from a simple idea: to make grocery shopping convenient, reliable, and enjoyable. We understand the challenges of modern life and strive to bring the best quality products right to your doorstep.</p>
            </div>

            <div class="about-section">
                <h2>Our Mission</h2>
                <p>At TheFreshMart, we are committed to:</p>
                <ul>
                    <li>Providing fresh, high-quality groceries at competitive prices</li>
                    <li>Ensuring timely and reliable delivery services</li>
                    <li>Creating a seamless online shopping experience</li>
                    <li>Supporting local farmers and suppliers</li>
                    <li>Reducing food waste through efficient inventory management</li>
                </ul>
            </div>

            <div class="about-section">
                <h2>Why Choose Us?</h2>
                <div class="features-grid">
                    <div class="feature">
                        <i class="fa fa-truck" aria-hidden="true"></i>
                        <h3>Fast Delivery</h3>
                        <p>Same-day delivery for orders placed before 2 PM</p>
                    </div>
                    <div class="feature">
                        <i class="fa fa-leaf" aria-hidden="true"></i>
                        <h3>Fresh Products</h3>
                        <p>Daily sourced fruits, vegetables, and dairy products</p>
                    </div>
                    <div class="feature">
                        <i class="fa fa-shield" aria-hidden="true"></i>
                        <h3>Quality Guarantee</h3>
                        <p>100% satisfaction guarantee on all products</p>
                    </div>
                    <div class="feature">
                        <i class="fa fa-credit-card" aria-hidden="true"></i>
                        <h3>Secure Payments</h3>
                        <p>Multiple secure payment options available</p>
                    </div>
                </div>
            </div>

            <div class="about-section">
                <h2>Our Values</h2>
                <div class="values-container">
                    <div class="value">
                        <h3>Customer First</h3>
                        <p>Your satisfaction is our top priority. We listen, we care, and we deliver.</p>
                    </div>
                    <div class="value">
                        <h3>Sustainability</h3>
                        <p>We are committed to eco-friendly practices and reducing our environmental footprint.</p>
                    </div>
                    <div class="value">
                        <h3>Community</h3>
                        <p>We support local businesses and contribute to our community's growth.</p>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- Footer -->
<footer>
    <div class="footer-container">
      <div class="footer-column">
        <h4>About TheFreshMart</h4>
        <p>Your trusted online grocery partner, delivering fresh and quality products right to your doorstep since 2025.</p>
        <div class="footer-social">
          <a href="#" class="social-icon"><i class="fa fa-facebook" aria-hidden="true"></i></a>
          <a href="#" class="social-icon"><i class="fa fa-twitter" aria-hidden="true"></i></a>
          <a href="#" class="social-icon"><i class="fa fa-instagram" aria-hidden="true"></i></a>
          <a href="#" class="social-icon"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
        </div>
      </div>
      
      <div class="footer-column">
        <h4>Quick Links</h4>
        <ul>
          <li><a href="index.jsp">Home</a></li>
          <li><a href="store.jsp">Store</a></li>
          <li><a href="about.jsp">About Us</a></li>
          <li><a href="contactus.jsp">Contact Us</a></li>
          <li><a href="faq.jsp">FAQ</a></li>
        </ul>
      </div>
      
      <div class="footer-column">
        <h4>Customer Service</h4>
        <ul>
          <li><a href="T&C.jsp">Terms & Conditions</a></li>
          <li><a href="P&P.jsp">Privacy Policy</a></li>
          <li><a href="#">Shipping Policy</a></li>
          <li><a href="#">Return Policy</a></li>
          <li><a href="#">Help Center</a></li>
        </ul>
      </div>
      
      <div class="footer-column">
        <h4>Newsletter</h4>
        <p>Subscribe to our newsletter for the latest updates and offers.</p>
        <div class="newsletter">
          <input type="email" placeholder="Enter your email">
          <button type="submit">Subscribe</button>
        </div>
      </div>
    </div>
    
    <div class="footer-bottom">
      <p>&copy; 2025 TheFreshMart. All rights reserved.</p>
    </div>
</footer>
  
    <script src="../js/index.js"></script>
    <script src="../js/footer.js"></script>
  </body>
  </html>
  