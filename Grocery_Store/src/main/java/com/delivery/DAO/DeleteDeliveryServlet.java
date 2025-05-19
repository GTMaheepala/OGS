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


@WebServlet("/DeleteDeliveryServlet")
public class DeleteDeliveryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		boolean isTrue;
		isTrue = DataController.deletedata(id);
		
		if(isTrue == true) {
			
			String alertMessage = "Data Delete Successful";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='deliveryGetAllDataServlet';</script>");
			
		}
		else {
			
			List<DeliveryModel> deliveryDetails = DataController.getById(id);
			
			request.setAttribute("deliveryDetails", deliveryDetails);
			
			RequestDispatcher dispacher = request.getRequestDispatcher("deliveryGetAllDataServlet");
			dispacher.forward(request, response);
		}
		
	}

}
