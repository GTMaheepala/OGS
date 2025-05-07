package AdminPackage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserUpdateServlet")
public class UserUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
        String firstName = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");
        String email = request.getParameter("email");
        int phone = Integer.parseInt(request.getParameter("phone_no"));
        String password = request.getParameter("password");

        UserModel user = new UserModel(id, firstName, lastName, email, phone, password, 0); // Set check_user as needed
        boolean result = UserDAO.updateUser(user);

        if (result) {
            response.sendRedirect("GetUsers");
        } else {
            response.getWriter().println("Failed to update user.");
        }
    }
	

}
