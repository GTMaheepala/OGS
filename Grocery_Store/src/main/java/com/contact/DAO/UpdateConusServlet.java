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

@WebServlet("/UpdateConusServlet")
public class UpdateConusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Extract form data from the request
        String id = request.getParameter("id");
        String full_name = request.getParameter("full_name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        // Parse the ID to integer
        int Id = Integer.parseInt(id);

        // Call the controller method to update the contact message
        boolean isTrue = ConusController.updateConus(Id, full_name, email, message);

        if (isTrue == true) {
            // After a successful update, fetch updated details
            List<ConusModel> conusDetails = ConusController.getById(id);
            request.setAttribute("conusDetails", conusDetails);

            // Display success message and redirect to the list of conus/contact messages
            String alertMessage = "Contact Message Update Successful";
            response.getWriter().println("<script> alert('" + alertMessage + "'); window.location.href='GetUserMessagesServlet'</script>");
        } else {
            // If the update failed, redirect back to the contact list
            RequestDispatcher dis = request.getRequestDispatcher("ConusGetAllServlet");
            dis.forward(request, response);
        }
	}

}
