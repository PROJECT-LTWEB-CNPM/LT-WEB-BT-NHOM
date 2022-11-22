package controllers.lab4.lab42;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.User;

/**
 * Servlet implementation class SurveyServlet
 */
@WebServlet("/lab-4/lab4-2/survey")
public class SurveyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// get parameters from the request
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String heardFrom = request.getParameter("heardFrom");
		String wantsUpdates = request.getParameter("wantsUpdates");
		String contactVia = request.getParameter("contactVia");

//		System.out.println(firstName + " " + email + " " + heardFrom + " " + wantsUpdates + " " + contactVia);

		// process paramters
		if (heardFrom == null) {
			heardFrom = "NA";
		}
		if (wantsUpdates == null) {
			wantsUpdates = "No";
		} else {
			wantsUpdates = "Yes";
		}

		User user = new User(firstName, lastName, email, heardFrom, wantsUpdates, contactVia);
		// store data in User object

		// store User object in request
		request.setAttribute("user", user);

		// forward request to JSP
		String url = "/lab-4/lab4-2/survey.jsp";
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
