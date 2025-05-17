<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Grocery Store</title>
  <link rel="stylesheet" href="../css/index.css">
  <link rel="stylesheet" type="text/css" href="../css/navigation.css">
  <link rel="stylesheet" type="text/css" href="../css/footer.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<nav class="navbar">
        <div class="nav-container">
          <a href="index.jsp">
            <img class="logo" src="../images/logo_OGS.png" alt="Logo image">
          </a>
          <h2 class="name">TheFreshMart</h2>
          <ul class="nav-links">
            <li><a href="index.jsp" class="active">Home</a></li>
            <li><a href="../thilakshana/Store.jsp">Store</a></li>
            <li><a href="aboutus.jsp">About Us</a></li>
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

    <!-- banner -->
    <div class="carousel-container">
      <button class="nav left" onclick="prevSlide()">&#8249;</button>
  
      <div class="carousel" id="carousel">
        <div class="banner">
          <a href="#">
              <img src="../images/banner1.png" alt="Banner 1"/>
          </a>
        </div>
        <div class="banner">
          <a href="#">
              <img src="../images/ban2.png" alt="Banner 2"/>
          </a>
        </div>
        <div class="banner">
          <a href="#">
              <img src="../images/ban3.png" alt="Banner 3"/>
          </a>
        </div>
        <div class="banner">
          <a href="#">
              <img src="../images/ban4.png" alt="Banner 4"/>
          </a>
        </div>
        <div class="banner">
          <a href="#">
              <img src="../images/banner5.png" alt="Banner 5"/>
          </a>
        </div>
      </div>
  
      <button class="nav right" onclick="nextSlide()">&#8250;</button>
    </div>

  <header class="hero">
    <link rel="icon" href="images/shop.png" type="image/png">
    <h1>Fresh Grocery Delivered</h1>
    <p>Order your daily essentials in one click!</p>
    <button class="but1" onclick="scrollToProducts()">
        <svg 
            width="36px" height="36px">
            <rect width="36" height="36" x="0" y="0" fill="#fdd835"></rect>
        </svg>
        <span class="now">Now !</span>
        <span class="play">Shop</span>
    </button>
    <br><br>
  </header>

  <!-- slide banner 2 -->
  <div class="slider">
    <div class="slide-track">
      <!-- Repeat images twice for seamless loop -->
      <div class="slide"><img src="../images/OSbanner1.png" loading="lazy"></div>
      <div class="slide"><img src="../images/OSbanner2.png" loading="lazy"></div>
      <div class="slide"><img src="../images/OSbanner3.png" loading="lazy"></div>
      <div class="slide"><img src="../images/OSbanner4.png" loading="lazy"></div>
      <div class="slide"><img src="../images/OSbanner1.png" loading="lazy"></div>
      <div class="slide"><img src="../images/OSbanner2.png" loading="lazy"></div>
  
      <!-- Repeat for seamless looping -->
      <div class="slide"><img src="../images/OSbanner1.png" loading="lazy"></div>
      <div class="slide"><img src="../images/OSbanner2.png" loading="lazy"></div>
      <div class="slide"><img src="../images/OSbanner3.png" loading="lazy"></div>
      <div class="slide"><img src="../images/OSbanner4.png" loading="lazy"></div>
      <div class="slide"><img src="../images/OSbanner1.png" loading="lazy"></div>
      <div class="slide"><img src="../images/OSbanner2.png" loading="lazy"></div>
    </div>
  </div>


  <!--Special Offers + Banner-->
  <section class="special-offers">
    <div class="offer-slider">
      <div class="offer-slide active">
        <h2>🔥 50% OFF on Fruits!</h2>
        <p>Enjoy fresh fruits at half price this week only!</p>
        <a href="#products" class="shop-now">Shop Now</a>
      </div>
      <div class="offer-slide">
        <h2>🥦 30% OFF on Vegetables</h2>
        <p>Green, fresh and delivered to your door.</p>
        <a href="#products" class="shop-now">Shop Now</a>
      </div>
      <div class="offer-slide">
        <h2>🍞 Buy 1 Get 1 on Bakery</h2>
        <p>Delicious breads and buns — double the joy!</p>
        <a href="#products" class="shop-now">Shop Now</a>
      </div>
      <div class="offer-slide">
        <h2>🧴 20% OFF on Cleaning Products</h2>
        <p>Keep your home sparkling and safe!</p>
        <a href="#products" class="shop-now">Shop Now</a>
      </div>
    </div>
  </section>

  <!-- Category -->
  <section class="category-section">
    <div class="category-header">
      <h2>Shop by Category</h2>
      <a href="store.html" class="view-more">View more</a>
    </div>
  
    <div class="category-grid">
      <div class="category-item">
        <a href="#">
        <img src="../images/catg1.png" alt="Avurudu Kade" />
        <p>Avurudu Kade</p></a>
      </div>
      <div class="category-item">
        <a href="#">
        <img src="../images/vegetables.jpg" alt="Vegetables" />
        <p>Vegetables</p></a>
      </div>
      <div class="category-item">
        <a href="#">
        <img src="../images/fruits.jpg" alt="Fruits" />
        <p>Fruits</p></a>
      </div>
      <div class="category-item">
        <a href="#">
        <img src="../images/baby_pro.jpg" alt="Baby Products" />
        <p>Baby Products</p></a>
      </div>
      <div class="category-item">
        <a href="#">
        <img src="../images/dairy.jpg" alt="Dairy" />
        <p>Dairy</p></a>
      </div>
      <div class="category-item">
        <a href="#">
        <img src="../images/beverages.jpg" alt="Beverages" />
        <p>Beverages</p></a>
      </div>
      <div class="category-item">
        <a href="#">
        <img src="../images/food_cup.jpg" alt="Food Cupboard" />
        <p>Food Cupboard</p></a>
      </div>
      <!-- Add more categories as needed -->
      <div class="category-item">
        <a href="#">
        <img src="../images/bakery.jpg" alt="Bakery" />
        <p>Bakery</p></a>
      </div>
      <div class="category-item">
        <a href="#">
        <img src="../images/household.jpg" alt="Household" />
        <p>Household</p></a>
      </div>
      <div class="category-item">
        <a href="#">
        <img src="../images/meats.jpg" alt="Meats" />
        <p>Meats</p></a>
      </div>
      <div class="category-item">
        <a href="#">
        <img src="../images/seafood.jpg" alt="Seafood" />
        <p>Seafood</p></a>
      </div>
      <div class="category-item">
        <a href="#">
        <img src="../images/cooking.jpg" alt="Cooking Essentials" />
        <p>Cooking Essentials</p></a>
      </div>
      <div class="category-item">
        <a href="#">
        <img src="../images/snack.jpg" alt="Snacks & Confectionery" />
        <p>Snacks & Confectionery</p></a>
      </div>
      <div class="category-item">
        <a href="#">
        <img src="../images/frozen.jpg" alt="Frozen Food" />
        <p>Frozen Food</p></a>
      </div>
    </div>
  </section>
  
  <main>
    <section id="products" class="product-section">
      <h2>Best Of Fruit & Veg</h2>
      <div class="product-grid">
        <div class="product">
          <img src="../images/tomato.jpg" alt="tomato"/>
          <h3>Tomato</h3>
          <p>Rs. 375.00 / 500g</p>
          <button class="but2" onclick="addToCart('Apples', 375)">Add to Cart</button>
        </div>
        <div class="product">
          <img src="../images/onion.jpg" alt="onion"/>
          <h3>Onion</h3>
          <p>Rs. 120.00 / 500g</p>
          <button class="but2" onclick="addToCart('Bananas', 120)">Add to Cart</button>
        </div>
        <div class="product">
          <img src="../images/carrot.jpg" alt="Carrot"/>
          <h3>Carrots</h3>
          <p>Rs. 340.00 / 500g</p>
          <button class="but2" onclick="addToCart('Carrots', 340)">Add to Cart</button>
        </div>
      </div>
    </section>

    <!-- <section id="cart" class="cart-section">
      <h2>Your Cart</h2>
      <ul id="cart-items"></ul>
      <p id="total">Total: Rs. 0</p>
    </section> -->
  </main>

  
  <!-- Professional Cart Panel -->
  <div id="cart-panel" class="cart-panel">
    <div class="cart-header">
      <h3>Your Cart</h3>
      <button onclick="toggleCartPanel()">❌</button>
    </div>
    <ul id="cart-items-panel"></ul>
    <p id="panel-total">Total: Rs. 0</p>
    <button class="pay-button">Proceed to Pay</button>
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

  <script src="../js/index.js"></script>
  <script src="../js/footer.js"></script>
</body>
</html>