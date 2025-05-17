<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Delivery Partner - TheFreshMart</title>
    <link rel="stylesheet" href="../css/UpdateDP.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
	
    <div class="sidebar">
        <a href="index.html">
            <img class="logo" src="images/logo_GS.png" alt="TheFreshMart Logo">
        </a>
        <h2>Employee Panel</h2>
        <ul>
            <a href="e_dashboard.jsp"><li><i class="fas fa-tachometer-alt"></i> Dashboard</li></a>
            <a href="order.jsp"><li class="active"><i class="fas fa-box"></i> Orders</li></a>
            <a href="estore.jsp"><li><i class="fas fa-store"></i> Store</li></a>
        </ul>
        <div class="profile-section">
            <ul>
                <a href="employee_account.php"><li><i class="fas fa-user"></i> Profile</li></a>
                <a href="logout.php"><li><i class="fas fa-sign-out-alt"></i> Logout</li></a>
            </ul>
        </div>
    </div>

    <div class="main-content">
        <header>
            <h1>Edit Delivery Partner Details</h1>
        </header>

        <div class="form-container">
            <h2>Delivery Partner Information</h2><br>

			 <%
				String id = request.getParameter("id");
			    String firstName = request.getParameter("firstName");
			    String lastName = request.getParameter("lastName");	
			    String email = request.getParameter("email");	
			    String phoneNO = request.getParameter("phoneNO");	
			    String companyName = request.getParameter("companyName");	
			    String status = request.getParameter("status");	
			    String vehicleType = request.getParameter("vehicleType");	
			 %>

	         <form id="deliveryPartnerForm" method="post" action="<%= request.getContextPath() %>/UpdateServlet">

					<label for="courierid">Courier ID:</label>
                    <input type="text" id="courierid" value=<%=id%> name="id" readonly>
					
                    <label for="firstName">First Name:</label>
                    <input type="text" id="firstName" value=<%=firstName%> name="firstName" required>

                    <label for="lastName">Last Name:</label>
                    <input type="text" id="lastName" value=<%=lastName%> name="lastName" required>

                    <label for="email">Email:</label>
                    <input type="email" id="email" value=<%=email%> name="email" required>

                    <label for="phone">Phone Number:</label>
                    <input type="tel" id="phone" value=<%=phoneNO%> name="phoneNO" required>

                    <label for="companyName">Company Name:</label>
                    <input type="text" id="companyName" value=<%=companyName%> name="companyName" required>
                    
                   <label for="status">Status:</label>
                    <select id="status"  name="status" required>
                        <option value="active <%= "active".equals(vehicleType)? "selected" : ""%>>">Active</option>
                        <option value="inactive <%= "inactive".equals(vehicleType)? "selected" : ""%>>">Inactive</option>
                        <option value="on_delivery <%= "on_delivery".equals(vehicleType)? "selected" : ""%>>">On Delivery</option>
                    </select>

                    <label for="vehicleType">Vehicle Type:</label>
                    <select id="vehicleType" name="vehicleType" required>
                        <option value="motorcycle" <%= "motorcycle".equals(vehicleType)? "selected" : ""%>>Motorcycle</option>
                        <option value="bicycle"<%= "bicycle".equals(vehicleType)? "selected" : ""%>>Bicycle</option>
                        <option value="car"<%= "car".equals(vehicleType)? "selected" : ""%>>>Car</option>
                        <option value="van"<%= "van".equals(vehicleType)? "selected" : ""%>>>Van</option>
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
    
    <script src="../js/UpdateDP.js"></script>
</body>
</html>