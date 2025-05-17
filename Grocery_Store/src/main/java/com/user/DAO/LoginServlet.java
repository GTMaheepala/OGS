package com.user.DAO;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.controller.UserController;
import com.user.model.UserModel;

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
//				String alertMessage = "Login Successful";
//				response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='Com/index.jsp'</script>");
				UserModel loggedInUser = userlogin.get(0);
			    int role = loggedInUser.getCheck_user();

			    request.getSession().setAttribute("user", loggedInUser);
			    request.getSession().setAttribute("email", loggedInUser.getEmail());

			    if (role == 4) {
			        // Admin or recruitment manager
//			        response.sendRedirect("Com/dashboard.jsp");
			    	String alertMessage = "Login Successful";
					response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='Com/a_dashboard.jsp'</script>");
//					response.sendRedirect("UserGetAllServlet");
//					response.sendRedirect("EmployeeGetAllServlet");
			    } 
			    else if(role == 3){
//			    	response.sendRedirect("Com/dashboard.jsp");
			    	String alertMessage = "Login Successful";
					response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='Com/e_dashboard.jsp'</script>");
			    }
			    else if(role == 2){
//			    	response.sendRedirect("Com/dashboard.jsp");
			    	String alertMessage = "Login Successful";
					response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='Com/e_dashboard.jsp'</script>");
			    }
			    else {
			        // Regular user
//			        response.sendRedirect("Com/index.jsp");
			    	String alertMessage = "Login Successful";
					response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='thilakshana/Store.jsp'</script>");
			    }
			}
			
			else {
				String alertMessage = "Invalid Credentials,plase try again";
				response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='Com/login.jsp'</script>");
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
//		RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
//		dis.forward(request, response);
	}

}
