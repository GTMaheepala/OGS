<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>FreshMart-Checkout</title>
	
<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f4f4f4;
			padding: 20px;
		}

		h2 {
			color: #2c3e50;
			text-align: center;
		}

		table {
			width: 100%;
			border-collapse: collapse;
			margin-top: 20px;
			background-color: #fff;
			box-shadow: 0 2px 10px rgba(0,0,0,0.1);
		}

		th, td {
			padding: 12px 15px;
			border: 1px solid #ddd;
			text-align: center;
		}

		th {
			background-color: #2ecc71;
			color: white;
		}

		tr:nth-child(even) {
			background-color: #f9f9f9;
		}

		tr:hover {
			background-color: #f1f1f1;
		}

		button {
			background-color: #3498db;
			color: white;
			border: none;
			padding: 8px 12px;
			cursor: pointer;
			border-radius: 4px;
			transition: background-color 0.3s;
		}

		button:hover {
			background-color: #2980b9;
		}

		form {
			display: inline;
		}
	</style>	
</head>
<body>
<h2>Checkout Records</h2>
<table border="1">
	
    <tr>
        <th>ID</th>
        <th>Country</th>
        <th>Street Name</th>
        <th>City</th>
        <th>District</th>
        <th>Province</th>
        <th>Customer Name</th>
        <th>Mobile</th>
        <th>Email</th>
        <th>NIC</th>
        <th>Name on Card</th>
        <th>Card No</th>
        <th>Expire Date</th>
        <th>CVV</th>
        <th>Action</th>
    </tr>
    
    <c:forEach var="checkout" items="${allCheckouts}">
        <tr>
            <td>${checkout.id}</td>
            <td>${checkout.country}</td>
            <td>${checkout.streetName}</td>
            <td>${checkout.city}</td>
            <td>${checkout.district}</td>
            <td>${checkout.province}</td>
            <td>${checkout.custName}</td>
            <td>${checkout.mobile}</td>
            <td>${checkout.email}</td>
            <td>${checkout.NIC}</td>
            <td>${checkout.cName}</td>
            <td>${checkout.cNo}</td>
            <td>${checkout.eDate}</td>
            <td>${checkout.CVV}</td>
            <td>
                <a href="update.jsp?id=${checkout.id}&country=${checkout.country}&streetName=${checkout.streetName}&city=${checkout.city}&district=${checkout.district}&province=${checkout.province}&custName=${checkout.custName}&mobile=${checkout.mobile}&email=${checkout.email}&NIC=${checkout.NIC}&cName=${checkout.cName}&cNo=${checkout.cNo}&eDate=${checkout.eDate}&CVV=${checkout.CVV}">
                    <button>Update</button>
                </a>
                <form action="DeleteServlet" method="post">
                    <input type="hidden" name="id" value="${checkout.id}" />
                    <button type="submit">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>