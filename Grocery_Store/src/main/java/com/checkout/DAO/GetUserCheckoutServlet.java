package com.checkout.DAO;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.checkout.controller.checkoutController;
import com.checkout.model.checkout;

@WebServlet("/GetUserCheckoutServlet")
public class GetUserCheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session = request.getSession();
	        String userEmail = (String) session.getAttribute("userEmail");

	        if (userEmail != null) {
	            List<checkout> checkouts = checkoutController.getCheckoutByUser(userEmail);
	            request.setAttribute("checkoutList", checkouts);
	            request.getRequestDispatcher("thilakshana/display.jsp").forward(request, response);
	        } else {
	            response.sendRedirect("login.jsp");
	        }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
