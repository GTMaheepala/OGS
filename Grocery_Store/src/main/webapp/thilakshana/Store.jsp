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
          <a href="../Com/index.jsp">
            <img class="logo" src="../images/logo_OGS.png" alt="Logo image" href="../Com/index.jsp">
          </a>
          <h2 class="name">TheFreshMart</h2>
          <ul class="nav-links">
            <li><a href="../Com/index.jsp">Home</a></li>
            <li><a href="Store.jsp" class="active">Store</a></li>
            <li><a href="../Com/aboutus.jsp">About Us</a></li>
           <li><a href="../tharushi/ContactUs.jsp">Contact Us</a></li>
            <%
    		Object user = session.getAttribute("user");
    		String profileLink = (user != null) ? "../Com/profile.jsp" : "../Com/login.jsp";
			%>
			<li><a href="<%= profileLink %>"><i class="fa fa-user-circle-o" style="font-size: 30px;" aria-hidden="true"></i></a></li>
            <li><a href="#" onclick="toggleCartPanel()"><i class="fa fa-cart-arrow-down" style="font-size: 30px;" id="cart-icon" data-quantity="0" aria-hidden="true"></i></a></li>
            <!-- <li><a href="#" onclick="toggleCartPanel()">Cart 🛒</a></li> -->

          </ul>
        </div>
        <div class="search-bar">
            <select class="category-dropdown">
              <option value="">Categories</option>
              <option value="fruits">Fruits</option>
              <option value="Vegetables">Vegetables</option>
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
    <br><br><br>
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

    <section id="products" class="product-section">
      <h2 id="Vegetables">Vegetables</h2>
      <div class="product-grid">
        <div class="product">
          <img src="../images/tomato.jpg" alt="tomato"/>
          <h3 class="category">Tomato</h3>
          <h3 class ="price">Rs. 375.00 / 500g</h3>
          <button class="but2" onclick="addToCart('Tomato', 375)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/onion.jpg" alt="onion"/>
          <h3 class="category">Onion</h3>
          <h3 class ="price">Rs. 120.00 / 500g</h3>
          <button class="but2" onclick="addToCart('Oninon', 120)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/carrot.jpg" alt="Carrot"/>
            <h3 class="category">Carrots</h3>
            <h3 class ="price">Rs. 340.00 / 500g</h3>
            <button class="but2" onclick="addToCart('Carrots', 340)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
          </div>        
        <div class="product">
            <img src="../images/thalanabatu.png" alt="Thalanabatu"/>
            <h3 class="category">Thalanabatu</h3>
            <h3 class ="price">Rs. 130.00 / 250g</h3>
            <button class="but2" onclick="addToCart('Thalanabatu', 130)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>        
        <div class="product">
            <img src="../images/potato.png" alt="Potato"/>
            <h3 class="category">Potato</h3>
            <h3 class ="price">Rs. 180.00 / 500g</h3>
            <button class="but2" onclick="addToCart('Potato', 180)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/gotukola.png" alt="Gotukola"/>
            <h3 class="category">Gotukola</h3>
            <h3 class ="price">Rs. 50.00 / 100g</h3>
            <button class="but2" onclick="addToCart('Gotukola', 50)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/coconut.png" alt="Coconut"/>
            <h3 class="category">Coconut</h3>
            <p>Rs. 596.00 / 3pcs</p>
            <button class="but2" onclick="addToCart('Coconut', 198)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/ladiesfingers.png" alt="Ladieesfingers"/>
            <h3 class="category">Ladies Fingers</h3>
            <h3 class ="price">Rs. 87.00 / 250g</h3>
            <button class="but2" onclick="addToCart('Ladieesfingers', 87)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/pumpkin.png" alt="Pumpkin"/>
            <h3 class="category">Pumpkin</h3>
            <h3 class ="price">Rs. 110.00 / 500g</h3>
            <button class="but2" onclick="addToCart('Pumpkin', 110)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
      </div>
    </section>
    
    <section id="products" class="product-section" >
      <h2 id="Fruits">Fruits</h2>
      <div class="product-grid">
        <div class="product">
            <img src="../images/papaw.png" alt="Papaw"/>
            <h3 class="category">Papaw</h3>
            <h3 class ="price">Rs. 175.00 / 1kg</h3>
            <button class="but2" onclick="addToCart('Papaw', 175)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/guava.jpg" alt="onion"/>
          <h3 class="category">Guava</h3>
          <h3 class ="price">Rs. 960.00 / 1.00kg</h3>
          <button class="but2" onclick="addToCart('Guava', 960)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Banana.png" alt="Banana"/>
          <h3 class="category">Banana-Kolikuttu</h3>
          <h3 class ="price">Rs. 145.00 / 500g</h3>
          <button class="but2" onclick="addToCart('Banana', 145)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/waterMelon.png" alt="WaterMelon"/>
            <h3 class="category">Water Melon</h3>
            <h3 class ="price">Rs. 110.00 / 1kg</h3>
            <button class="but2" onclick="addToCart('WaterMelon', 110)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/pineapple.jpg" alt="Papaw"/>
            <h3 class="category">Pineapple</h3>
            <h3 class ="price">Rs. 400.00 / 1.25kg</h3>
            <button class="but2" onclick="addToCart('Pineapple', 400)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/mandarin.jpg" alt="Thalanabatu"/>
            <h3 class="category">Imported Mandarin</h3>
            <h3 class ="price">Rs. 840.00 / 600g</h3>
            <button class="but2" onclick="addToCart('Imported Mandarin', 840)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
      </div>
    </section>
    
    <!-- <section id="products" class="product-section" >
      <h2 id="Avurudu">Avurudu Kade</h2>
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
      </div>
    </section> -->
    
    <section id="products" class="product-section">
      <h2 id="Baby">Baby Products</h2>
      <div class="product-grid">
        <div class="product">
          <img src="../images/Marvel.jpg" alt="tomato"/>
          <h3 class="category">Marvel Baby Diapers, Large</h3>
          <h3 class ="price">Rs. 3600.00 / 48pcs</h3>
          <button class="but2" onclick="addToCart('Marvel Baby Diapers, Large', 3600)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Diapers.jpg" alt="onion"/>
          <h3 class="category">Marvel Baby Diapers, Medium</h3>
          <h3 class ="price">Rs. 3600.00 / 48pcs</h3>
          <button class="but2" onclick="addToCart('Marvel Baby Diapers, Medium', 3600)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Pears.jpg" alt="Banana"/>
          <h3 class="category">Pears Bedtime Baby Soap Multi pack 70g</h3>
          <h3 class ="price">Rs. 510.00 / 5pcs</h3>
          <button class="but2" onclick="addToCart('Pears Bedtime Baby Soap Multi pack', 510)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Khomba.jpg" alt="Carrot"/>
            <h3 class="category">Khomba Baby Soap Milk</h3>
            <h3 class ="price">Rs. 140.00 / 90g</h3>
            <button class="but2" onclick="addToCart('Khomba Baby Soap Milk', 140)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
          </div>
        <div class="product">
            <img src="../images/Velona.jpg" alt="Papaw"/>
            <h3 class="category">Velona Cuddles Baby Diapers,L</h3>
            <h3 class ="price">Rs. 3231.00 / 32pcs</h3>
            <button class="but2" onclick="addToCart('Velona Cuddles Baby Diapers,L', 3231)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Wash.jpg" alt="Thalanabatu"/>
            <h3 class="category">Panda Baby Wash</h3>
            <h3 class ="price">Rs. 130.00 / 250g</h3>
            <button class="but2" onclick="addToCart('Panda Baby Wash', 130)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
      </div>
    </section>
    
    <section id="products" class="product-section">
      <h2 id="Dairy">Dairy</h2>
      <div class="product-grid">
        <div class="product">
          <img src="../images/Butter.jpg" alt="tomato"/>
          <h3 class="category">Panda Baby Wash</h3>
          <h3 class ="price">Rs. 792.00 / 200g</h3>
          <button class="but2" onclick="addToCart('Panda Baby Wash', 792)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Curd.jpg" alt="onion"/>
          <h3 class="category">Kotmale Curd</h3>
          <h3 class ="price">Rs. 510.00 / 900ml</h3>
          <button class="but2" onclick="addToCart('Kotmale Curd', 510)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Yoghurt.jpg" alt="Banana"/>
          <h3 class="category">Kotmale Drinking Yoghurt Strawberry</h3>
          <h3 class ="price">Rs. 135.00 / 180ml</h3>
          <button class="but2" onclick="addToCart('Kotmale Drinking Yoghurt Strawberry', 135)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Multi.jpg" alt="Carrot"/>
            <h3 class="category">Newdale Set Yoghurt Multi Pack 80 g</h3>
            <h3 class ="price">Rs. 392.00 / 8pcs</h3>
            <button class="but2" onclick="addToCart('Newdale Set Yoghurt Multi Pack', 392)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
          </div>
        <div class="product">
            <img src="../images/Newdale.jpg" alt="Papaw"/>
            <h3 class="category">Newdale Set Plain Yoghurt</h3>
            <h3 class ="price">Rs. 56.00 / 80g</h3>
            <button class="but2" onclick="addToCart('Newdale Set Plain Yoghurt', 56)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Richlife.jpg" alt="Thalanabatu"/>
            <h3 class="category">Richlife Full Cream Fresh Milk</h3>
            <h3 class ="price">Rs. 112.00 / 180ml</h3>
            <button class="but2" onclick="addToCart('Richlife Full Cream Fresh Milk', 112)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
      </div>
    </section>
    
    <section id="products" class="product-section">
      <h2 id="Beverages">Beverages</h2>
      <div class="product-grid">
        <div class="product">
          <img src="../images/Viva.jpg" alt="tomato"/>
          <h3 class="category">Viva Malted Food Drink</h3>
          <h3 class ="price">Rs. 1080.00 / 600g</h3>
          <button class="but2" onclick="addToCart('Viva Malted Food Drink', 1080)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Dew.jpg" alt="onion"/>
          <h3 class="category">Mountain Dew</h3>
          <h3 class ="price">Rs. 300.00 / 1.50l</h3>
          <button class="but2" onclick="addToCart('Mountain Dew', 300)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Nectar.jpg" alt="Banana"/>
          <h3 class="category">Kist Woodapple Nectar</h3>
          <h3 class ="price">Rs. 412.50 / 1l</h3>
          <button class="but2" onclick="addToCart('Kist Woodapple Nectar', 412)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Absolute.jpg" alt="Carrot"/>
            <h3 class="category">Kist Absolute Apple Juice</h3>
            <h3 class ="price">Rs. 825.00 / 1l</h3>
            <button class="but2" onclick="addToCart('Kist Absolute Apple Juice', 825)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
          </div>
        <div class="product">
            <img src="../images/Horlicks.jpg" alt="Papaw"/>
            <h3 class="category">Horlicks Original Carton</h3>
            <h3 class ="price">Rs. 770.00 / 350g</h3>
            <button class="but2" onclick="addToCart('Horlicks Original Carton', 770)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Necto.jpg" alt="Thalanabatu"/>
            <h3 class="category">Elephant House Necto</h3>
            <h3 class ="price">Rs. 400.00 / 1.5l</h3>
            <button class="but2" onclick="addToCart('Elephant House Necto', 400)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
      </div>
    </section>
    
    <section id="products" class="product-section">
      <h2 id="Food">Food Cupboard</h2>
      <div class="product-grid">
        <div class="product">
          <img src="../images/Soy.jpg" alt="tomato"/>
          <h3 class="category">Lankasoy Meaty Soy</h3>
          <h3 class ="price">Rs. 107.00 / 60g</h3>
          <button class="but2" onclick="addToCart('Lankasoy Meaty Soy', 107)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Noodles.jpg" alt="onion"/>
          <h3 class="category">Sera Chicken Flavoured Noodles</h3>
          <h3 class ="price">Rs. 296.00 / 325g</h3>
          <button class="but2" onclick="addToCart('Sera Chicken Flavoured Noodles', 296)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Spaghetti.jpg" alt="Banana"/>
          <h3 class="category">Roza Spaghetti</h3>
          <h3 class ="price">Rs. 380.00 / 400g</h3>
          <button class="but2" onclick="addToCart('Roza Spaghetti', 380)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Fusilli.jpg" alt="Carrot"/>
            <h3 class="category">Roza Fusilli</h3>
            <h3 class ="price">Rs. 368.00 / 400g</h3>
            <button class="but2" onclick="addToCart('Roza Fusilli', 368)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
          </div>
        <div class="product">
            <img src="../images/Elbow.jpg" alt="Papaw"/>
            <h3 class="category">Roza Elbow</h3>
            <h3 class ="price">Rs. 322.00 / 400g</h3>
            <button class="but2" onclick="addToCart('Roza Elbow', 322)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Jam.jpg" alt="Thalanabatu"/>
            <h3 class="category">Kist Mixed Fruit Jam</h3>
            <h3 class ="price">Rs. 412.00 / 510g</h3>
            <button class="but2" onclick="addToCart('Kist Mixed Fruit Jam', 412)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
      </div>
    </section>
    
    <section id="products" class="product-section">
      <h2 id="Bakery">Bakery</h2>
      <div class="product-grid">
        <div class="product">
          <img src="../images/Roll.jpg" alt="tomato"/>
          <h3 class="category">Finagle Swiss Roll Chocolate</h3>
          <h3 class ="price">Rs. 645.00 / 225g</h3>
          <button class="but2" onclick="addToCart('Finagle Swiss Roll Chocolate', 645)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Tiara.jpg" alt="onion"/>
          <h3 class="category">Tiara Chocolate Layer Cake</h3>
          <h3 class ="price">Rs. 522.00 / 310g</h3>
          <button class="but2" onclick="addToCart('Tiara Chocolate Layer Cake', 522)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Bread.jpg" alt="Banana"/>
          <h3 class="category">Finagle Sandwich Bread</h3>
          <h3 class ="price">Rs. 495.00 / 500g</h3>
          <button class="but2" onclick="addToCart('Finagle Sandwich Bread', 495)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Rollo.jpg" alt="Carrot"/>
            <h3 class="category">Tiara Rollo Cake</h3>
            <h3 class ="price">Rs. 70.00 / 25g</h3>
            <button class="but2" onclick="addToCart('Tiara Rollo Cake', 70)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
          </div>
        <div class="product">
            <img src="../images/Lion.jpg" alt="Papaw"/>
            <h3 class="category">Little Lion Chocolate Roll</h3>
            <h3 class ="price">Rs. 520.00 / 200g</h3>
            <button class="but2" onclick="addToCart('Little Lion Chocolate Roll', 520)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Soft.jpg" alt="Thalanabatu"/>
            <h3 class="category">Little Lion Soft Log Chocolate Cake</h3>
            <h3 class ="price">Rs. 590.00 / 325g</h3>
            <button class="but2" onclick="addToCart('Little Lion Soft Log Chocolate Cake', 590)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
      </div>
    </section>
    
    <section id="products" class="product-section">
      <h2 id="Household">Household</h2>
      <div class="product-grid">
        <div class="product">
          <img src="../images/Comfort.jpg" alt="tomato"/>
          <h3 class="category">Surf Excel Laundry Detergent Powder, Comfort</h3>
          <h3 class ="price">Rs. 430.00 / 1kg</h3>
          <button class="but2" onclick="addToCart('Surf Excel Laundry Detergent Powder', 430)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Serviettes.jpg" alt="onion"/>
          <h3 class="category">Flora Paper Serviettes 1Ply</h3>
          <h3 class ="price">Rs. 316.00 / 100pcs</h3>
          <button class="but2" onclick="addToCart('Flora Paper Serviettes 1Ply', 316)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Liquid.jpg" alt="Banana"/>
          <h3 class="category">Diva Germ Guard Liquid Detergent</h3>
          <h3 class ="price">Rs. 522.00 / 1l</h3>
          <button class="but2" onclick="addToCart('Diva Germ Guard Liquid Detergent', 522)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Vim.jpg" alt="Carrot"/>
            <h3 class="category">Vim Anti Smell Liquid Dishwash</h3>
            <h3 class ="price">Rs. 360.00 / 500ml</h3>
            <button class="but2" onclick="addToCart('Vim Anti Smell Liquid Dishwash', 360)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
          </div>
        <div class="product">
            <img src="../images/Tissues.jpg" alt="Papaw"/>
            <h3 class="category">Flora Facial Tissues</h3>
            <h3 class ="price">Rs. 517.00 / 1pcs</h3>
            <button class="but2" onclick="addToCart('Flora Facial Tissues', 517)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Amritha.jpg" alt="Thalanabatu"/>
            <h3 class="category">Amritha Joss Sticks 4 In1</h3>
            <h3 class ="price">Rs. 127.00 / 20pcs</h3>
            <button class="but2" onclick="addToCart('Amritha Joss Sticks 4 In1', 127)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
      </div>
    </section>
    
    <section id="products" class="product-section">
      <h2 id="Meats">Meats</h2>
      <div class="product-grid">
        <div class="product">
          <img src="../images/Meat.jpg" alt="tomato"/>
          <h3 class="category">Prima Chicken Meat Balls</h3>
          <h3 class ="price">Rs. 667.00 / 500g</h3>
          <button class="but2" onclick="addToCart('Prima Chicken Meat Balls', 667)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Sausages.jpg" alt="onion"/>
          <h3 class="category">Goldi Supreme Chicken Sausages</h3>
          <h3 class ="price">Rs. 928.00 / 500g</h3>
          <button class="but2" onclick="addToCart('Goldi Supreme Chicken Sausages', 928)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Bairaha.jpg" alt="Banana"/>
          <h3 class="category">Bairaha Chicken Sausages</h3>
          <h3 class ="price">Rs. 525.00 / 300g</h3>
          <button class="but2" onclick="addToCart('Bairaha Chicken Sausages', 525)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Chicken.jpg" alt="Carrot"/>
            <h3 class="category">Prima Whole Chicken</h3>
            <h3 class ="price">Rs. 1328.00 / 1kg</h3>
            <button class="but2" onclick="addToCart('Prima Whole Chicken', 1328)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
          </div>
        <div class="product">
            <img src="../images/Keells.jpg" alt="Papaw"/>
            <h3 class="category">Keells Chicken Sausages</h3>
            <h3 class ="price">Rs. 1150.00 / 500g</h3>
            <button class="but2" onclick="addToCart('Keells Chicken Sausages', 1150)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Burgers.jpg" alt="Thalanabatu"/>
            <h3 class="category">Crescent Chicken Burgers</h3>
            <h3 class ="price">Rs. 535.00 / 200g</h3>
            <button class="but2" onclick="addToCart('Crescent Chicken Burgers', 535)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
      </div>
    </section>
    
    <section id="products" class="product-section">
      <h2 id="Seafood">Seafood</h2>
      <div class="product-grid">
        <div class="product">
          <img src="../images/Linna.jpg" alt="tomato"/>
          <h3 class="category">Linna Fish Slices</h3>
          <h3 class ="price">Rs. 550.00 / 500g</h3>
          <button class="but2" onclick="addToCart('Linna Fish Slices', 550)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Tuna.jpg" alt="onion"/>
          <h3 class="category">Tuna Slices</h3>
          <h3 class ="price">Rs. 835.00 / 500g</h3>
          <button class="but2" onclick="addToCart('Tuna Slices', 835)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Thalapath.jpg" alt="Banana"/>
          <h3 class="category">Thalapath Slices</h3>
          <h3 class ="price">Rs. 1360.00 / 500g</h3>
          <button class="but2" onclick="addToCart('Thalapath Slices', 1360)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Sword.jpg" alt="Carrot"/>
            <h3 class="category">Sword Fish Slices</h3>
            <h3 class ="price">Rs. 790.00 / 500g</h3>
            <button class="but2" onclick="addToCart('Sword Fish Slices', 790)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
          </div>
        <div class="product">
            <img src="../images/Paraw.jpg" alt="Papaw"/>
            <h3 class="category">Paraw Slices</h3>
            <h3 class ="price">Rs. 470.00 / 250g</h3>
            <button class="but2" onclick="addToCart('Paraw Slices', 470)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Diamond.jpg" alt="Thalanabatu"/>
            <h3 class="category">Diamond Tuna Sunflower Oil</h3>
            <h3 class ="price">Rs. 700.00 / 185g</h3>
            <button class="but2" onclick="addToCart('Diamond Tuna Sunflower Oil', 700)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
      </div>
    </section>
    
    <section id="products" class="product-section">
      <h2 id="Cooking">Cooking Essentials</h2>
      <div class="product-grid">
        <div class="product">
          <img src="../images/Atta.jpg" alt="tomato"/>
          <h3 class="category">Seven Star Chakki Atta Flour</h3>
          <h3 class ="price">Rs. 325.00 / 1kg</h3>
          <button class="but2" onclick="addToCart('Seven Star Chakki Atta Flour', 325)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Appalam.jpg" alt="onion"/>
          <h3 class="category">Alli Appalam</h3>
          <h3 class ="price">Rs. 130.00 / 60g</h3>
          <button class="but2" onclick="addToCart('Alli Appalam', 130)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Chakki.jpg" alt="Banana"/>
          <h3 class="category">Prima Chakki Atta Flour</h3>
          <h3 class ="price">Rs. 260.00 / 1kg</h3>
          <button class="but2" onclick="addToCart('Prima Chakki Atta Flour', 260)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Sago.jpg" alt="Carrot"/>
            <h3 class="category">Ruhunu Sago</h3>
            <h3 class ="price">Rs. 174.00 / 200g</h3>
            <button class="but2" onclick="addToCart('Ruhunu Sago', 174)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
          </div>
        <div class="product">
            <img src="../images/Sauce.jpg" alt="Papaw"/>
            <h3 class="category">Kist Soya Sauce</h3>
            <h3 class ="price">Rs. 224.00 / 350g</h3>
            <button class="but2" onclick="addToCart('Kist Soya Sauce', 224)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Rosemary.jpg" alt="Thalanabatu"/>
            <h3 class="category">Finch Rosemary Leaves</h3>
            <h3 class ="price">Rs. 392.00 / 20g</h3>
            <button class="but2" onclick="addToCart('Finch Rosemary Leaves', 392)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
      </div>
    </section>
    
    <section id="products" class="product-section">
      <h2 id="Snacks">Snacks & Confectionery</h2>
      <div class="product-grid">
        <div class="product">
          <img src="../images/Marie.jpg" alt="tomato"/>
          <h3 class="category">Munchee Tikiri Marie</h3>
          <h3 class ="price">Rs. 264.00 / 360g</h3>
          <button class="but2" onclick="addToCart('Munchee Tikiri Marie', 264)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Ritzbury.jpg" alt="onion"/>
          <h3 class="category">Ritzbury Fruit and Nut Chocolate</h3>
          <h3 class ="price">Rs. 450.00 / 170g</h3>
          <button class="but2" onclick="addToCart('Ritzbury Fruit and Nut Chocolate', 450)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Cassava.jpg" alt="Banana"/>
          <h3 class="category">Scan Cassava Chips Hot & Spicy</h3>
          <h3 class ="price">Rs. 144.00 / 50g</h3>
          <button class="but2" onclick="addToCart('Scan Cassava Chips Hot & Spicy', 144)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Jumbo.jpg" alt="Carrot"/>
            <h3 class="category">Scan Jumbo Peanuts</h3>
            <h3 class ="price">Rs. 272.00 / 70g</h3>
            <button class="but2" onclick="addToCart('Scan Jumbo Peanuts', 272)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
          </div>
        <div class="product">
            <img src="../images/Kome.jpg" alt="Papaw"/>
            <h3 class="category">Munchee Kome Rice Cracker</h3>
            <h3 class ="price">Rs. 96.00 / 45g</h3>
            <button class="but2" onclick="addToCart('Munchee Kome Rice Cracker', 96)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Chocolate.jpg" alt="Thalanabatu"/>
            <h3 class="category">Kist Chocolate Cream</h3>
            <h3 class ="price">Rs. 290.00 / 210g</h3>
            <button class="but2" onclick="addToCart('Kist Chocolate Cream', 290)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
      </div>
    </section>
    
    <section id="products" class="product-section" class="Frozen_Food">
      <h2 id="Frozen">Frozen Food</h2>
      <div class="product-grid">
        <div class="product">
          <img src="../images/Paratha.jpg" alt="tomato"/>
          <h3 class="category">Spring Home Rotti Paratha Plain</h3>
          <h3 class ="price">Rs. 888.00 / 5pcs</h3>
          <button class="but2" onclick="addToCart('Spring Home Rotti Paratha Plain', 888)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Rolls.jpg" alt="onion"/>
          <h3 class="category">Crescent Fish Rolls</h3>
          <h3 class ="price">Rs. 586.00 / 500g</h3>
          <button class="but2" onclick="addToCart('Crescent Fish Rolls', 586)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
          <img src="../images/Kieves.jpg" alt="Banana"/>
          <h3 class="category">Crescent Mini Kieves</h3>
          <h3 class ="price">Rs. 730.00 / 240g</h3>
          <button class="but2" onclick="addToCart('Crescent Mini Kieves', 730)">Add to Cart</button>
          <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Drumsticks.jpg" alt="Carrot"/>
            <h3 class="category">Sam`s Chicken Drumsticks</h3>
            <h3 class ="price">Rs. 938.00 / 500g</h3>
            <button class="but2" onclick="addToCart('Sam`s Chicken Drumsticks', 938)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
          </div>
        <div class="product">
            <img src="../images/Sam.jpg" alt="Papaw"/>
            <h3 class="category">Sam`s Fish Chinese Rolls</h3>
            <h3 class ="price">Rs. 688.00 / 500g</h3>
            <button class="but2" onclick="addToCart('Sam`s Fish Chinese Rolls', 688)">Add to Cart</button>
            <button id="btn3" class="btn3">Buy Now</button>
        </div>
        <div class="product">
            <img src="../images/Samosa.jpg" alt="Thalanabatu"/>
            <h3 class="category">Crescent Vegetable Samosa</h3>
            <h3 class ="price">Rs. 610.00 / 360g</h3>
            <button class="but2" onclick="addToCart('Crescent Vegetable Samosa', 610)">Add to Cart</button>
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
  <script src="../js/index.js"></script>
</body>
</html>
