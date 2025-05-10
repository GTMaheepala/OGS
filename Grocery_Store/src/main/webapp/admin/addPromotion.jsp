<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Add New Employee - TheFreshMart</title>
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
    }
    .form-group label {
      font-weight: 600;
      color: #162938;
      font-size:18px;
    }
    .form-group input,
    .form-group select,
    .form-group textarea {
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
      margin-rigth: 25%;
      margin-lest: 25%;
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
<!-- Add Promotion Modal -->
  <div class="top-bar">
	<button id="backBtn">← Back</button>
  </div>
<div class="add-employee-container">
    <div class="header">
      <i class="fas fa-tags"></i>
      <h1>Add New Promotion</h1>
    </div>
<form class="form-section" method="post" action="/Grocery_Store/AddPromotionServlet">
	<div class="form-grid">
		<div class="form-group">
		<label for="firstName">Promo Code</label>
	    <input type="text" name="promo_code" required placeholder="Promo Code"><br>
	    </div>
	    <div class="form-group">
		<label for="firstName">Description</label>
	    <textarea name="description" required placeholder="Description"></textarea><br>
	    </div>
	    <div class="form-group">
            <label for="position">Discount Type</label>
	    <select name="discount_type" required>
	    	<option value="">Select Position</option>
	        <option value="Percentage">Percentage</option>
	        <option value="Fixed">Fixed</option>
	    </select><br>
	    </div>
	    <div class="form-group">
		<label for="firstName">Value</label>
	    <input type="number" name="value" step="0.01" required placeholder="Value"><br>
	    </div>
	    <div class="form-group">
		<label for="firstName">Valid From</label>
	    <input type="date" name="valid_from" required><br>
	    </div>
	    <div class="form-group">
		<label for="firstName">Valid To</label>
	    <input type="date" name="valid_to" required><br>
	    </div>
	    <div class="form-group">
		<label for="firstName">Usage Limit</label>
	    <input type="text" name="usage_limit" required placeholder="Usage Limit"><br>
	    <div class="form-footer">
        <button type="reset" class="btn cancel-btn">Cancel</button>
        <button type="submit" class="btn save-btn">Add Promotion</button>
      </div>
	    
</form>
<script src="../js/update-profile.js"></script>
</body>
</html>