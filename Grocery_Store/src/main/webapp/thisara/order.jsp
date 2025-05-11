<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Order And Delivery Management</title>
  <link rel="stylesheet" href="css/order.css"/>
  <script src="js/order.js" defer></script>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
</head>
<body>

  <div class="sidebar">
    <a href="index.html">      
      <img class="logo" src="images/logo_GS.png" alt="TheFreshMart Logo"/>
    </a>
    <h2>Employee Panel</h2>
    <ul>
      <a href="Com/e_dashboard.jsp"><li><i class="fas fa-tachometer-alt"></i> Dashboard</li></a>
      <a href="order.jsp"><li class="active"><i class="fas fa-box"></i> Orders</li></a>
      <a href="estore.jsp"><li><i class="fas fa-store"></i> Store</li></a>
    </ul>
    <div class="profile-section">
      <ul>
        <a href="Com/profile.jsp"><li><i class="fas fa-user"></i> Profile</li></a>
        <a href="Com/login.jsp" onclick="if(confirm('Are you sure you want to logout?')) { document.getElementById('logoutForm').submit(); } return false;"><li><i class="fas fa-sign-out-alt"></i> Logout</li></a>
      </ul>
    </div>
  </div>

  <div class="main-content">
    <header>
      <h1>Order And Delivery Management</h1>
      <div class="header-actions">
        <button class="refresh-btn"><i class="fas fa-sync-alt"></i> Refresh</button>
        <button class="export-btn"><i class="fas fa-file-export"></i> Export</button>
      </div>
    </header>

    <div class="toolbar">
      <div class="search-container">
        <i class="fas fa-search"></i>
        <input type="text" id="searchBar" placeholder="Search orders... (Order ID, Customer)" />
      </div>
      <div class="filter-container">
        <select id="statusFilter">
          <option value="all">All Status</option>
          <option value="pending">Pending</option>
          <option value="shipped">Shipped</option>
          <option value="delivered">Delivered</option>
        </select>
        <select id="dateFilter">
          <option value="all">All Time</option>
          <option value="today">Today</option>
          <option value="week">This Week</option>
          <option value="month">This Month</option>
        </select>
      </div>
    </div>

    <div class="stats-container">
      <div class="stat-card">
        <i class="fas fa-clock"></i>
        <div class="stat-info">
          <h3>Pending Orders</h3>
          <p class="stat-value">12</p>
        </div>
      </div>
      <div class="stat-card">
        <i class="fas fa-truck"></i>
        <div class="stat-info">
          <h3>Shipped Orders</h3>
          <p class="stat-value">8</p>
        </div>
      </div>
      <div class="stat-card">
        <i class="fas fa-check-circle"></i>
        <div class="stat-info">
          <h3>Delivered Orders</h3>
          <p class="stat-value">24</p>
        </div>
      </div>
      <div class="stat-card">
        <i class="fas fa-dollar-sign"></i>
        <div class="stat-info">
          <h3>Total Revenue</h3>
          <p class="stat-value">$2,450</p>
        </div>
      </div>
    </div>
    <br>
    <h2>Order Table</h2>
    <br>
    <div class="table-container">
      <table>
        <thead>
          <tr>
            <th>Order ID</th>
            <th>Customer</th>
            <th>Status</th>
            <th>Date</th>
            <th>Total</th>
            <th>Shipping Address</th>
            <th>Shipping Method</th>
            <th>Delivery Partner ID</th>
            <th>Tracking Number</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody id="orderTable">
          <!-- Orders will be loaded via JavaScript -->
        </tbody>
      </table>
    </div>
    <br>
    <br>
    <h2>Delivery Partner Table</h2>
    <br>
    <div class="toolbar">
      <div class="filter-container">
        <select id="deliveryCompanyFilter">
          <option value="all">All Companies</option>
          <option value="FastDelivery">Pick Me</option>
          <option value="QuickShip">Uber</option>
          <option value="ExpressLogistics">Daraz</option>
          <option value="SpeedyCourier">Fedex</option>
        </select>
      </div>
      <button class="add-btn" onclick="window.location.href='thisara/AddDP.jsp'">
        <i class="fas fa-plus"></i> Add Delivery Partner
      </button>
    </div>
    <br>
<div class="table-container">
      <table>
        <thead>
          <tr>
            <th>Courier ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Company Name</th>
            <th>Status</th>
            <th>Vehicle Type</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody id="deliveryPartnerTable">
        	
        	<c:forEach var = "deliveries" items = "${allDelivery}">
          <tr>
            <td>${deliveries.id}</td>
            <td>${deliveries.firstName}</td>
            <td>${deliveries.lastName}</td>
            <td>${deliveries.email}</td>
            <td>${deliveries.phoneNO}</td>
            <td>${deliveries.companyName}</td>
            <td>${deliveries.status}</td>
            <td>${deliveries.vehicleType}</td>
            <td>
              	<a href = "thisara/UpdateDP.jsp?id=${deliveries.id}&firstName=${deliveries.firstName}&lastName=${deliveries.lastName}&email=${deliveries.email}&phoneNO=${deliveries.phoneNO}&companyName=${deliveries.companyName}&status=${deliveries.status}&vehicletype=${deliveries.vehicleType}">
                <button class="edit-btn" >
                  <i class="fas fa-edit"></i> Edit
                </button>
                </a>
                
                <form action = "/Grocery_Store/DeleteDeliveryServlet" method="post">
                <input type ="hidden" name="id" value="${deliveries.id}" />
                <button class="delete-btn" >
                   Delete
                </button>
                </form>
            </td>
          </tr>
            </c:forEach>
        </tbody>
      </table>
    </div>
   </div>
    
</body>
</html>