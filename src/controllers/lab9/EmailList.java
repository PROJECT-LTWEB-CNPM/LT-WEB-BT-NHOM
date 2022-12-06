package controllers.lab9;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.User;
import utils.UserIO;

@WebServlet("/lab-9/email-list")
public class EmailList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EmailList() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		// get parameters from the request
		String firstName = request.getParameter("firstName");
		String email = request.getParameter("email");
		String lastName = request.getParameter("lastName");

		// get current action
		String action = request.getParameter("action");
		if (action == null) {
			action = "join"; // default action
		}

		// perform action and set URL to appropriate page
		String url = "/lab-9/index.jsp";
		if (action.equals("join")) {
			System.out.println("================JOIN==================");
			try {
				SendMail.SendMail(email, firstName, lastName);
			} catch (UnsupportedEncodingException | MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (action.equals("add")) {

			// store data in User object and save User object in database
			User user = new User(firstName, lastName, email);

			// set User object in request object and set URL
			session.setAttribute("user", user);
			url = "/lab-9/thanks.jsp";
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
