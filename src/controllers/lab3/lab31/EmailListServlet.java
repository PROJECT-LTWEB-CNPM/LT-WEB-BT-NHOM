package controllers.lab3.lab31;

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
@WebServlet("/lab-3/lab3-1/emailList")
public class EmailListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EmailListServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/lab-3/lab3-1/index.jsp";
		// get current action
		String action = request.getParameter("action");
		System.out.println("Parameter: " + action);
		log("Parameter: " + action);
		if (action == null) {
			action = "join"; // default action
		} else if (action.equals("add")) {

			// get parameters from the request
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String password = request.getParameter("password");

			// store data in User object
			User user = new User(name, email, password);

			// validate the parameters
			String message;
			if (name == null || email == null || password == null || name.isEmpty() || email.isEmpty()
					|| password.isEmpty()) {
				message = "Please fill out all three text boxes.";
			} else {
				message = "";
				url = "/lab-3/lab3-1/thanks.jsp";
				// UserDB.insert(user);
			}
			request.setAttribute("user", user);
			request.setAttribute("message", message);
		}
		getServletContext().getRequestDispatcher(url).forward(request, response);

	}

}
