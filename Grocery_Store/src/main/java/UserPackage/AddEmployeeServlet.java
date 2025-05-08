package UserPackage;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/AddEmployeeServlet")
public class AddEmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String first_name= request.getParameter("first_name");
		String last_name= request.getParameter("last_name");
		String email= request.getParameter("email");
		String phone_no= request.getParameter("phone_no");
		String password= request.getParameter("password");
		String check_user= request.getParameter("check_user");
		
		boolean isTrue;
		
		int phone = Integer.parseInt(phone_no);
		int Check_user = Integer.parseInt(check_user);
		isTrue = UserController.insertdata(first_name, last_name, email, phone, password, Check_user);
		
		if(isTrue == true) {
			String alertMessage = "Register Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='EmployeeGetAllServlet'</script>");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("EmployeeGetAllServlet");
			dis2.forward(request, response);
		}
	}
}