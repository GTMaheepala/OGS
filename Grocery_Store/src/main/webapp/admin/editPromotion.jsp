<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Edit Promotion - TheFreshMart</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    /* Same CSS from your Edit Employee page */
    /* ... copy your existing style block here without changes ... */
  </style>
</head>
<body>
<%
    String id = request.getParameter("promoId");
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

  <form class="form-section" action="/Grocery_Store/UpdatePromotionServlet" method="POST">
    <div class="form-grid">
      <div class="form-group">
        <label for="promo_id">ID</label>
        <input type="text" id="promo_id" name="id" value="<%=id%>" readonly>
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
        <input type="number" id="usage_limit" name="usage_limit" value="<%=usage_limit%>" required>
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
    window.location.href = 'PromotionGetAllServlet';
  };
</script>
</body>
</html>