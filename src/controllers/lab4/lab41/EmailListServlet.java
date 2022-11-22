package controllers.lab4.lab41;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.User;

/**
 * Servlet implementation class EmailListServlet
 */
@WebServlet("/lab-4/lab4-1/emailList1")
public class EmailListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/lab-4/lab4-1/index.jsp";

		// get current action
		String action = request.getParameter("action");
		if (action == null) {
			action = "join"; // default action
		}

		// perform action and set URL to appropriate page
		if (action.equals("join")) {
		} else if (action.equals("add")) {
			// get parameters from the request
			String fullName = request.getParameter("fullName");
			String email = request.getParameter("email");
			String pwd = request.getParameter("password");

			// store data in User object
			User user = new User(fullName, email, pwd);

			// validate the parameters
			String message;
			if (fullName == null || pwd == null || email == null || fullName.isEmpty() || pwd.isEmpty()
					|| email.isEmpty()) {
				message = "Please fill out all three text boxes.";
			} else {
				message = null;
				url = "/lab-4/lab4-1/thanks.jsp";
			}
			request.setAttribute("user", user);
			request.setAttribute("message", message);
		}
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

}
