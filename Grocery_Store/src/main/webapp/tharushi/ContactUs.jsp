<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact us form</title>
</head>
<body>
           <div class = "contactform">
                <form method="post" action="insertsevlet">
                    <h2>Send message  </h2>
                    <div class ="inputBox">
                        <input type = "text" name ="name" required = "required">
                        <span>Full Name </span>
                    </div>

                    <div class ="inputBox">
                        <input type = "text" name ="email" required = "required">
                        <span>Email </span>
                    </div>
                      
                    <div class ="inputBox">
                        <textarea name="message" required = "required"></textarea>
                        <span>Type your message.. </span>
                    </div>

                    <div class ="inputBox">
                        <input type = "submit" name ="" value = "send" onclick="handleSubmit(e)">  
                    </div>


                </form>
            </div>

  
  
</body>
</html>