package com.promotion.DAO;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.promotion.controller.PromotionController;
import com.promotion.model.PromotionModel;

@WebServlet("/PromotionGetAllServlet")
public class PromotionGetAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<PromotionModel> allPromotions = PromotionController.getAllPromotions();
		request.setAttribute("allPromotions", allPromotions);

		RequestDispatcher dispatcher = request.getRequestDispatcher("admin/promotion_mane.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
