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

@WebServlet("/AccountDeleteUserServlet")
public class AccountDeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String id = request.getParameter("id");
		
		boolean isTrue;
		isTrue = UserController.deleteAccount(id);
		
	if(isTrue == true) {
		String alertMessage = "Account Delete Successful";
		response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='UserGetAllServlet'</script>");
	}
	else {
		List<UserModel> userdetails = UserController.getById(id);
		request.setAttribute("userdetails", userdetails);
		
		RequestDispatcher dispacher = request.getRequestDispatcher("UserGetAllServlet");
		dispacher.forward(request, response);
		}
	}

}
