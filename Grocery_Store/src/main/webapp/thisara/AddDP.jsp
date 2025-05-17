<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Delivery Partner - TheFreshMart</title>
    <link rel="stylesheet" href="../css/AddDP.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <div class="sidebar">
        <a href="index.html">
            <img class="logo" src="../images/logo_GS.png" alt="TheFreshMart Logo">
        </a>
        <h2>Employee Panel</h2>
        <ul>
            <a href="../Com/e_dashboard.jsp"><li><i class="fas fa-tachometer-alt"></i> Dashboard</li></a>
            <a href="order.jsp"><li class="active"><i class="fas fa-box"></i> Orders</li></a>
            <a href="estore.jsp"><li><i class="fas fa-store"></i> Store</li></a>
        </ul>
        <div class="profile-section">
            <ul>
                 <a href="../Com/profile.jsp"><li><i class="fas fa-user"></i> Profile</li></a>
                <a href="../Com/login.jsp" onclick="if(confirm('Are you sure you want to logout?')) { document.getElementById('logoutForm').submit(); } return false;"><li><i class="fas fa-sign-out-alt"></i> Logout</li></a>
            </ul>
        </div>
    </div>

    <div class="main-content">
        <header>
            <h1>Enter Delivery Partner Details</h1>
        </header>

        <div class="form-container">
            <h2>Delivery Partner Information</h2><br>


	         <form id="deliveryPartnerForm" method="post" action="<%= request.getContextPath() %>/InsertDServlet">

                    <label for="firstName">First Name:</label>
                    <input type="text" id="firstName" name="firstName" required>

                    <label for="lastName">Last Name:</label>
                    <input type="text" id="lastName" name="lastName" required>

                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>

                    <label for="phone">Phone Number:</label>
                    <input type="tel" id="phone" name="phoneNO" required>

                    <label for="companyName">Company Name:</label>
                    <input type="text" id="companyName" name="companyName" required>
                    
                   <label for="status">Status:</label>
                    <select id="status" name="status" required>
                        <option value="active">Active</option>
                        <option value="inactive">Inactive</option>
                        <option value="on_delivery">On Delivery</option>
                    </select>

                    <label for="vehicleType">Vehicle Type:</label>
                    <select id="vehicleType" name="vehicleType" required>
                        <option value="motorcycle">Motorcycle</option>
                        <option value="bicycle">Bicycle</option>
                        <option value="car">Car</option>
                        <option value="van">Van</option>
                    </select>
                    
                    <br>
                    <br>
                    
 					<button type="submit" class="save-btn" >
                        <i class="fas fa-save"></i> Save Changes
                    </button>
                    <button type="button" class="cancel-btn" onclick="window.location.href='order.jsp'">
                        <i class="fas fa-times"></i> Cancel
                    </button>
                
               </form> 
            
            </div>
    </div>
    
    <script src="../js/AddDP.js"></script>
</body>
</html>