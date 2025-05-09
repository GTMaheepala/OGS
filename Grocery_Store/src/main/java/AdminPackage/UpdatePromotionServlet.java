package AdminPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdatePromotionServlet")
public class UpdatePromotionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String promo_code = request.getParameter("promo_code");
		String description = request.getParameter("description");
		String discount_type = request.getParameter("discount_type");
		String valueStr = request.getParameter("value");
		String valid_from = request.getParameter("valid_from");
		String valid_to = request.getParameter("valid_to");
		String usage_limitStr = request.getParameter("usage_limit");

		int Id = Integer.parseInt(id);
		double value = Double.parseDouble(valueStr);
		int usage_limit = Integer.parseInt(usage_limitStr);

		boolean isTrue = PromotionController.updatePromotion(Id, promo_code, description, discount_type, value, valid_from, valid_to, usage_limit);

		if (isTrue == true) {
			List<PromotionModel> promotionDetails = PromotionController.getById(id);
			request.setAttribute("promotionDetails", promotionDetails);

			String alertMessage = "Promotion Update Successful";
			response.getWriter().println("<script> alert('" + alertMessage + "'); window.location.href='PromotionGetAllServlet'</script>");
		} else {
			RequestDispatcher dis = request.getRequestDispatcher("PromotionGetAllServlet");
			dis.forward(request, response);
		}
	}
	

}
