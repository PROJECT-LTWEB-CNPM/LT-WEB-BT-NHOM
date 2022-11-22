package controllers.lab5;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.User;
import utils.UserIO;

/**
 * Servlet implementation class EmailListServlet
 */
@WebServlet("/lab-5/emailList")
public class EmailListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmailListServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		// get current action
		String action = request.getParameter("action");
		if (action == null) {
			action = "join"; // default action
		}

		// perform action and set URL to appropriate page
		String url = "/lab-5/index.jsp";
		if (action.equals("join")) {
		} else if (action.equals("add")) {
			// get parameters from the request
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String pwd = request.getParameter("password");

			// store data in User object and save User object in database
			User user = new User(name, email, pwd);

			// set User object in request object and set URL
			session.setAttribute("user", user);
			url = "/lab-5/thanks.jsp";
		}

		// create the Date object and store it in the request
		Date currentDate = new Date();
		request.setAttribute("currentDate", currentDate);

		// create users list and store it in the session
		String path = getServletContext().getRealPath("/WEB-INF/EmailList.txt");
		System.out.println(path);
		ArrayList<User> users = UserIO.getUsers(path);
		session.setAttribute("users", users);

		// forward request and response objects to specified URL
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
