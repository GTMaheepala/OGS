<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="../images/logo_OGS_4.png">
    <meta charset="UTF-8">
    <title>Checkout - TheFreshMart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../css/checkout.css">
</head>
<body>

<div id="leaveModal" class="modal">
    <div class="modal-content">
        <h3>Leaving your order?</h3>
        <p>These deals might be gone tomorrow.</p>
        <button class="btn btn-red" onclick="stayHere()">Continue to Checkout</button>
        <button class="btn btn-gray" onclick="leaveAnyway()">Leave Anyway</button>
    </div>
</div>

<div class="form-wrapper">
    <div class="header">
        <a href="../Com/index.jsp">
            <img class="logo-img" src="../images/logo_OGS.png" alt="Logo image" href="../Com/index.jsp">
          </a>
        <h1>TheFreshMart - Checkout</h1>
    </div>
	<h3>Fill this form below to complete your order.</h3><hr><br>
    <form action="<%= request.getContextPath() %>/insertServlet" method="post" id="checkout-form">
        <div class="grid-container">

            <!-- Address Section -->
            <div class="form-section">
                <h2>Delivery Address</h2>
                <select id="country" name="country" required>
                    <option value="">Select Country</option>
                    <option value="Sri Lanka">Sri Lanka</option>
                    <option value="India">India</option>
                    <option value="Bangladesh">Bangladesh</option>
                    <option value="Singapore">Singapore</option>
                    <option value="Thailand">Thailand</option>
                    <option value="United States">United States (US)</option>
                    <option value="United Kingdom">United Kingdom (UK)</option>
                </select>
                <input type="text" id="streetName" name="streetName" placeholder="Street Name" required />
                <input type="text" id="city" name="city" placeholder="City" required />
                <input type="text" id="district" name="district" placeholder="District" required />
                <input type="text" id="province" name="province" placeholder="Province" required />

                <h2>Contact Information</h2>
                <input type="text" id="custName" name="custName" placeholder="Full Name" required />
                <input type="text" id="mobile" name="mobile" placeholder="Mobile Number" required />
                <input type="text" id="email" name="email" placeholder="Email" required />
                <input type="text" id="NIC" name="NIC" placeholder="NIC" required />
            </div>

            <!-- Payment Section -->
            <div class="form-section">
                <h2>Card Payment Details</h2>
                <p class="secure-info">All transactions are secure and encrypted.</p><br>
				<label>Name on Card</label>
                <input type="text" id="cName" name="cName" placeholder="John Doe" required/>
				<label>Card Number</label>
                <input type="text" id="cNo" name="cNo" placeholder="1234 5678 9012 3456" required/>
                <label>Expiration Date</label>
                <input type="text" id="eDate" name="eDate" placeholder="MM/YY" required/>
                <label>CVV</label>
                <input type="text" id="CVV" name="CVV" placeholder="123" required/>
                </div>

        </div>

        <!--Form Buttons-->
        <div class="form-actions">
            <button type="button" id="goBack" onclick="showLeaveModal()">Cancel</button>
            <button type="submit" value="submit" class="place-order">Save and Continue</button>
        </div>
        
    </form>
</div>
<!-- <script src="../js/checkout.js"></script>-->
</body>
</html>
