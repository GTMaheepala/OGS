<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<link rel="icon" type="image/png" href="../images/logo_OGS_4.png">
    <link rel='stylesheet' type='text/css' href='../css/register.css'>
    <link rel="stylesheet" type="text/css" href="../css/navigation.css">
    <link rel="stylesheet" type="text/css" href="../css/footer.css">
    <script src='../js/register.js'></script>
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
      <!-- <img class="logo" src="images/logo_GS.png" alt="Logo image"> -->
      <h1 class="name1">Grocery Store</h1> 

    <div class="wrapper">
        <span class="icon-close">
            <a href="login.jsp">
                <ion-icon name="close"></ion-icon>
            </a>
            </span>

        <div class="form-box register">
            <h2>Registration</h2>
            <form action="<%= request.getContextPath() %>/RegisterServlet" method="POST">
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="person"></ion-icon>
                    </span>
                    <input type="text" id="fname" name="first_name"  required>
                    <label>First name</label>
                </div>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="person"></ion-icon>
                    </span>
                    <input type="text" id="lname" name="last_name"  required>
                    <label>Last name</label>
                </div>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="mail"></ion-icon>
                    </span>
                    <input type="email" id="email" name="email"  required>
                    <label>Email</label>
                </div>
                <div class="input-box">
                    <span class="icon">
                        <i class="fa fa-phone" aria-hidden="true"></i>
                    </span>
                    <input type="tel" required name="phone_no" pattern="{[0-9]{1}, [0-9]{2}, [0-9]{3}, [0-9]{4}, [0-9]{5}, [0-9]{6}, [0-9]{7}, [0-9]{8}, [0-9]{9}, [0-9]{10}}">
                    <label>Contact number</label>
                </div>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="lock-closed"></ion-icon>
                    </span>
                    <input type="password" name="password"  required>
                    <label>Password</label>
                </div>
                <div class="remember-forgot">
                    <label><input type="checkbox">I agree to the terms & conditions</label>
                </div>
                <div class="remember-forgot">
                    <label><input type="checkbox">Understand the data policy & accept cookie use</label>
                </div>
                <button type="submit" value="register" class="btn">Register</button>
                <div class="login-register">
                    <p>
                        Already have an account?<a href="login.jsp" class="login-link">Login</a>
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

  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>