<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>FreshMart - Order Summary</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/navigation.css">
  <link rel="stylesheet" type="text/css" href="css/footer.css">
  <link rel="icon" type="image/png" href="images/logo_OGS_4.png">
	<style>
		body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background: #f3fbf6;
	margin: 0;
	padding: 20px;
}

h1 {
	margin-top:5%;
	color: #1e7c4c;
	text-align: center;
	margin-bottom: 40px;
	text-shadow: 1px 1px 2px #cde7d4;
}

.card {
	display: flex;
	flex-wrap: wrap;
	gap: 20px;
	background: #ffffff;
	border-radius: 12px;
	padding: 25px;
	box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
	margin-bottom: 40px;
	border-left: 8px solid #27ae60;
}

.details {
	flex: 1.8;
	min-width: 250px;
}

.item-summary {
	flex: 1.8;
	background: linear-gradient(to bottom right, #b4f0b4, #e2fbe2);
	border: 2px solid #98d798;
	padding: 25px;
	border-radius: 15px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.08);
	min-width: 300px;
}

.section-title {
	color: #27ae60;
	font-size: 18px;
	margin: 20px 0 10px;
	border-bottom: 2px solid #ccebd8;
	padding-bottom: 5px;
}

.details p {
	margin: 6px 0;
	line-height: 1.5;
	color: #333;
}

.details strong {
	color: #1d6c4d;
	display: inline-block;
	width: 160px;
}

.actions {
	margin-top: 20px;
}

.actions button {
	background-color: #27ae60;
	color: white;
	border: none;
	padding: 10px 18px;
	border-radius: 6px;
	margin-right: 10px;
	cursor: pointer;
	font-weight: bold;
	transition: 0.3s;
}

.actions button:hover {
	background-color: #219150;
}

form {
	display: inline;
}

.item-summary h2 {
	text-align: center;
	color: #2f6633;
	margin-bottom: 15px;
}

.summary-table {
	width: 100%;
	border-collapse: collapse;
	font-family: Arial, sans-serif;
}

.summary-table th, .summary-table td {
	padding: 12px;
	text-align: center;
	border-bottom: 1px solid #c7eac7;
}

.summary-table th {
	background-color: #27ae60;
	color: #fff;
}

.total-row td {
	font-weight: bold;
	background-color: #2ecc71;
	color: white;
	border-top: 2px solid #1b5e20;
}

.qty-controls {
	display: flex;
	align-items: center;
	justify-content: center;
}

.qty-controls button {
	background-color: #c5e1c5;
	border: none;
	padding: 5px 10px;
	font-size: 16px;
	cursor: pointer;
	margin: 0 4px;
	border-radius: 4px;
	transition: background 0.3s;
}

.qty-controls button:hover {
	background-color: #a5d6a7;
}

.qty-controls .qty {
	width: 40px;
	text-align: center;
	border: 1px solid #ccc;
	border-radius: 4px;
	padding: 4px;
	font-weight: bold;
}

.delete-item {
    background-color: #e74c3c;
    color: white;
    border: none;
    padding: 6px 10px;
    border-radius: 4px;
    margin-left: 10px;
    cursor: pointer;
    transition: 0.3s;}

.form-actions {
	margin-top: 20px;
	text-align: center;
}

.form-actions .payNow,
.form-actions #goBack {
	padding: 12px 24px;
	font-size: 16px;
	font-weight: bold;
	border: none;
	border-radius: 8px;
	cursor: pointer;
	transition: background 0.3s ease;
	margin-right: 12px;
}

.payNow {
	background-color: #27ae60;
	color: white;
	box-shadow: 0 4px 10px rgba(39, 174, 96, 0.3);
}

.payNow:hover {
	background-color: #219150;
}

#goBack {
	background-color: #f44336;
	color: white;
	box-shadow: 0 4px 10px rgba(244, 67, 54, 0.3);
}

#goBack:hover {
	background-color: #c0392b;
}

@media (max-width: 768px) {
	.card {
		flex-direction: column;
		align-items: stretch;
	}
}

.navbar{
	margin-left:-3%;
}

	</style>
</head>
<body>
<div>
<nav class="navbar">
        <div class="nav-container">
          <a href="index.jsp">
            <img class="logo" src="images/logo_OGS.png" alt="Logo image">
          </a>
          <h2 class="name">TheFreshMart</h2>
          <ul class="nav-links">
            <li><a href="Com/index.jsp" class="active">Home</a></li>
            <li><a href="thilakshana/Store.jsp">Store</a></li>
            <li><a href="Com/about.jsp">About Us</a></li>
            <li><a href="tharushi/ContactUs.jsp">Contact Us</a></li>
            <%
    		Object user = session.getAttribute("user");
    		String profileLink = (user != null) ? "Com/profile.jsp" : "Com/login.jsp";
			%>
			<li><a href="<%= profileLink %>"><i class="fa fa-user-circle-o" style="font-size: 30px;" aria-hidden="true"></i></a></li>

            <li><a href="#" onclick="toggleCartPanel()"><i class="fa fa-cart-arrow-down" style="font-size: 30px;" id="cart-icon" data-quantity="0" aria-hidden="true"></i></a></li>
            <!-- <li><a href="#" onclick="toggleCartPanel()">Cart 🛒</a></li> -->
          </ul>
        </div>
    </nav>
</div>
<h1>TheFreshMart - Order Summary</h1>

<c:forEach var="checkout" items="${checkoutList}">
	<div class="card">
		<div class="details">
			<p><strong>Order ID:</strong> ${checkout.id}</p>

			<div class="section-title">🚚 Shipping Details</div>
			<p><strong>Country:</strong> ${checkout.country}</p>
			<p><strong>Street Name:</strong> ${checkout.streetName}</p>
			<p><strong>City:</strong> ${checkout.city}</p>
			<p><strong>District:</strong> ${checkout.district}</p>
			<p><strong>Province:</strong> ${checkout.province}</p>
			<p><strong>Customer Name:</strong> ${checkout.custName}</p>
			<p><strong>Mobile:</strong> ${checkout.mobile}</p>
			<p><strong>Email:</strong> ${checkout.email}</p>
			<p><strong>NIC:</strong> ${checkout.NIC}</p>

			<div class="section-title">💳 Card Details</div>
			<p><strong>Name on Card:</strong> ${checkout.cName}</p>
			<p><strong>Card Number:</strong> ${checkout.cNo}</p>
			<p><strong>Expire Date:</strong> ${checkout.eDate}</p>
			<p><strong>CVV:</strong> ${checkout.CVV}</p>

			<div class="actions">
				<a href="thilakshana/Update.jsp?id=${checkout.id}&country=${checkout.country}&streetName=${checkout.streetName}&city=${checkout.city}&district=${checkout.district}&province=${checkout.province}&custName=${checkout.custName}&mobile=${checkout.mobile}&email=${checkout.email}&NIC=${checkout.NIC}&cName=${checkout.cName}&cNo=${checkout.cNo}&eDate=${checkout.eDate}&CVV=${checkout.CVV}">
					<button>✏️ Update</button>
				</a>
				<form action="DeleteServlet" method="post">
					<input type="hidden" name="id" value="${checkout.id}" />
					<button type="submit">🗑️ Delete</button>
				</form>
			</div>
		</div>

		<div class="item-summary">
			<h2>Order Summary</h2>
			<table class="summary-table">
				<thead>
					<tr>
						<th>Item</th>
						<th>Qty(kg)</th>
						<th>Price</th>
						<th>Remove</th>
					</tr>
				</thead>
				<tbody>
					<tr data-price="375">
						<td>Tomato</td>
						<td>
							<div class="qty-controls">
								<button type="button" class="decrease">−</button>
								<input type="text" class="qty" value="1" readonly>
								<button type="button" class="increase">+</button>
							</div>
						</td>
						<td class="item-total">Rs. 375</td>
						<td><button type="button" class="remove-item">🗑️ Remove</button></td>
					</tr>
					<tr data-price="240">
						<td>Carrot</td>
						<td>
							<div class="qty-controls">
								<button type="button" class="decrease">−</button>
								<input type="text" class="qty" value="1" readonly>
								<button type="button" class="increase">+</button>
							</div>
						</td>
						<td class="item-total">Rs. 240</td>
						<td><button type="button" class="remove-item">🗑️ Remove</button></td>
					</tr>
					<tr data-price="200">
						<td>Onion</td>
						<td>
							<div class="qty-controls">
								<button type="button" class="decrease">−</button>
								<input type="text" class="qty" value="1" readonly>
								<button type="button" class="increase">+</button>
							</div>
						</td>
						<td class="item-total">Rs. 1000</td>
						<td><button type="button" class="remove-item">🗑️ Remove</button></td>
					</tr>
				</tbody>
				<tfoot>
					<tr class="total-row">
						<td colspan="2">Total</td>
						<td class="grandTotal" colspan="2">Rs. 0</td>
					</tr>
				</tfoot>
			</table>
			<div class="form-actions">
				<button type="button" class="payNow" onclick="payNow()">Pay Now</button>
				<button type="button" id="goBack" onclick="cancelOrder()">Cancel Order</button>
			</div>
		</div>
	</div>
</c:forEach>

<div>
<!-- Footer -->
<footer>
  <div class="footer-container">
    <div class="footer-column">
      <h4>About Us</h4>
      <p>We are passionate about delivering quality content and services to our users worldwide. Your satisfaction is our mission.</p>
    </div>
    <div class="footer-column">
      <h4>Quick Links</h4>
      <ul>
        <li><a href="Com/index.jsp">Home</a></li>
        <li><a href="Store.jsp">Store</a></li>
        <li><a href="#" onclick="toggleCartPanel()">Cart</a></li>
      </ul>
    </div>
    <div class="footer-column">
      <h4>Support</h4>
      <ul>
        <li><a href="tharushi/ContactUs.jsp">Contact Us</a></li>
        <li><a href="Com/T&C.jsp">Terms of Service</a></li>
        <li><a href="Com/P&P.jsp">Privacy Policy</a></li>
        <li><a href="Com/faq.jsp">FAQ</a></li>
      </ul>
    </div>
    <div class="footer-column">
      <h4>Follow Us</h4>
      <div class="footer-social">
        <a href="#" class="social-icon"><i class="fa fa-facebook-square" aria-hidden="true"></i></a>
        <a href="#" class="social-icon"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a>
        <a href="#" class="social-icon"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
        <a href="#" class="social-icon"><i class="fa fa-twitter" aria-hidden="true"></i></a>
        <a href="#" class="social-icon"><i class="fa fa-envelope-square" aria-hidden="true"></i></a>
        <a href="#" class="social-icon"><i class="fa fa-instagram" aria-hidden="true"></i></a>
        <a href="#" class="social-icon"><i class="fa fa-phone-square" aria-hidden="true"></i></a>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    &copy; 2025 Tharu Baby Co. All rights reserved.
  </div>
</footer>
</div>

<script>
document.addEventListener('DOMContentLoaded', function () {

	document.querySelectorAll(".card").forEach(card => {
		// Remove item
		card.querySelectorAll(".remove-item").forEach(btn => {
			btn.addEventListener("click", () => {
				const row = btn.closest("tr");
				if (row) {
					row.remove();
					updateTotals(card);
				}
			});
		});

		// Increase quantity
		card.querySelectorAll(".increase").forEach(btn => {
			btn.addEventListener("click", () => {
				const qtyInput = btn.parentElement.querySelector(".qty");
				qtyInput.value = parseInt(qtyInput.value) + 1;
				updateTotals(card);
			});
		});

		// Decrease quantity
		card.querySelectorAll(".decrease").forEach(btn => {
			btn.addEventListener("click", () => {
				const qtyInput = btn.parentElement.querySelector(".qty");
				let value = parseInt(qtyInput.value);
				if (value > 1) {
					qtyInput.value = value - 1;
					updateTotals(card);
				}
			});
		});

		// Initial calculation
		updateTotals(card);
	});

	function updateTotals(card) {
		const rows = card.querySelectorAll("tbody tr");
		let total = 0;
		rows.forEach(row => {
			const price = parseInt(row.dataset.price);
			const qty = parseInt(row.querySelector(".qty").value);
			const rowTotal = price * qty;
			row.querySelector(".item-total").textContent = "Rs. " + rowTotal;
			total += rowTotal;
		});
		card.querySelector(".grandTotal").textContent = "Rs. " + total;
	}

	window.cancelOrder = function () {
		if (confirm("Are you sure you want to cancel this order?")) {
			window.location.href = "thilakshana/cancelOrder.jsp";
		}
	}

	window.payNow = function () {
		if (confirm("Proceed to payment?")) {
			window.location.href = "thilakshana/paymentSuccessful.jsp";
		}
	}
});
</script>

</body>
</html>