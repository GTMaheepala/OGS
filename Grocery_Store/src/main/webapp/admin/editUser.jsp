<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Edit User - TheFreshMart</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
<style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
    }
    body {
      background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
      min-height: 100vh;
      padding: 2rem;
    }
    .add-employee-container {
      max-width: 800px;
      margin: 0 auto;
      background: white;
      border-radius: 20px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
      overflow: hidden;
    }
    .header {
      background: linear-gradient(135deg, #162938, #1e3c60);
      color: white;
      padding: 2rem;
      display: flex;
      align-items: center;
      gap: 1rem;
    }
    .header h1 {
      font-size: 1.8rem;
    }
    .form-section {
      padding: 2rem;
    }
    .form-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 1.5rem;
    }
    .form-group {
      display: flex;
      flex-direction: column;
      gap: 0.5rem;
      margin-bottom:-2%;
    }
    .form-group label {
      font-weight: 600;
      color: #162938;
      font-size:18px;
    }
    .form-group input,
    .form-group select {
      padding: 0.8rem;
      border: 2px solid #e9ecef;
      border-radius: 10px;
      font-size: 1.15rem;
      transition: all 0.3s ease;
    }
    .form-group input:focus,
    .form-group select:focus {
      outline: none;
      border-color: #162938;
      box-shadow: 0 0 0 3px rgba(22, 41, 56, 0.1);
    }
    .form-footer {
      display: flex;
      justify-content: flex-end;
      padding: 1.5rem;
      gap: 1rem;
    }
    .btn {
      padding: 0.8rem 1.5rem;
      border: none;
      border-radius: 10px;
      cursor: pointer;
      font-weight: 500;
      transition: all 0.3s ease;
    }
    .cancel-btn {
      background: #e9ecef;
      color: #495057;
    }
    .save-btn {
      background: linear-gradient(135deg, #00b894, #00cec9);
      color: white;
    }
    .btn:hover {
      transform: translateY(-2px);
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    #backBtn{
  padding: 8px 14px;
  font-size: 0.9rem;
  border: none;
  border-radius: 6px;
  cursor: pointer;
  transition: background 0.3s;
}

#backBtn {
  background: #1e3c60;
  color: white;
}

#backBtn:hover {
  background: #5a6268;
}
    
  </style>
</head>
<body>
<%
	String id = request.getParameter("id");
	String first_name = request.getParameter("first_name");
	String last_name = request.getParameter("last_name");
	String email = request.getParameter("email");
	String phone_no = request.getParameter("phone_no");
	String password = request.getParameter("password");
	String check_user = request.getParameter("check_user");
%>
<!-- Edit Employee Modal -->
<div class="top-bar">
	<button id="backBtn">← Back</button>
</div>
	<div class="add-employee-container">
    <div class="header">
      <i class="fas fa-user-plus fa-lg"></i>
      <h1>Add New Employee</h1>
    </div>
    

    <form class="form-section" id="addEmployeeForm" action="/Grocery_Store/UpdateUserServlet" method="POST">
      <div class="form-grid">
      <div class="form-group">
            <label for="firstName">ID</label>
            <input type="text" id="firstName" name="id" value="<%=id%>" readonly>
          </div>
        <div class="form-group">
            <label for="firstName">First Name</label>
            <input type="text" id="firstName" name="first_name" value="<%=first_name%>" required>
          </div>
          <div class="form-group">
            <label for="lastName">Last Name</label>
            <input type="text" id="lastName" name="last_name" value="<%=last_name%>" required>
          </div>
          <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" value="<%=email%>" required>
          </div>
          <div class="form-group">
            <label for="phone">Phone Number</label>
            <input type="tel" id="phone" name="phone_no" value="<%=phone_no%>" required>
          </div>
          <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" value="<%=password%>" required>
          </div>
          <div class="form-group">
			  <label for="position">Position</label>
			  <select id="position" name="check_user" required>
			    <option value="">Select Position</option>
			    <option value="2" <%= "1".equals(check_user) ? "selected" : "" %>>User</option>
			    <option value="2" <%= "2".equals(check_user) ? "selected" : "" %>>Store Manager</option>
			    <option value="3" <%= "3".equals(check_user) ? "selected" : "" %>>Delivery Manager</option>
			    <option value="4" <%= "4".equals(check_user) ? "selected" : "" %>>Admin</option>
			  </select>
		 </div>
          
        </div>

      <div class="form-footer">
        <button type="reset" class="btn cancel-btn">Cancel</button>
        <button type="submit" class="btn save-btn">Save Employee</button>
      </div>
    </form>
  </div>
  <script src="../js/update-profile.js"></script>
</body>
</html>