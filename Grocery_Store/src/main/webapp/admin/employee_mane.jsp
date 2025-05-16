<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management - TheFreshMart</title>
  <link rel="stylesheet" href="css/employee_manea.css"/>
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
      <a href="Com/a_dashboard.jsp"><li class="active"><i class="fas fa-tachometer-alt"></i> Dashboard</li></a>
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
        <a href="Com/profile.jsp"><li><i class="fas fa-user"></i> Profile</li></a>
        <a href="dashboard_Paymengt.php"><li><i class="fas fa-credit-card"></i> Payment</li></a>
        <a href="dashboard_more_info.php"><li><i class="fas fa-info-circle"></i> More Info</li></a>
        <a href="Com/login.jsp" onclick="if(confirm('Are you sure you want to logout?')) { document.getElementById('logoutForm').submit(); } return false;"><li><i class="fas fa-sign-out-alt"></i> Logout</li></a>
      </ul>
    </div>
  </div>
<div class="neww">
  <div class="employee-container">
    <div class="employee-header">
      <h1><i class="fas fa-users-cog"></i> Employee Management</h1>
      <button class="add-employee-btn" onclick="window.location.href='admin/addEmployee.jsp'">
  		<i class="fas fa-user-plus"></i> Add New Employee
	  </button>

    </div>

    <div class="search-filter-section">
      <div class="search-box">
        <i class="fas fa-search"></i>
        <input type="text" placeholder="Search employees...">
      </div>
      <div class="filter-box">
        <select id="positionFilter">
          <option value="">All Positions</option>
          <option value="admin">Admin</option>
          <option value="store_manager">Store Manager</option>
          <option value="delivery_manager">Delivery Manager</option>
        </select>
      </div>
    </div>

    <div class="employee-table-container">
      <table class="employee-table">
        <thead>
          <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Password</th>
            <th>Position</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${allEmployees}">
		  <tr>
		    <td>${user.id}</td>
		    <td>${user.first_name}</td>
		    <td>${user.last_name}</td>
		    <td>${user.email}</td>
		    <td>${user.phone_no}</td>
		    <td>${user.password}</td>
		    <c:choose>
		      <c:when test="${user.check_user == 2}">
		        <td><span class="position-badge manager">Store Manager</span></td>
		      </c:when>
		      <c:when test="${user.check_user == 3}">
		        <td><span class="position-badge manager">Delivery Manager</span></td>
		      </c:when>
		      <c:when test="${user.check_user == 4}">
		        <td><span class="position-badge manager">Admin</span></td>
		      </c:when>
		      <c:otherwise>
		        <td><span class="position-badge unknown">Unknown</span></td>
		      </c:otherwise>
		    </c:choose>
		    <td class="action-buttons">
		    <a href="admin/editEmployee.jsp?id=${user.id}&first_name=${user.first_name}&last_name=${user.last_name}&email=${user.email}&phone_no=${user.phone_no}&password=${user.password}&check_user=${user.check_user}">
		      <button class="edit-btn">
  				<i class="fas fa-edit"></i>
			  </button>
			  </a>
		      <form action="AccountDeleteEmployeeServlet" method="post">
		      <input type="hidden" name="id" value="${user.id}"/>
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
  <script src="/employee_mane.js"></script>
</body>
</html>