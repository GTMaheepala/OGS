package com.contact.DAO;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.contact.controller.ConusController;
import com.contact.model.ConusModel;


@WebServlet("/GetUserMessagesServlet")
public class GetUserMessagesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session = request.getSession(false); // get existing session only
	        String userEmail = (String) session.getAttribute("userEmail");

	        if (userEmail != null) {
	            List<ConusModel> messages = ConusController.getMessagesByUser(userEmail);
	            request.setAttribute("conusList", messages);
	            request.getRequestDispatcher("tharushi/DisplayConus.jsp").forward(request, response);
	        } else {
	            response.sendRedirect("login.jsp"); // if session expired or user not logged in
	        }
	  }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
