package controllers.lab7.lab73.cart;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Cart;
import models.LineItem;
import models.Product;
import utils.ProductIO;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/lab-7/lab7-3/cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartServlet() {
		super();
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ServletContext sc = getServletContext();

		// get current action
		String action = request.getParameter("action");
		if (action == null) {
			action = "cart"; // default action
		}

		// perform action and set URL to appropriate page
		String baseUrl = "/lab-7/lab7-3";
		String url = baseUrl + "/index.jsp";
		if (action.equals("shop")) {
		} else if (action.equals("cart")) {
			String productCode = request.getParameter("productCode");
			String quantityString = request.getParameter("quantity");
			System.out.println(productCode);

			HttpSession session = request.getSession();
			Cart cart = (Cart) session.getAttribute("cart");
			if (cart == null) {
				cart = new Cart();
			}

			// if the user enters a negative or invalid quantity,
			// the quantity is automatically reset to 1.
			int quantity;
			try {
				quantity = Integer.parseInt(quantityString);
				if (quantity < 0) {
					quantity = 1;
				}
			} catch (NumberFormatException nfe) {
				quantity = 1;
			}

			String path = sc.getRealPath("/WEB-INF/products.txt");
			Product product = ProductIO.getProduct(productCode, path);

			LineItem lineItem = new LineItem();
			lineItem.setProduct(product);
			lineItem.setQuantity(quantity);
			if (quantity > 0) {
				cart.addItem(lineItem);
			} else if (quantity == 0) {
				cart.removeItem(lineItem);
			}

			session.setAttribute("cart", cart);
			url = baseUrl + "/cart.jsp";
		} else if (action.equals("checkout")) {
			url = baseUrl + "/checkout.jsp";
		}

		sc.getRequestDispatcher(url).forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

}
