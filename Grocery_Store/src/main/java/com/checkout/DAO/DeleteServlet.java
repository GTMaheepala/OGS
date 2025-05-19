package com.checkout.DAO;

import java.io.IOException;
import java.util.List;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.checkout.controller.checkoutController;
import com.checkout.model.checkout;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		boolean isTrue = checkoutController.deletedata(id);

		if (isTrue) {
			response.getWriter().println("<script>alert('Data deleted successfully'); window.location.href='GetUserCheckoutServlet';</script>");
		} else {
			List<checkout> checkoutDetails = checkoutController.getById(id);
			request.setAttribute("checkoutDetails", checkoutDetails);

			RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
			dispatcher.forward(request, response);
		}
	}
}
