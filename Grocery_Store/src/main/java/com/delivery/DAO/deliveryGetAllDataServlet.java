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

@WebServlet("/deliveryGetAllDataServlet")
public class deliveryGetAllDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<DeliveryModel> allDelivery = DataController.getAllDelivery();
		
		request.setAttribute("allDelivery", allDelivery);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("thisara/order.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
