package com.contact.DAO;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.contact.controller.ConusController;
import com.contact.model.ConusModel;

@WebServlet("/ConusDeleteServlet")
public class ConusDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");

	    boolean isTrue = ConusController.deleteConusMessage(id);

	    if (isTrue == true) {
	        String alertMessage = "Message Deleted Successfully";
	        response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='ConusGetAllServlet'</script>");
	    } else {
	        List<ConusModel> conusDetails = ConusController.getById(id);
	        request.setAttribute("conusDetails", conusDetails);

	        RequestDispatcher dispatcher = request.getRequestDispatcher("ConusGetAllServlet");
	        dispatcher.forward(request, response);
	    }
	}

}
