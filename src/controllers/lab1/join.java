package controllers.lab1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.User;

/**
 * Servlet implementation class join
 */
@WebServlet("/lab-1/join")
public class join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public join() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String fullname = request.getParameter("fullname");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			User userJoin = new User(fullname, email, password);

			String url = "/lab-1/join.jsp";

			if (fullname != "" && email != "" && password != "") {
				url = "/lab-1/dashboard.jsp";
				request.setAttribute("userJoin", userJoin);
			} else {
				request.setAttribute("message", "You need to fill all fields!!");
			}
			getServletContext().getRequestDispatcher(url).forward(request, response);
		} catch (Exception e) {
			System.out.println("Something was wrong!");
		}
	}

}
