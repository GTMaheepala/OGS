<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FreshMart</title>
 <style>
    body {
        margin: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to bottom right, #a8e6a3, #d0f5c7); /* shaded green background */
        padding: 20px;
    }

    h1{
        color: #1e7c4c;
		text-align: center;
		margin-bottom: 40px;
		text-shadow: 1px 1px 2px #cde7d4;
    }
    
    h2 {
        color: #2e7d32;
    }
    

    .grid-container {
        display: flex;
        flex-wrap: wrap;
        gap: 30px;
        background-color: #ffffff;
        border-radius: 12px;
        padding: 30px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
        max-width: 1000px;
        margin: 0 auto;
    }

    .form-section {
        flex: 1;
        min-width: 300px;
    }

    label {
        display: block;
        margin-top: 10px;
        font-weight: 600;
        color: #33691e;
    }

    input, select {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 8px;
        box-sizing: border-box;
    }

    .form-actions {
        margin-top: 30px;
        text-align: center;
    }

    button {
        padding: 10px 20px;
        border: none;
        border-radius: 8px;
        background-color: #66bb6a;
        color: white;
        font-weight: bold;
        cursor: pointer;
        margin: 0 10px;
        transition: background-color 0.3s;
    }

    button:hover {
        background-color: #558b2f;
    }

    .secure-info {
        font-size: 0.9em;
        color: #4e944f;
    }
</style>
</head>
<body>

<%
	String id = request.getParameter("id");
	String country = request.getParameter("country");
	String streetName = request.getParameter("streetName");
	String city = request.getParameter("city");
	String district = request.getParameter("district");
	String province = request.getParameter("province");
	String custName = request.getParameter("custName");
	String mobileStr = request.getParameter("mobile");
	String email = request.getParameter("email");
	String NIC = request.getParameter("NIC");
	String cName = request.getParameter("cName");
	String cNo = request.getParameter("cNo");
	String eDate = request.getParameter("eDate");
	String CVV = request.getParameter("CVV");
%>
<h1>TheFreshMart - Order Confirmation</h1>
<form action="<%= request.getContextPath() %>/Update_Servlet" method="post" id="checkout-form">
        <div class="grid-container">
		
            <!-- Address Section -->
            <div class="form-section">
         
            	<label>ID:</label>
            	<input type="text" name="id" value="<%=id%>" readonly>
         
                <h2>Delivery Address</h2>
                <select id="country" name="country" required>
                    <option value="">Select Country</option>
                    <option value="Sri Lanka" <%= "Sri Lanka".equals(country) ? "selected" : "" %>>Sri Lanka</option>
                    <option value="India" <%= "India".equals(country) ? "selected" : "" %>>India</option>
                    <option value="Bangladesh" <%= "Bangladesh".equals(country) ? "selected" : "" %>>Bangladesh</option>
                    <option value="Singapore" <%= "Singapore".equals(country) ? "selected" : "" %>>Singapore</option>
                    <option value="Thailand" <%= "Thailand".equals(country) ? "selected" : "" %>>Thailand</option>
                    <option value="United States" <%= "United States".equals(country) ? "selected" : "" %>>United States</option>
                    <option value="United Kingdom" <%= "United Kingdom".equals(country) ? "selected" : "" %>>United Kingdom</option>
                    
                    
                </select>
                <input type="text" id="streetName" name="streetName" placeholder="Street Name" value="<%=streetName%>" required />
                <input type="text" id="city" name="city" placeholder="City" value="<%=city%>" required />
                <input type="text" id="district" name="district" placeholder="District" value="<%=district%>" required />
                <input type="text" id="province" name="province" placeholder="Province" value="<%=province%>" required />

                <h2>Contact Information</h2>
                <input type="text" id="custName" name="custName" placeholder="Full Name" value="<%=custName%>" required />
                <input type="text" id="mobile" name="mobile" placeholder="Mobile Number" value="<%=mobileStr%>" required />
                <input type="text" id="email" name="email" placeholder="Email" value="<%=email%>" required />
                <input type="text" id="NIC" name="NIC" placeholder="NIC" value="<%=NIC%>" required />
            </div>

            <!-- Payment Section -->
            <div class="form-section">
                <h2>Card Payment Details</h2>
                <p class="secure-info">All transactions are secure and encrypted.</p><br>
				<label>Name on Card</label>
                <input type="text" id="cName" name="cName" placeholder="John Doe" value="<%=cName%>"required/>
				<label>Card Number</label>
                <input type="text" id="cNo" name="cNo" placeholder="1234 5678 9012 3456" value="<%=cNo%>" required/>
                <label>Expiration Date</label>
                <input type="text" id="eDate" name="eDate" placeholder="MM/YY" value="<%=eDate%>" required/>
                <label>CVV</label>
                <input type="text" id="CVV" name="CVV" placeholder="123" value="<%=CVV%>" required/>
                </div>

        </div>

        <!--Form Buttons-->
        <div class="form-actions">
            <button type="button" id="goBack" onclick="showLeaveModal()">Cancel</button>
            <button type="submit" value="submit" class="place-order">Save and Continue</button>
        </div>
        
    </form>
    
</body>
</html>