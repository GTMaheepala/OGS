<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="../images/logo_OGS_4.png">
<title>Website with Login & Registration</title>
    <link rel='stylesheet' href='../css/login.css'>
    <link rel="stylesheet" type="text/css" href="../css/navigation.css">
    <link rel="stylesheet" type="text/css" href="../css/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<style>
        body{
            background: url('../images/bg2.jpg')no-repeat;
            background-size: cover;
            background-position: center;
        }
    </style>
    

    <header>
      <h1 class="name1">Grocery Store</h1>
    </header>
    

    <div class="wrapper">
        <span class="icon-close">
        <a href="index.jsp">
            <ion-icon name="close"></ion-icon>
        </a>
        </span>

        <div class="form-box login">
            <h2>Login</h2>
            <form action="/Grocery_Store/LoginServlet" method="post">
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="mail"></ion-icon>
                    </span>
                    <input type="email"  name="email"required>
                    <label>Email</label>
                </div>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="lock-closed"></ion-icon>
                    </span>
                    <input type="password" name="password" required>
                    <label>Password</label>
                </div>
                <div class="remember-forgot">
                    <label><input type="checkbox">Remember me</label>
                    <a href="#">Forgot Password?</a>
                </div>
                <button type="submit" class="btn">Login</button>
                <div class="login-register">
                    <p>
                        Don't have an account?<a href="register.jsp" class="register-link">Register</a>
                    </p>
                </div>
            </form>
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

    <script src="../js/login.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>