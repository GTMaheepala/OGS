package com.checkout.DAO;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.checkout.controller.checkoutController;

@WebServlet("/insertServlet")
public class insertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String country = request.getParameter("country");
		String streetName = request.getParameter("streetName");
		String city = request.getParameter("city");
		String district = request.getParameter("district");
		String province = request.getParameter("province");
		String custName = request.getParameter("custName");
		String mobileStr = request.getParameter("mobile");
		String email = request.getParameter("email");
		String NIC = request.getParameter("NIC");
		String cName = request.getParameter("cName");
		String cNo = request.getParameter("cNo");
		String eDate = request.getParameter("eDate");
		String CVVStr = request.getParameter("CVV");

		boolean isTrue;

		int mobile = Integer.parseInt(mobileStr);
		int CVV = Integer.parseInt(CVVStr);

		isTrue = checkoutController.insertdata(country, streetName, city, district, province, custName, mobile, email, NIC, cName, cNo, eDate, CVV);

		if (isTrue == true) {
			String alertMessage = "Data Insert Successfully!";
			response.getWriter().println("<script>alert('"+alertMessage+"'); window.location.href='GetAllServlet';</script>");
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}
}
