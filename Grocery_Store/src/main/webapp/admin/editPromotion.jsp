<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<link rel="icon" type="image/png" href="../images/logo_OGS_4.png">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Edit Promotion - TheFreshMart</title>
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
    int id = Integer.parseInt(request.getParameter("id"));
    String promo_code = request.getParameter("promo_code");
    String description = request.getParameter("description");
    String discount_type = request.getParameter("discount_type");
    String value = request.getParameter("value");
    String valid_from = request.getParameter("valid_from");
    String valid_to = request.getParameter("valid_to");
    String usage_limit = request.getParameter("usage_limit");
%>

<!-- Edit Promotion Modal -->
<div class="top-bar">
  <button id="backBtn">← Back</button>
</div>

<div class="add-employee-container">
  <div class="header">
    <i class="fas fa-tags fa-lg"></i>
    <h1>Edit Promotion</h1>
  </div>

  <form class="form-section" action="<%=request.getContextPath() %>/UpdatePromotionServlet " method="POST">
    <div class="form-grid">
      <div class="form-group">
        <label for="promo_id">ID</label>
        <input type="text" id="promo_id" name="promo_id" value="<%=id%>" readonly>
      </div>
      <div class="form-group">
        <label for="promo_code">Promo Code</label>
        <input type="text" id="promo_code" name="promo_code" value="<%=promo_code%>" required>
      </div>
      <div class="form-group">
        <label for="description">Description</label>
        <input type="text" id="description" name="description" value="<%=description%>" required>
      </div>
      <div class="form-group">
        <label for="discount_type">Discount Type</label>
        <select id="discount_type" name="discount_type" required>
          <option value="">Select Type</option>
          <option value="Percentage" <%= "Percentage".equals(discount_type) ? "selected" : "" %>>Percentage</option>
          <option value="Fixed" <%= "Fixed".equals(discount_type) ? "selected" : "" %>>Fixed Amount</option>
        </select>
      </div>
      <div class="form-group">
        <label for="value">Value</label>
        <input type="number" step="0.01" id="value" name="value" value="<%=value%>" required>
      </div>
      <div class="form-group">
        <label for="valid_from">Valid From</label>
        <input type="date" id="valid_from" name="valid_from" value="<%=valid_from%>" required>
      </div>
      <div class="form-group">
        <label for="valid_to">Valid To</label>
        <input type="date" id="valid_to" name="valid_to" value="<%=valid_to%>" required>
      </div>
      <div class="form-group">
        <label for="usage_limit">Usage Limit</label>
        <input type="text" id="usage_limit" name="usage_limit" value="<%=usage_limit%>" required>
      </div>
    </div>

    <div class="form-footer">
      <button type="reset" class="btn cancel-btn">Cancel</button>
      <button type="submit" class="btn save-btn">Save Promotion</button>
    </div>
  </form>
</div>

<script>
  document.getElementById('backBtn').onclick = function () {
    window.location.href = '/Grocery_Store/PromotionGetAllServlet';
  };
</script>
</body>
</html>