<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Management - TheFreshMart</title>
    <link rel="stylesheet" href="../css/user_mane.css">
    <link rel="stylesheet" href="../css/e_dashboard.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
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
        <a href="employee_account.php"><li><i class="fas fa-user"></i> Profile</li></a>
        <a href="dashboard_Paymengt.php"><li><i class="fas fa-credit-card"></i> Payment</li></a>
        <a href="dashboard_more_info.php"><li><i class="fas fa-info-circle"></i> More Info</li></a>
        <a href="logout.php"><li><i class="fas fa-sign-out-alt"></i> Logout</li></a>
      </ul>
    </div>
  </div>

    <div class="user-container">
        <div class="user-header">
            <h1><i class="fas fa-users"></i> User Management</h1>
            <button class="add-user-btn" id="addUserBtn">
                <i class="fas fa-user-plus"></i> Add New User
            </button>
        </div>

        <div class="search-filter-section">
            <div class="search-box">
                <i class="fas fa-search"></i>
                <input type="text" placeholder="Search users...">
            </div>
        </div>

        <div class="user-table-container">
            <table class="user-table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>Phone Number</th>
                        <th>Password</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>USR001</td>
                        <td>John</td>
                        <td>Doe</td>
                        <td>john.doe@example.com</td>
                        <td>+1 234-567-8901</td>
                        <td>••••••••</td>
                        <td class="action-buttons">
                            <button class="edit-btn"><i class="fas fa-edit"></i></button>
                            <button class="delete-btn"><i class="fas fa-trash"></i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>USR002</td>
                        <td>Jane</td>
                        <td>Smith</td>
                        <td>jane.smith@example.com</td>
                        <td>+1 234-567-8902</td>
                        <td>••••••••</td>
                        <td class="action-buttons">
                            <button class="edit-btn"><i class="fas fa-edit"></i></button>
                            <button class="delete-btn"><i class="fas fa-trash"></i></button>
                        </td>
                    </tr>
                    <tr>
                        <td>USR003</td>
                        <td>Mike</td>
                        <td>Johnson</td>
                        <td>mike.johnson@example.com</td>
                        <td>+1 234-567-8903</td>
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

    <!-- Add User Modal -->
    <div class="modal" id="addUserModal">
        <div class="modal-content">
            <div class="modal-header">
                <h2><i class="fas fa-user-plus"></i> Add New User</h2>
                <button class="close-modal"><i class="fas fa-times"></i></button>
            </div>
            <form id="addUserForm">
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
                        <label for="password">Password</label>
                        <input type="password" id="password" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="cancel-btn">Cancel</button>
                    <button type="submit" class="save-btn">Save User</button>
                </div>
            </form>
        </div>
    </div>

    <script src="../js/user_mane.js"></script>
</body>
</html>