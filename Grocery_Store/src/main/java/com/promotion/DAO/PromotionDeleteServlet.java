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

@WebServlet("/PromotionDeleteServlet")
public class PromotionDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");

        boolean isTrue = PromotionController.deletePromotion(id);

        if (isTrue == true) {
            String alertMessage = "Promotion Delete Successful";
            response.getWriter().println("<script> alert('" + alertMessage + "'); window.location.href='PromotionGetAllServlet'</script>");
        } else {
            List<PromotionModel> promotionDetails = PromotionController.getById(id);
            request.setAttribute("promotionDetails", promotionDetails);

            RequestDispatcher dispatcher = request.getRequestDispatcher("PromotionGetAllServlet");
            dispatcher.forward(request, response);
        }
    
	}

}
