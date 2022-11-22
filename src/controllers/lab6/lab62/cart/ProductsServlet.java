package controllers.lab6.lab62.cart;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Product;
import utils.ProductIO;

/**
 * Servlet implementation class ProductsServlet
 */
@WebServlet("/lab-6/lab6-2/index")
public class ProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String path = getServletContext().getRealPath("/WEB-INF/products.txt");
		ArrayList<Product> products = ProductIO.getProducts(path);
		session.setAttribute("products", products);

		String url = "/lab-6/lab6-2/index.jsp";
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}

}
