package com.delivery.DAO;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.delivery.controller.DataController;
import com.delivery.model.DeliveryModel;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String phoneNO = request.getParameter("phoneNO");
		String companyName = request.getParameter("companyName");
		String status = request.getParameter("status");
		String vehicleType = request.getParameter("vehicleType");
		
		boolean isTrue;
		isTrue = DataController.updatedata(id, firstName, lastName, email, phoneNO, companyName, status, vehicleType);
		
		if(isTrue == true) {
			
			List<DeliveryModel> deliverydetails = DataController.getById(id);
			request.setAttribute("deliverydetails", deliverydetails);
			
			String alertMessage = "Data Update Successful";
			response.getWriter().println("<script> alert('" +alertMessage+"'); window.location.href = 'deliveryGetAllDataServlet'</script>");
			
		}
		else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("thisara/AddDP.jsp");
			dis2.forward(request, response);
		}
		
	}

}
