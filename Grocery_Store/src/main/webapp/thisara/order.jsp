<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="table-container">
      <table>
        <thead>
          <tr>
            <th>Courier ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Company Name</th>
            <th>Status</th>
            <th>Vehicle Type</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody id="deliveryPartnerTable">
        	
        	<c:forEach var = "deliveries" items = "${allDelivery}">
          <tr>
            <td>${deliveries.id}</td>
            <td>${deliveries.firstName}</td>
            <td>${deliveries.lastName}</td>
            <td>${deliveries.email}</td>
            <td>${deliveries.phoneNO}</td>
            <td>${deliveries.companyName}</td>
            <td>${deliveries.status}</td>
            <td>${deliveries.vehicleType}</td>
            <td>
              
                <button class="edit-btn" onclick="window.location.href='edit_DP.html'">
                  <i class="fas fa-edit"></i> Edit
                </button>
                <button class="delete-btn" onclick="deleteDeliveryPartner(this)">
                  <i class="fas fa-trash"></i> Delete
                </button>
              
            </td>
          </tr>
            </c:forEach>
        </tbody>
      </table>
    </div>
</body>
</html>