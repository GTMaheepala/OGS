<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="../images/logo_OGS_4.png">
    <meta charset="UTF-8">
    <title>Checkout - TheFreshMart</title>
    <link rel="stylesheet" type="text/css" href="../css/navigation.css">
  <link rel="stylesheet" type="text/css" href="../css/footer.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../css/checkoutt.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="icon" type="image/png" href="../images/logo_OGS_4.png">
</head>
<body>

<div>
<nav class="navbar">
        <div class="nav-container">
          <a href="index.jsp">
            <img class="logo" src="../images/logo_OGS.png" alt="Logo image">
          </a>
          <h2 class="name">TheFreshMart</h2>
          <ul class="nav-links">
            <li><a href="../Com/index.jsp" class="active">Home</a></li>
            <li><a href="Store.jsp">Store</a></li>
            <li><a href="../Com/about.jsp">About Us</a></li>
            <li><a href="../tharushi/ContactUs.jsp">Contact Us</a></li>
            <%
    		Object user = session.getAttribute("user");
    		String profileLink = (user != null) ? "../Com/profile.jsp" : "../Com/login.jsp";
			%>
			<li><a href="<%= profileLink %>"><i class="fa fa-user-circle-o" style="font-size: 30px;" aria-hidden="true"></i></a></li>

            <li><a href="#" onclick="toggleCartPanel()"><i class="fa fa-cart-arrow-down" style="font-size: 30px;" id="cart-icon" data-quantity="0" aria-hidden="true"></i></a></li>
            <!-- <li><a href="#" onclick="toggleCartPanel()">Cart 🛒</a></li> -->
          </ul>
        </div>
    </nav>
</div>

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

 <script>
// Basic form validations
document.getElementById("checkout-form").addEventListener("submit", function(event) {
    const cardNumber = document.getElementById("cNo").value.trim();
    const cvv = document.getElementById("CVV").value.trim();
    const expDate = document.getElementById("eDate").value.trim();
    const mobile = document.getElementById("mobile").value.trim();
    const NIC = document.getElementById("NIC").value.trim();

    const cardRegex = /^\d{16}$/;
    const cvvRegex = /^\d{3}$/;
    const expRegex = /^(0[1-9]|1[0-2])\/\d{2}$/;
    const mobileRegex = /^[0-9]{10}$/;
    const NICRegex = /^[0-9]{12}$/;

    if (!cardRegex.test(cardNumber.replace(/\s+/g, ''))) {
        alert("Invalid card number. It should contain exactly 16 digits.");
        event.preventDefault();
    } else if (!cvvRegex.test(cvv)) {
        alert("Invalid CVV. It should contain 3 digits.");
        event.preventDefault();
    } else if (!expRegex.test(expDate)) {
        alert("Invalid expiration date. Use MM/YY format.");
        event.preventDefault();
    } else if (!mobileRegex.test(mobile)) {
        alert("Invalid mobile number. It should be 10 digits.");
        event.preventDefault();
    } else if (!NICRegex.test(NIC)) {
        alert("Invalid NIC. It should be 12 digits.");
        event.preventDefault();
    }
});
</script>
<!-- <script src="../js/checkout.js"></script>-->
</body>
</html>
