<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Promotion Management - TheFreshMart</title>
<link rel="stylesheet" href="css/promotion_mane.css"/>
<link rel="stylesheet" href="css/e_dashboard.css"/>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
<!-- Sidebar Navigation -->
<div class="sidebar">
  <a href="Com/index.jsp">
    <img class="logo" src="images/logo_GS.png">
  </a>
  <h2>Employee Panel</h2>
  <ul>
    <a href="Com/a_dashboard.jsp"><li><i class="fas fa-tachometer-alt"></i> Dashboard</li></a>
    <a href="Com/aboutus.jsp"><li><i class="fas fa-info-circle"></i> About Us</li></a>
    <a href="Com/estore.jsp"><li><i class="fas fa-store"></i> Store</li></a>
    <a href="Com/o&i.jsp"><li><i class="fas fa-boxes"></i> Order & Inventory</li></a>
    <a href="Com/contactus.jsp"><li><i class="fas fa-envelope"></i> Contact Us</li></a>
  </ul>
  <div class="profile-section">
    <ul>
      <%
      Object user = session.getAttribute("user");
      String profileLink = (user != null) ? "Com/profile.jsp" : "Com/login.jsp";
      %>
      <a href="<%= profileLink %>"><li><i class="fas fa-user"></i> Profile</li></a>
      <a href="dashboard_Paymengt.php"><li><i class="fas fa-credit-card"></i> Payment</li></a>
      <a href="dashboard_more_info.php"><li><i class="fas fa-info-circle"></i> More Info</li></a>
      <a href="Com/login.jsp" onclick="if(confirm('Are you sure you want to logout?')) { document.getElementById('logoutForm').submit(); } return false;"><li><i class="fas fa-sign-out-alt"></i> Logout</li></a>
    </ul>
  </div>
</div>
<div class="neww">
<div class="employee-container">
  <div class="employee-header">
    <h1><i class="fas fa-tags"></i> Promotion Management</h1>
    <button class="add-employee-btn" onclick="window.location.href='admin/addPromotion.jsp'">
      <i class="fas fa-plus"></i> Add New Promotion
    </button>
  </div>

  <div class="search-filter-section">
    <div class="search-box">
      <i class="fas fa-search"></i>
      <input type="text" placeholder="Search promotions...">
    </div>
    <div class="filter-box">
      <select id="typeFilter">
        <option value="">All Types</option>
        <option value="percentage">Percentage</option>
        <option value="flat">Flat Amount</option>
      </select>
    </div>
  </div>

  <div class="employee-table-container">
    <table class="employee-table">
      <thead>
        <tr>
          <th>ID</th>
          <th>Promo Code</th>
          <th>Description</th>
          <th>Type</th>
          <th>Value</th>
          <th>Valid From</th>
          <th>Valid To</th>
          <th>Usage Limit</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="promotions" items="${allPromotions}">
          <tr>
            <td>${promotions.promoId}</td>
            <td>${promotions.promoCode}</td>
            <td>${promotions.description}</td>
            <td>${promotions.discountType}</td>
            <td>${promotions.value}</td>
            <td>${promotions.validFrom}</td>
            <td>${promotions.validTo}</td>
            <td>${promotions.usageLimit}</td>
            <td class="action-buttons">
              <a href="admin/editPromotion.jsp?id=${promotions.promoId}&promo_code=${promotions.promoCode}&description=${promotions.description}&discount_type=${promotions.discountType}&value=${promotions.value}&valid_from=${promotions.validFrom}&valid_to=${promotions.validTo}&usage_limit=${promotions.usageLimit}">
                <button class="edit-btn"><i class="fas fa-edit"></i></button>
              </a>
              <form action="/Grocery_Store/PromotionDeleteServlet" method="post">
                <input type="hidden" name="id" value="${promotions.promoId}"/>
                <button class="delete-btn"><i class="fas fa-trash"></i></button>
              </form>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
</div>
</div>
<script src="js/employee_mane.js"></script>
</body>
</html>