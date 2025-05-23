package com.contact.DAO;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.contact.controller.ConusController;
import com.contact.model.ConusModel;

@WebServlet("/ConusGetAllServlet")
public class ConusGetAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 List<ConusModel> conusList = ConusController.getAllMessages();
	        request.setAttribute("conusList", conusList);

	        RequestDispatcher dispatcher = request.getRequestDispatcher("tharushi/DisplayConus.jsp");
	        dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
