<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard </title>
<link rel="icon" type="image/png" href="../images/logo_OGS_4.png">
  <link rel="stylesheet" href="../css/e_dashboard.css"/>
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
    <h2>Admin Panel</h2>
    <ul>
      <a href="a_dashboard.jsp"><li class="active"><i class="fas fa-tachometer-alt"></i> Dashboard</li></a>
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

  <!-- Main Dashboard Content -->
  <div class="main-content">
    <header>
      <h1>Welcome, Admin!</h1>
      <form id="logoutForm" action="../LogoutServlet" method="get">
    		<button class="logout-btn" type="submit">Logout</button>
		</form>
    </header>

    <section class="cards">
      <a href="../deliveryGetAllDataServlet">
      <div class="card">
        <h3>Order & Delivery Management</h3>
        <p>Track and process orders</p>
      </div></a>
      <a href="../ConusGetAllServlet">
      <div class="card">
        <h3>Customer Messages</h3>
        <p>Respond to inquiries</p>
      </div></a>
      <a href="newproduct.jsp">
      <div class="card">
        <h3>New Product</h3>
        <p>Add new product</p>
      </div></a>
      <a href="#">
      <div class="card">
        <h3>Customer Reviews</h3>
        <p>Respond to inquiries</p>
      </div></a>
      <a href="../GetAllServlet">
      <div class="card">
        <h3>Customer Order</h3>
        <p>Respond to inquiries</p>
      </div></a>
      <a href="#">
        <div class="card">
          <h3>Sales Overview</h3>
          <p>Monthly stats and analytics</p>
        </div></a>
        <a href="inventory.jsp">
          <div class="card">
            <h3>Inventory Management</h3>
            <p>Manage stock levels</p>
          </div></a>
      <a href="../UserGetAllServlet">
      <div class="card">
        <h3>User Account Manage</h3>
        <p>User Account List</p>
      </div></a>
      <a href="../EmployeeGetAllServlet">
      <div class="card">
        <h3>Employee Manage</h3>
        <p>Employee List</p>
      </div></a>
      <a href="../PromotionGetAllServlet">
      <div class="card">
        <h3>Promotion Manage</h3>
        <p>Employee List</p>
      </div></a>
    </section>
  </div>
</body>
</html>