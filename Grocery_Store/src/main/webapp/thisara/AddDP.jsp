<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<form id="deliveryPartnerForm" method="post" action="/Grocery_Store/InsertDServlet">

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
                    
                    <label for="status">status:</label>
                    <input type="text" id="status" name="status" required>
                    
                    <label for="vehicleType">vehicleType:</label>
                    <input type="text" id="vehicleType" name="vehicleType" required>

 					<button type="submit" class="save-btn">
                        <i class="fas fa-save"></i> Save Changes
                    </button>
                    <button type="button" class="cancel-btn" onclick="window.location.href='order.jsp'">
                        <i class="fas fa-times"></i> Cancel
                    </button>
                
            </form>
</body>
</html>