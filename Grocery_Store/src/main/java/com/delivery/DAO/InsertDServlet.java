package com.delivery.DAO;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.delivery.controller.DataController;

@WebServlet("/InsertDServlet")
public class InsertDServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String phoneNO = request.getParameter("phoneNO");
		String companyName = request.getParameter("companyName");
		String status = request.getParameter("status");
		String vehicleType = request.getParameter("vehicleType");
		
		boolean isTrue;
		
		int phone = Integer.parseInt(phoneNO);
		
		isTrue = DataController.insertdata(firstName, lastName, email, phone, companyName, status, vehicleType);
		
		if(isTrue == true) {
			
			String alertMessage = "Data Insert Successful";
			response.getWriter().println("<script> alert('" +alertMessage+"'); window.location.href = 'deliveryGetAllDataServlet'</script>");
			
		}
		else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("thisara/AddDP.jsp");
			dis2.forward(request, response);
		}
	}

}
