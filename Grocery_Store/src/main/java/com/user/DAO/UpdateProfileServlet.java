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


@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id= request.getParameter("id");
		String first_name= request.getParameter("first_name");
		String last_name= request.getParameter("last_name");
		String email= request.getParameter("email");
		String phone_no= request.getParameter("phone_no");
		String password= request.getParameter("password");
		String check_user= request.getParameter("check_user");
		
		boolean isTrue;
		
		int Id = Integer.parseInt(id);
		int phone = Integer.parseInt(phone_no);
		
		isTrue = UserController.updateprofile(Id, first_name, last_name, email, phone, password, phone);
		
		if(isTrue == true) {
			List<UserModel> userdetails = UserController.getById(id);
			request.setAttribute("userdetails", userdetails);
			
			String alertMessage = "Data Update Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='Com/login.jsp'</script>");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Com/profile.jsp");
			dis2.forward(request, response);
		}
	}

}
