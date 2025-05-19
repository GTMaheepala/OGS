<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Grocery Store</title>
<link rel="icon" type="image/png" href="../images/logo_OGS_4.png">
  <link rel="stylesheet" href="../css/index.css">
  <link rel="stylesheet" type="text/css" href="../css/navigation.css">
  <link rel="stylesheet" type="text/css" href="../css/footer.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <style>
   .fixed-promo-icon {
    position: fixed;
    bottom: 30px;
    right: 30px;
    z-index: 999;
  }

  .fixed-promo-icon button {
    background-color: #e74c3c;
    color: #fff;
    border: none;
    padding: 14px 16px;
    border-radius: 50%;
    font-size: 20px;
    box-shadow: 0 6px 12px rgba(0,0,0,0.2);
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .fixed-promo-icon button:hover {
    background-color: #c0392b;
  }
  </style>
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
  

<!-- Fixed Promo Button -->
<div class="fixed-promo-icon">
  <button onclick="openPromoPopup()" title="View Promotions">
    <i class="fa fa-tags" aria-hidden="true"></i>
  </button>
</div>
<script>
  function openPromoPopup() {
    const popupWidth = 1000;
    const popupHeight = 700;
    const left = (screen.width - popupWidth) / 2;
    const top = (screen.height - popupHeight) / 2;

    window.open(
      '/Grocery_Store/IndexServlet', // Your promotions servlet or JSP page
      'PromoPopup',
      `width=${popupWidth},height=${popupHeight},top=${top},left=${left},resizable=yes,scrollbars=yes`
    );
  }
</script>


  <!-- Category -->
  <section class="category-section">
    <div class="category-header">
      <h2>Shop by Category</h2>
      <a href="../thilakshana/Store.jsp" class="view-more">View more</a>
    </div>
  
    <div class="category-grid">
      <!-- <div class="category-item">
        <a href="../thilakshana/Store.jsp#Avurudu" id="btn1">
        <img src="../images/catg1.png" alt="Avurudu Kade" />
        <p>Avurudu Kade</p></a>
      </div> -->
      <div class="category-item">
        <a href="../thilakshana/Store.jsp#Vegetables" id="btn2">
        <img src="../images/vegetables.jpg" alt="Vegetables" />
        <p>Vegetables</p></a>
      </div>
      <div class="category-item" >
        <a href="../thilakshana/Store.jsp#Fruits" id="btn3">
        <img src="../images/fruits.jpg" alt="Fruits" />
        <p>Fruits</p></a>
      </div>
      <div class="category-item">
        <a href="../thilakshana/Store.jsp#Baby" id="btn4">
        <img src="../images/baby_pro.jpg" alt="Baby Products" />
        <p>Baby Products</p></a>
      </div>
      <div class="category-item">
        <a href="../thilakshana/Store.jsp#Dairy" id="btn5">
        <img src="../images/dairy.jpg" alt="Dairy" />
        <p>Dairy</p></a>
      </div>
      <div class="category-item">
        <a href="../thilakshana/Store.jsp#Beverages" id="btn6">
        <img src="../images/beverages.jpg" alt="Beverages" />
        <p>Beverages</p></a>
      </div>
      <div class="category-item">
        <a href="../thilakshana/Store.jsp#Food" id="btn7">
        <img src="../images/food_cup.jpg" alt="Food Cupboard" />
        <p>Food Cupboard</p></a>
      </div>
      <!-- Add more categories as needed -->
      <div class="category-item">
        <a href="../thilakshana/Store.jsp#Bakery" id="btn8">
        <img src="../images/bakery.jpg" alt="Bakery" />
        <p>Bakery</p></a>
      </div>
      <div class="category-item">
        <a href="../thilakshana/Store.jsp#Household" id="btn9">
        <img src="../images/household.jpg" alt="Household" />
        <p>Household</p></a>
      </div>
      <div class="category-item">
        <a href="../thilakshana/Store.jsp#Meats" id="btn10">
        <img src="../images/meats.jpg" alt="Meats" />
        <p>Meats</p></a>
      </div>
      <div class="category-item">
        <a href="../thilakshana/Store.jsp#Seafood" id="btn11">
        <img src="../images/seafood.jpg" alt="Seafood" />
        <p>Seafood</p></a>
      </div>
      <div class="category-item">
        <a href="../thilakshana/Store.jsp#Cooking" id="btn12">
        <img src="../images/cooking.jpg" alt="Cooking Essentials" />
        <p>Cooking Essentials</p></a>
      </div>
      <div class="category-item">
        <a href="../thilakshana/Store.jsp#Snacks" id="btn13">
        <img src="../images/snack.jpg" alt="Snacks & Confectionery" />
        <p>Snacks & Confectionery</p></a>
      </div>
      <div class="category-item">
        <a href="../thilakshana/Store.jsp#Frozen" id="btn14">
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
    &copy; 2025 Tharu Baby Co. All rights reserved.
  </div>
</footer>

  <script src="../js/index.js"></script>
  <script src="../js/footer.js"></script>
   <script>
        // Function to scroll to the women 
   {function scrollToHeading() {
        document.getElementById('Avurudu').scrollIntoView({ behavior: 'smooth' });
    }
    // Add an event listener to the button to call the function when clicked
    document.getElementById('btn1').addEventListener('click', scrollToHeading);}
        
// Function to scroll to the women 
   {function scrollToHeading() {
        document.getElementById('Vegetables').scrollIntoView({ behavior: 'smooth' });
    }
    // Add an event listener to the button to call the function when clicked
    document.getElementById('btn2').addEventListener('click', scrollToHeading);}
    
// Function to scroll to the women 
   {function scrollToHeading() {
        document.getElementById('Fruits').scrollIntoView({ behavior: 'smooth' });
    }
    // Add an event listener to the button to call the function when clicked
    document.getElementById('btn3').addEventListener('click', scrollToHeading);}
    
// Function to scroll to the women 
   {function scrollToHeading() {
        document.getElementById('Baby').scrollIntoView({ behavior: 'smooth' });
    }
    // Add an event listener to the button to call the function when clicked
    document.getElementById('btn4').addEventListener('click', scrollToHeading);}
    
// Function to scroll to the women 
   {function scrollToHeading() {
        document.getElementById('Dairy').scrollIntoView({ behavior: 'smooth' });
    }
    // Add an event listener to the button to call the function when clicked
    document.getElementById('btn5').addEventListener('click', scrollToHeading);}
    
// Function to scroll to the women 
   {function scrollToHeading() {
        document.getElementById('Beverages').scrollIntoView({ behavior: 'smooth' });
    }
    // Add an event listener to the button to call the function when clicked
    document.getElementById('btn6').addEventListener('click', scrollToHeading);}
    
// Function to scroll to the women 
   {function scrollToHeading() {
        document.getElementById('Food').scrollIntoView({ behavior: 'smooth' });
    }
    // Add an event listener to the button to call the function when clicked
    document.getElementById('btn7').addEventListener('click', scrollToHeading);}
    
// Function to scroll to the women 
   {function scrollToHeading() {
        document.getElementById('Bakery').scrollIntoView({ behavior: 'smooth' });
    }
    // Add an event listener to the button to call the function when clicked
    document.getElementById('btn8').addEventListener('click', scrollToHeading);}
    
// Function to scroll to the women 
   {function scrollToHeading() {
        document.getElementById('Household').scrollIntoView({ behavior: 'smooth' });
    }
    // Add an event listener to the button to call the function when clicked
    document.getElementById('btn9').addEventListener('click', scrollToHeading);}
    
// Function to scroll to the women 
   {function scrollToHeading() {
        document.getElementById('Meats').scrollIntoView({ behavior: 'smooth' });
    }
    // Add an event listener to the button to call the function when clicked
    document.getElementById('btn10').addEventListener('click', scrollToHeading);}
    
// Function to scroll to the women 
   {function scrollToHeading() {
        document.getElementById('Seafood').scrollIntoView({ behavior: 'smooth' });
    }
    // Add an event listener to the button to call the function when clicked
    document.getElementById('btn11').addEventListener('click', scrollToHeading);}
    
// Function to scroll to the women 
   {function scrollToHeading() {
        document.getElementById('Cooking').scrollIntoView({ behavior: 'smooth' });
    }
    // Add an event listener to the button to call the function when clicked
    document.getElementById('btn12').addEventListener('click', scrollToHeading);}
    
// Function to scroll to the women 
   {function scrollToHeading() {
        document.getElementById('Snacks').scrollIntoView({ behavior: 'smooth' });
    }
    // Add an event listener to the button to call the function when clicked
    document.getElementById('btn13').addEventListener('click', scrollToHeading);}
    
// Function to scroll to the women 
   {function scrollToHeading() {
        document.getElementById('Frozen').scrollIntoView({ behavior: 'smooth' });
    }
    // Add an event listener to the button to call the function when clicked
    document.getElementById('btn14').addEventListener('click', scrollToHeading);}
   </script>
</body>
</html>