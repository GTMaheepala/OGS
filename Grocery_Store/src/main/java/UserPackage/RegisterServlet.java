package UserPackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String first_name= request.getParameter("first_name");
		String last_name= request.getParameter("last_name");
		String email= request.getParameter("email");
		String phone_no= request.getParameter("phone_no");
		String password= request.getParameter("password");
		
		boolean isTrue;
		
		int phone = Integer.parseInt(phone_no);
		isTrue = UserController.insertdata(first_name, last_name, email, phone, password);
		
		if(isTrue == true) {
			String alertMessage = "Register Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='Com/login.jsp'</script>");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Com/register.jsp");
			dis2.forward(request, response);
		}
	}

}
