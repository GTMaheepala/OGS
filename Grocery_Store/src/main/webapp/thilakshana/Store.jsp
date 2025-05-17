<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Grocery Store</title>
  <link rel="stylesheet" href="../css/index.css">
  <link rel="stylesheet" href="../css/navigation.css">
  
  <link rel="stylesheet" href="../css/footer.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
  	body {
  margin-top: 50%;
  font-family: Arial, sans-serif;
  margin: 0;
  padding-top: 100px;
  background: #f8f9fa;
}

.logo{
  width: 20%;
  height: 20%;
}

.product-section, .cart-section {
  padding: 40px 20px;
  text-align: center;
}

.product-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 20fr));
  gap: 30px;
  margin-top: 20px;
}

.product {
  background: rgb(183, 242, 217);
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0 2px 10px rgba(0,0,0,0.1);
  transition: transform 0.3s;
}

.product:hover {
  transform: translateY(-5px);
}

.product img {
  width: 60%;
  height: 60%;
  border-radius: 5px;
}

.cart-section ul {
  list-style: none;
  padding: 0;
}

.cart-section li {
  margin: 10px 0;
  font-size: 1.1em;
}

@keyframes fadeIn {
  from { opacity: 0; transform: translateY(-30px); }
  to { opacity: 1; transform: translateY(0); }
}

.but2{
background: linear-gradient(45deg, #ff416c, #ff4b2b);
color: white;
padding: 10px 20px;
border: none;
border-radius: 30px;
font-size: 15px;
cursor: pointer;
transition: all 0.3s ease;
}

.btn3{
  background: linear-gradient(45deg, #ff416c, #ff4b2b);
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 30px;
  font-size: 15px;
  cursor: pointer;
  transition: all 0.3s ease;
}

.but2:hover{
transform: scale(1.05);
box-shadow: 0 0 15px rgba(255, 65, 108, 0.5);
}

.btn3.hover{
  transform: scale(1.05);
  box-shadow: 0 0 15px rgba(255, 65, 108, 0.5);
}

/* Cart Panel */

.cart-link {
  position: relative;
  display: inline-block;
}

.cart-icon{
  position:absolute;
  top:-8px;
  right:-10px;
  background-color: #28a745;
  color:white;
  padding:2px 6px;
  border-radius: 50%;
  font-weight: bold;
  font-size:12px;
  cursor:pointer;
}

#cart-count {
position: absolute;
top: -8px;
right: -10px;
background-color: red;
color: white;
font-size: 12px;
padding: 2px 6px;
border-radius: 50%;
font-weight: bold;
display: none;
}

/*#cart-icon[data-quality]::after{
  contain: '';
}*/

/*<!--#cart-icon[data-quantity]::after{
  content:'';
  position:absolute;
  top:0;
  right:-12px;
  width:20px;
  height:20px;
  background:var(--text-color);
  border-radius:50%;
  color:white;
  font-size: 12px;
  font-weight: 500;
  display:flex;
  justify-content:center;
  align-items:center;
}*/

.cart-panel {
  position: fixed;
  top: 60px;
  right: -350px;
  width: 300px;
  height: 100%;
  background: #fff;
  box-shadow: -2px 0 10px rgba(0,0,0,0.2);
  padding: 20px;
  transition: right 0.3s ease;
  z-index: 2000;
}

.cart-panel.open {
  right: 0;
}

.cart-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 15px;
}

.cart-header h3 {
  margin: 0;
  font-size: 1.2em;
}

.cart-content {
  max-height: 300px;
  overflow-y: auto;
}

.cart-item {
  border-bottom: 1px solid #ddd;
  padding: 8px 0;
  display: flex;
  justify-content: space-between;
}

.cart-quantity-controls {
  display: flex;
  align-items: center;
  gap: 10px;
  margin-top: 5px;
}

.cart-quantity-controls button {
  background-color: #ccc;
  border: none;
  padding: 4px 10px;
  font-size: 16px;
  cursor: pointer;
  border-radius: 4px;
}

.cart-quantity-controls button:hover {
  background-color: #bbb;
}

.cart-quantity {
  min-width: 20px;
  text-align: center;
  font-weight: bold;
}

.cart-header button {
  background: transparent;
  border: none;
  font-size: 1.2em;
  cursor: pointer;
}

.cart-panel ul {
  list-style: none;
  padding: 0;
  margin: 0;
  max-height: 400px;
  overflow-y: auto;
}

.cart-panel li {
  margin-bottom: 10px;
  padding-bottom: 8px;
  border-bottom: 1px solid #eee;
  font-size: 0.95em;
}

#panel-total {
  font-weight: bold;
  font-size: 1em;
  margin-top: 15px;
}


/*pay button*/
.pay-button {
  width: 100%;
  padding: 12px;
  margin-top: 15px;
  background-color: #28a745;
  color: white;
  border: none;
  font-size: 1em;
  border-radius: 8px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.pay-button:hover {
  background-color: #218838;
}

.total {
  font-weight: bold;
  margin-top: 10px;
}

/* banner */
.carousel-container {
margin-top: 200px;
position: relative;
width: 100%;
overflow: hidden;
background: white;
border-radius: 0;
box-shadow: none;
}

.carousel {
display: flex;
transition: transform 0.5s ease-in-out;
width: 100%;
}

.banner {
min-width: 100%;
box-sizing: border-box;
}

.banner img {
width: 100%;
height: auto;
display: block;
}

.nav {
position: fixed;
top: 0;
width:100%;
transform: translateY(-50%);
background-color: rgba(0, 0, 0, 0.4);
border: none;
color: white;
font-size: 28px;
padding: 10px 20px;
cursor: pointer;
border-radius: 50%;
z-index: 1000;
}

.nav.left {
left: 10px;
}

.nav.right {
right: 10px;
}

.nav:hover {
background-color: rgba(0, 0, 0, 0.6);
}

/* Icons */
.fa {
  font-size: 24px;
}

/* Search bar */
.search-bar {
  display: flex;
  align-items: center;
  gap: 10px;
  margin-top: 10px;
}

.search-bar input[type="text"] {
  padding: 8px 12px;
  border-radius: 5px;
  border: 1px solid #ccc;
  width: 720px;
  margin-left: 60px;
}

.category-dropdown {
  padding: 8px;
  border-radius: 5px;
  border: 1px solid #ccc;
  width:30%;
}

.search-btn {
  padding: 8px 14px;
  background-color: #43a047;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.search-btn:hover {
  background-color: #388e3c;
}
  </style>

</head>
<body>
<nav class="navbar">
        <div class="nav-container">
          <a href="Store.jsp">
            <img class="logo" src="images/logo_OGS.png" alt="Logo image" href="index.jsp">
          </a>
          <h2 class="name">TheFreshMart</h2>
          <ul class="nav-links">
            <li><a href="../Com/index.jsp">Home</a></li>
            <li><a href="Store.html" class="active">Store</a></li>
            <li><a href="../Com/aboutus.jsp">About Us</a></li>
           <li><a href="../tharushi/ContactUs.jsp">Contact Us</a></li>
            <%
    		Object user = session.getAttribute("user");
    		String profileLink = (user != null) ? "../Com/profile.jsp" : "../Com/login.jsp";
			%>
			<li><a href="<%= profileLink %>"><i class="fa fa-user-circle-o" style="font-size: 30px;" aria-hidden="true"></i></a></li>
            <li><a href="#" onclick="toggleCartPanel()" class="cart-link">
              <i class="fa fa-cart-arrow-down" style="font-size: 30px;" id="cart-icon" data-quantity="0" aria-hidden="true"><span id="cart-count">0</span></i></a></li>
            <!-- <li><a href="#" onclick="toggleCartPanel()">Cart 🛒</a></li> -->
          </ul>
        </div>
        <div class="search-bar">
            <select class="category-dropdown">
              <option value="">Categories</option>
              <option value="fruits">Fruits</option>
              <option value="vegetables">Vegetables</option>
              <option value="dairy">Dairy</option>
              <option value="snacks">Snacks and Confectionaries</option>
              <option value="beverages">Beverages</option>
              <option value="bakery">Bakery</option>
              <option value="meats">Meats</option>
              <option value="seafood">Seafood</option>
              <option value="baby-products">Baby Products</option>
            </select>
            
            <input type="text" placeholder="Search for any product..." />
            <button class="search-btn">Search</button>
          </div>
    </nav>
    <main>
        <!-- slide banner 2 -->
  <div class="slider">
    <div class="slide-track">
      <!-- Repeat images twice for seamless loop -->
      <div class="slide"><img src="images/OSbanner1.png" loading="lazy"></div>
      <div class="slide"><img src="images/OSbanner2.png" loading="lazy"></div>
      <div class="slide"><img src="images/OSbanner3.png" loading="lazy"></div>
      <div class="slide"><img src="images/OSbanner4.png" loading="lazy"></div>
      <div class="slide"><img src="images/OSbanner1.png" loading="lazy"></div>
      <div class="slide"><img src="images/OSbanner2.png" loading="lazy"></div>
  
      <!-- Repeat for seamless looping -->
      <div class="slide"><img src="images/OSbanner1.png" loading="lazy"></div>
      <div class="slide"><img src="images/OSbanner2.png" loading="lazy"></div>
      <div class="slide"><img src="images/OSbanner3.png" loading="lazy"></div>
      <div class="slide"><img src="images/OSbanner4.png" loading="lazy"></div>
      <div class="slide"><img src="images/OSbanner1.png" loading="lazy"></div>
      <div class="slide"><img src="images/OSbanner2.png" loading="lazy"></div>
    </div>
  </div>

    <section id="products" class="product-section">
      <h2>Best Of Fruits & Vegetables</h2>
      <div class="product-grid">
        <div class="product">
          <img src="images/tomato.jpg" alt="tomato"/>
          <h3 class="category">Tomato</h3>
          <h3 class ="price">Rs. 375.00 / 500g</h3>
          <button class="but2" onclick="addToCart('Tomato', 375)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="images/onion.jpg" alt="onion"/>
          <h3 class="category">Onion</h3>
          <h3 class ="price">Rs. 120.00 / 500g</h3>
          <button class="but2" onclick="addToCart('Oninon', 120)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="images/Banana.png" alt="Banana"/>
          <h3 class="category">Banana-Kolikuttu</h3>
          <h3 class ="price">Rs. 145.00 / 500g</h3>
          <button class="but2" onclick="addToCart('Banana', 145)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="images/carrot.jpg" alt="Carrot"/>
            <h3 class="category">Carrots</h3>
            <h3 class ="price">Rs. 340.00 / 500g</h3>
            <button class="but2" onclick="addToCart('Carrots', 340)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
          </div>
        <div class="product">
            <img src="images/papaw.png" alt="Papaw"/>
            <h3 class="category">Papaw</h3>
            <h3 class ="price">Rs. 175.00 / 1kg</h3>
            <button class="but2" onclick="addToCart('Papaw', 175)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="images/thalanabatu.png" alt="Thalanabatu"/>
            <h3 class="category">Thalanabatu</h3>
            <h3 class ="price">Rs. 130.00 / 250g</h3>
            <button class="but2" onclick="addToCart('Thalanabatu', 130)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="images/waterMelon.png" alt="WaterMelon"/>
            <h3 class="category">Water Melon</h3>
            <h3 class ="price">Rs. 110.00 / 1kg</h3>
            <button class="but2" onclick="addToCart('WaterMelon', 110)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="images/potato.png" alt="Potato"/>
            <h3 class="category">Potato</h3>
            <h3 class ="price">Rs. 180.00 / 500g</h3>
            <button class="but2" onclick="addToCart('Potato', 180)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="images/gotukola.png" alt="Gotukola"/>
            <h3 class="category">Gotukola</h3>
            <h3 class ="price">Rs. 50.00 / 100g</h3>
            <button class="but2" onclick="addToCart('Gotukola', 50)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="images/coconut.png" alt="Coconut"/>
            <h3 class="category">Coconut</h3>
            <p>Rs. 596.00 / 3pcs</p>
            <button class="but2" onclick="addToCart('Coconut', 198)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="images/ladiesfingers.png" alt="Ladieesfingers"/>
            <h3 class="category">Ladies Fingers</h3>
            <h3 class ="price">Rs. 87.00 / 250g</h3>
            <button class="but2" onclick="addToCart('Ladieesfingers', 87)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="images/pumpkin.png" alt="Pumpkin"/>
            <h3 class="category">Pumpkin</h3>
            <h3 class ="price">Rs. 110.00 / 500g</h3>
            <button class="but2" onclick="addToCart('Pumpkin', 110)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
      </div>
    </section>

    <!--<section id="cart" class="cart-section">
      <h2>Your Cart</h2>
      <ul id="cart-items"></ul>
      <p id="total">Total: Rs. 0</p>
    </section>
  </main>-->
  
 <!-- Cart Panel -->
<div id="cart-panel" class="cart-panel">
  <div class="cart-header">
    <h3>Your Cart</h3>
    <button onclick="toggleCartPanel()">❌</button>
  </div>

  <ul id="cart-items-panel"></ul>

  <p id="panel-total">Total: Rs. 0</p>

  <button class="pay-button" onclick="proceedToCheckout()">Proceed to Pay</button>
</div>

<script>
  // Sample cart data (You can replace this with server data)
  let cartItems = [
    { name: "Apples", price: 250, quantity: 2 },
    { name: "Milk", price: 240, quantity: 1 },
    { name: "Rice", price: 200, quantity: 5 }
  ];

  function renderCart() {
    const panel = document.getElementById("cart-items-panel");
    panel.innerHTML = "";

    cartItems.forEach((item, index) => {
      const li = document.createElement("li");
      li.innerHTML = `
        <div style="display:flex; justify-content:space-between; align-items:center; padding: 8px 0;">
          <span>${item.name} - Rs. ${item.price}</span>
          <div>
            <button onclick="decreaseQty(${index})">-</button>
            <span style="margin: 0 10px;">${item.quantity}</span>
            <button onclick="increaseQty(${index})">+</button>
          </div>
        </div>
      `;
      panel.appendChild(li);
    });

    updateTotal();
  }

  function increaseQty(index) {
    cartItems[index].quantity++;
    renderCart();
  }

  function decreaseQty(index) {
    if (cartItems[index].quantity > 1) {
      cartItems[index].quantity--;
      renderCart();
    }
  }

  function updateTotal() {
    const total = cartItems.reduce((sum, item) => sum + item.price * item.quantity, 0);
    document.getElementById("panel-total").textContent = `Total: Rs. ${total}`;
  }

  function toggleCartPanel() {
    const panel = document.getElementById("cart-panel");
    panel.style.display = panel.style.display === "none" ? "block" : "none";
  }

  function proceedToCheckout() {
    // Optional: Pass cart data using localStorage or URL (basic simulation here)
    localStorage.setItem("cartItems", JSON.stringify(cartItems));
    window.location.href = "checkout.jsp";
  }

  // Initial render
  renderCart();
</script>



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
        <li><a href="contactus.html">Contact Us</a></li>
        <li><a href="T&C.html">Terms of Service</a></li>
        <li><a href="P&P.html">Privacy Policy</a></li>
        <li><a href="faq.html">FAQ</a></li>
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
    &copy; 2025 GrocceryStorehtml. All rights reserved.
  </div>
</footer>
  <script src="../js/store.js"></script>
  <script src="../js/footer.js"></script>
</body>
</html>
