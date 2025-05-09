<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/Grocery_Store/AddPromotionServlet">
    <input type="text" name="promo_code" required placeholder="Promo Code"><br>
    <textarea name="description" required placeholder="Description"></textarea><br>
    <select name="discount_type" required>
        <option value="Percentage">Percentage</option>
        <option value="Fixed">Fixed</option>
    </select><br>
    <input type="number" name="value" step="0.01" required placeholder="Value"><br>
    <input type="date" name="valid_from" required><br>
    <input type="date" name="valid_to" required><br>
    <input type="text" name="usage_limit" required placeholder="Usage Limit"><br>
    <button type="submit">Add Promotion</button>
</form>

</body>
</html>