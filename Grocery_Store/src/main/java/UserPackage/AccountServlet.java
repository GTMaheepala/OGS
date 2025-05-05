package UserPackage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AccountServlet")
public class AccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		 HttpSession session = request.getSession(false);
	        if (session == null || session.getAttribute("email") == null) {
	            response.sendRedirect("loginn.jsp");
	            return;
	}
	        String email = (String) session.getAttribute("email");

	        try (Connection conn = DB_Connection.getConnection()) {
	            String sql = "SELECT * FROM users WHERE email = ?";
	            PreparedStatement stmt = conn.prepareStatement(sql);
	            stmt.setString(1, email);
	            ResultSet rs = stmt.executeQuery();

	            if (rs.next()) {
	                UserModel user = new UserModel(
	                        rs.getInt("id"),
	                        rs.getString("First_name"),
	                        rs.getString("Last_name"),
	                        rs.getString("Email"),
	                        0, rs.getString("Phone"),
	                        rs.getInt("check_user")
	                );
	                request.setAttribute("user", user);
	                RequestDispatcher dispatcher = request.getRequestDispatcher("Com/account.jsp");
	                dispatcher.forward(request, response);
	            } else {
	                response.getWriter().println("User not found.");
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	            response.getWriter().println("Database error");
	        }

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
