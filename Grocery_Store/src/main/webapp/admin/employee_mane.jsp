<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management - TheFreshMart</title>
  <link rel="stylesheet" href="../css/employee_mane.css"/>
  <link rel="stylesheet" href="../css/e_dashboard.css"/>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
<!-- Sidebar Navigation -->
  <div class="sidebar">
    <a href="../Com/index.jsp">
        <img class="logo" src="../images/logo_GS.png">
    </a>
    <h2>Employee Panel</h2>
    <ul>
      <a href="../Com/a_dashboard.jsp"><li class="active"><i class="fas fa-tachometer-alt"></i> Dashboard</li></a>
      <a href="../Com/aboutus.jsp"><li><i class="fas fa-info-circle"></i> About Us</li></a>
      <a href="../Com/estore.jsp"><li><i class="fas fa-store"></i> Store</li></a>
      <a href="../Com/o&i.jsp"><li><i class="fas fa-boxes"></i> Order & Inventory</li></a>
      <a href="../Com/contactus.jsp"><li><i class="fas fa-envelope"></i> Contact Us</li></a>
    </ul>
    <div class="profile-section">
      <ul>
        <%
   		Object user = session.getAttribute("user");
   		String profileLink = (user != null) ? "../Com/profile.jsp" : "../Com/login.jsp";
		%>
        <a href="<%= profileLink %>"><li><i class="fas fa-user"></i> Profile</li></a>
        <a href="dashboard_Paymengt.php"><li><i class="fas fa-credit-card"></i> Payment</li></a>
        <a href="dashboard_more_info.php"><li><i class="fas fa-info-circle"></i> More Info</li></a>
        <a href="logout.php"><li><i class="fas fa-sign-out-alt"></i> Logout</li></a>
      </ul>
    </div>
  </div>

  <div class="employee-container">
    <div class="employee-header">
      <h1><i class="fas fa-users-cog"></i> Employee Management</h1>
      <button class="add-employee-btn" id="addEmployeeBtn">
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
          <option value="manager">Manager</option>
          <option value="store_manager">Store Manager</option>
          <option value="delivery_partner">Delivery Partner</option>
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
            <th>Position</th>
            <th>Password</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>EMP001</td>
            <td>John</td>
            <td>Doe</td>
            <td>john.doe@freshmart.com</td>
            <td>+1 234-567-8901</td>
            <td><span class="position-badge manager">Manager</span></td>
            <td>••••••••</td>
            <td class="action-buttons">
              <button class="edit-btn"><i class="fas fa-edit"></i></button>
              <button class="delete-btn"><i class="fas fa-trash"></i></button>
            </td>
          </tr>
          <tr>
            <td>EMP002</td>
            <td>Jane</td>
            <td>Smith</td>
            <td>jane.smith@freshmart.com</td>
            <td>+1 234-567-8902</td>
            <td><span class="position-badge store-manager">Store Manager</span></td>
            <td>••••••••</td>
            <td class="action-buttons">
              <button class="edit-btn"><i class="fas fa-edit"></i></button>
              <button class="delete-btn"><i class="fas fa-trash"></i></button>
            </td>
          </tr>
          <tr>
            <td>EMP003</td>
            <td>Mike</td>
            <td>Johnson</td>
            <td>mike.johnson@freshmart.com</td>
            <td>+1 234-567-8903</td>
            <td><span class="position-badge delivery-partner">Delivery Partner</span></td>
            <td>••••••••</td>
            <td class="action-buttons">
              <button class="edit-btn"><i class="fas fa-edit"></i></button>
              <button class="delete-btn"><i class="fas fa-trash"></i></button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>

  <!-- Add Employee Modal -->
  <div class="modal" id="addEmployeeModal">
    <div class="modal-content">
      <div class="modal-header">
        <h2><i class="fas fa-user-plus"></i> Add New Employee</h2>
        <button class="close-modal"><i class="fas fa-times"></i></button>
      </div>
      <form id="addEmployeeForm">
        <div class="form-grid">
          <div class="form-group">
            <label for="firstName">First Name</label>
            <input type="text" id="firstName" required>
          </div>
          <div class="form-group">
            <label for="lastName">Last Name</label>
            <input type="text" id="lastName" required>
          </div>
          <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" required>
          </div>
          <div class="form-group">
            <label for="phone">Phone Number</label>
            <input type="tel" id="phone" required>
          </div>
          <div class="form-group">
            <label for="position">Position</label>
            <select id="position" required>
              <option value="">Select Position</option>
              <option value="manager">Manager</option>
              <option value="store_manager">Store Manager</option>
              <option value="delivery_partner">Delivery Partner</option>
            </select>
          </div>
          <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" required>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="cancel-btn">Cancel</button>
          <button type="submit" class="save-btn">Save Employee</button>
        </div>
      </form>
    </div>
  </div>

  <script src="../js/employee_mane.js"></script>
</body>
</html>