package AdminPackage;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddPromotionServlet")
public class AddPromotionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get form values
        String promoCode = request.getParameter("promo_code");
        String description = request.getParameter("description");
        String discountType = request.getParameter("discount_type");
        String valueStr = request.getParameter("value");
        String validFrom = request.getParameter("valid_from");
        String validTo = request.getParameter("valid_to");
        String usageLimit = request.getParameter("usage_limit");

        boolean isTrue;

        double value = Double.parseDouble(valueStr);

        // Call controller method
        isTrue = PromotionController.insertPromotion(promoCode, description, discountType, value, validFrom, validTo, usageLimit);

        // Success or failure response
        if (isTrue == true) {
            String alertMessage = "Promotion Added Successfully";
            response.getWriter().println("<script> alert('" + alertMessage + "'); window.location.href='PromotionGetAllServlet'</script>");
        } else {
            RequestDispatcher dis = request.getRequestDispatcher("admin/addPromotion.jsp");
            dis.forward(request, response);
        }
    }
}


