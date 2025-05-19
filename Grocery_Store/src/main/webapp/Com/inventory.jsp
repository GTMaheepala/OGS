<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<link rel="icon" type="image/png" href="../images/logo_OGS_4.png">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Inventory  management</title>
  <link rel="stylesheet" href="../css/inventory.css"/>
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
      <a href="e_dashboard.jsp"><li ><i class="fas fa-tachometer-alt"></i> Dashboard</li></a>
      <a href="about.jsp"><li><i class="fas fa-info-circle"></i> About Us</li></a>
      <a href="../thilakshana/Store.jsp"><li><i class="fas fa-store"></i> Store</li></a>
      <a href="inventory.jsp"><li class="active"><i class="fas fa-boxes"></i> Order & Inventory</li></a>
      <a href="../tharushi/ContactUs.jsp"><li><i class="fas fa-envelope"></i> Contact Us</li></a>
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

<!--body-->

  <div class="container">
    <!-- Add New Product -->
     <br>
     <section class="card">
      <h3>Add New Product</h3>
      <form id="addProductForm">
        <div class="form-group">
          <input type="text" placeholder="Product Name" id="productName" required />
          <input type="text" placeholder="Category" id="category" required />
        </div>
        <div class="form-group">
          <input type="number" placeholder="Price" id="price" required />
          <input type="number" placeholder="Stock" id="stock" required />
        </div>
        <button type="submit" class="btn green">Add Product</button>
      </form>
      <br>
     
    </section>
    <br>

    <!-- Manage Inventory -->
    <section class="card">
      <h3>Manage Inventory</h3>
      <table>
        <thead>
          <tr>
            <th>Product</th>
            <th>Category</th>
            <th>Stock Level</th>
            <th>Status</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody id="inventoryTable">
          <tr>
            <td>Organic Bananas</td>
            <td>Fruits</td>
            <td>45</td>
            <td><span class="status in-stock">In Stock</span></td>
            <td>
              <button class="btn blue" onclick="updateProduct(this)">Update</button>
              <button class="btn red" onclick="removeProduct(this)">Remove</button>
              
            </td>
          </tr>
          <tr>
            <td>Whole Milk</td>
            <td>Dairy</td>
            <td>5</td>
            <td><span class="status low-stock">Low Stock</span></td>
            <td>
              <button class="btn blue">Update</button>
              <button class="btn red">Remove</button>
            </td>
          </tr>
        </tbody>
      </table>
    </section>
<br><br>
    <!-- Promotions -->
    <section class="card flex">
      <!-- Create Promotion -->
      <div class="half">
        <h3>Create Promotion</h3>
        <input type="text" placeholder="Promotion Title" />
        <input type="text" placeholder="Promotion Value (e.g. 20% off)" />
        <input type="date" placeholder="Start Date" />
        <input type="date" placeholder="End Date" />
        <button class="btn green" id="addPromotionBtn">Add Promotion</button> 

      </div>
      
      <!-- Active Promotions -->
      <div class="half">
        <h3>Active Promotions</h3>

        <div class="promotion">
          <strong>Summer Sale</strong>
          <p>20% off on all fruits<br />June 1 - June 30</p>
          <span class="badge active">Active</span>
        </div>
        <div class="promotion">
          <strong>Clearance Sale</strong>
          <p>50% off on dairy products<br />July 1 - July 15</p>
          <span class="badge scheduled">Scheduled</span>
        </div>
      </div>
    </section>
  </div>
  
  <script src="../js/inventory.js"></script>
</body>
</html>