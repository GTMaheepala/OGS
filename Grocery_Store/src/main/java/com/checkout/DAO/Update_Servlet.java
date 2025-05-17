package com.checkout.DAO;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.checkout.controller.checkoutController;
import com.checkout.model.checkout;

@WebServlet("/Update_Servlet")
public class Update_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String id = request.getParameter("id");
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
	        
	        isTrue = checkoutController.insertdata(country, streetName, city, district, province,  custName, mobile, email, NIC, cName, cNo, eDate, CVV);
	        
	        if(isTrue == true) {
	        	List<checkout> checkoutdetails = checkoutController.getById(id);
	        	request.setAttribute("checkoutdetails", checkoutdetails);
	        	
				String alertMessage = "Data Update Successful";
				response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='GetAllServlet'</script>");
			}
			else {
				RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
				dis2.forward(request, response);
			}

	}
}
