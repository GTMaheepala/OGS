<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Add new product</title>
  <link rel="stylesheet" href="../css/newproduct.css"/>
  <script src="../js/e_dashboard.js" defer></script>
  <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet"/>
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
<!-- Sidebar Navigation -->
  <div class="sidebar">
    <a href="index.jsp">
        <img class="logo" src="../images/logo_GS.png">
    </a>
    <h2>Employee Panel</h2>
    <ul>
      <a href="e_dashboard.jsp"><li class="active"><i class="fas fa-tachometer-alt"></i> Dashboard</li></a>
      <a href="aboutus.jsp"><li><i class="fas fa-info-circle"></i> About Us</li></a>
      <a href="estore.jsp"><li><i class="fas fa-store"></i> Store</li></a>
      <a href="inventory.jsp"><li><i class="fas fa-boxes"></i> Order & Inventory</li></a>
      <a href="contactus.jsp"><li><i class="fas fa-envelope"></i> Contact Us</li></a>
    </ul>
    <div class="profile-section">
      <ul>
        <%
   		Object user = session.getAttribute("user");
   		String profileLink = (user != null) ? "profile.jsp" : "login.jsp";
		%>
        <a href="profile.jsp"><li><i class="fas fa-user"></i> Profile</li></a>
        <a href="dashboard_Paymengt.php"><li><i class="fas fa-credit-card"></i> Payment</li></a>
        <a href="dashboard_more_info.php"><li><i class="fas fa-info-circle"></i> More Info</li></a>
        <a href="login.jsp" onclick="if(confirm('Are you sure you want to logout?')) { document.getElementById('logoutForm').submit(); } return false;"><li><i class="fas fa-sign-out-alt"></i> Logout</li></a>
      </ul>
    </div>
  </div>

    <div class="container">
      <h1>Upload New Product</h1>
      <br><br>
      <form id="productForm">

        <input type="text" id="number" placeholder="Product Number" required />
        <input type="text" id="name" placeholder="Product Name" required />
        <input type="textarea" id="name" placeholder="Product description" required />
        <input type="number" id="price" placeholder="Price" required />
        <input type="number" id="quantity" placeholder="Quantity" required />
        <select id="category" required>

          <option value="">Select Category</option>
          <option value="Fruits">Fruits</option>
          <option value="Vegetables">Vegetables</option>
          <option value="Dairy">Dairy</option>
          <option value="Baby Products">Baby Products</option>
          <option value="Beverages">Beverages</option>
          <option value="Bakery">Bakery</option>
          <option value="snacks">Snacks</option>
          <option value="others">others</option>

        </select>

        <div id="preview"></div>
        <div id="messageBox"></div>

        <input type="file" id="image" accept="image/*" />
        <br>
        <button type="submit">Submit</button>
      </form>
  <br>
      <h2>Inventory</h2>
      <table id="productTable">
        <thead>
          <tr>
            <th>Image</th>
            <th>Number</th>
            <th>Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Category</th>
          </tr>
        </thead>
        <tbody>
          <!-- Product rows go here -->
        </tbody>
      </table>
    </div>
  
   
  
  <script src="../js/newproduct.js"></script>
</body>
</html>