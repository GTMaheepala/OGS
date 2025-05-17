package com.checkout.DAO;

import java.io.IOException;
import java.util.List;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.checkout.controller.checkoutController;
import com.checkout.model.checkout;

@WebServlet("/GetAllServlet")
public class GetAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<checkout> allCheckouts = checkoutController.getAllCheckout();
		request.setAttribute("allCheckouts", allCheckouts); 

		RequestDispatcher dispatcher = request.getRequestDispatcher("thilakshana/display.jsp");
		dispatcher.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
