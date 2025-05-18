<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <link rel="icon" type="image/png" href="../images/logo_OGS_4.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>TheFreshMart - Payment Cancel</title>
  <style>
  	* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  }
  
  body {
    background: linear-gradient(to right, #e6ffe6, #ccffcc);
    color: #0f100f;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    text-align: center;
  }
  
  .sc-container h1 {
    color: #1b5e20;
  }
  
  h2, h3{
  	color: #1b5e20;
  }
  
  .sc-container {
    background-color: #ffffff;
    padding: 40px 30px;
    border-radius: 15px;
    box-shadow: 0 4px 15px rgba(0, 128, 0, 0.2);
    max-width: 500px;
    width: 90%;
  }
  
  .sc-container h1 {
    font-size: 2.5rem;
    margin-bottom: 20px;
    color: #000000;
  }
  
  .sc-container p {
    font-size: 1.1rem;
    margin-bottom: 25px;
    color: #cb1212;
  }
  
  .image-wrapper {
    display: flex;
    justify-content: center;
    margin-bottom: 25px;
  }
  
  .image-wrapper img {
    width: 120px;
    height: 120px;
  }
  
  .sc-btn {
    display: inline-block;
    background-color: #43a047;
    color: white;
    padding: 12px 25px;
    border-radius: 8px;
    text-decoration: none;
    transition: background 0.3s;
  }
  
  .sc-btn:hover {
    background-color: #2e7d32;
  }
  </style>
</head>
<body>
  <div class="sc-container">
    <h1>Payment Cancel!</h1>
    <h3>For Any Support,</h3>
    <h4>Email: support@FreshMart-OnlineGroceryStore.com</h4>
    
    <!-- Centered Image -->
    <div class="image-wrapper">
      <img src="images/cancel.png" alt="Payment Cancel" />
    </div>

    <!-- Button under the image -->
    <a href="Store.jsp" class="sc-btn">Back to Home Page</a>
  </div>
</body>
</html>