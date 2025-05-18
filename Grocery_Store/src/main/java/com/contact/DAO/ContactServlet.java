package com.contact.DAO;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 	String fullName = request.getParameter("full_name");
	        String email = request.getParameter("email");
	        String message = request.getParameter("message");

	        boolean isTrue;

	        isTrue = com.contact.controller.ConusController.insertMessage(fullName, email, message);

	        if (isTrue) {
	            String alertMessage = "Message Sent Successfully";
	            response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='GetUserMessagesServlet';</script>");
	        } else {
	            RequestDispatcher dis = request.getRequestDispatcher("Com/contact.jsp");
	            dis.forward(request, response);
	        }
	}

}
