package UserPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		try {
			List<UserModel> userlogin = UserController.validateLogin(email, password);
		request.setAttribute("userlogin", userlogin);
			
			if(userlogin != null && !userlogin.isEmpty()) {
				String alertMessage = "Login Successful";
				response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='index.jsp'</script>");
			}
			
			else {
				String alertMessage = "Invalid Credentials,plase try again";
				response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='login.jsp'</script>");
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
//		RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
//		dis.forward(request, response);
	}

}
