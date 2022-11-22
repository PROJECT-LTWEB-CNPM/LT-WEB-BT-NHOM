package controllers.lab7.lab71.download;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.User;
import utils.CookieUtil;
import utils.UserIO;

/**
 * Servlet implementation class DownloadServlet
 */
@WebServlet("/lab-7/lab7-1/download")
public class DownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		// get current action
		String action = request.getParameter("action");
		if (action == null) {
			action = "viewAlbums"; // default action
		}

		// perform action and set URL to appropriate page
		String baseUrl = "/lab-7/lab7-1/";
		String url = "";
		if (action.equals("viewAlbums")) {
			url = baseUrl + "/index.jsp";
		} else if (action.equals("checkUser")) {
			url = baseUrl + checkUser(request, response);
		} else if (action.equals("viewCookies")) {
			url = baseUrl + "/view_cookies.jsp";
		} else if (action.equals("deleteCookies")) {
			url = baseUrl + deleteCookies(request, response);
		}

		// forward to the view
		getServletContext().getRequestDispatcher(url).forward(request, response);

	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		String action = request.getParameter("action");

		// perform action and set URL to appropriate page
		String baseUrl = "/lab-7/lab7-1/";
		String url = baseUrl + "/index.jsp";
		if (action.equals("registerUser")) {
			url = baseUrl + registerUser(request, response);
		}

		// forward to the view
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}

	private String checkUser(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String productCode = request.getParameter("productCode");
		HttpSession session = request.getSession();
		session.setAttribute("productCode", productCode);
		User user = (User) session.getAttribute("user");

		String url;
		// if User object doesn't exist, check email cookie
		if (user == null) {
			Cookie[] cookies = request.getCookies();
			String emailAddress = CookieUtil.getCookieValue(cookies, "emailCookie");

			// if cookie doesn't exist, go to Registration page
			if (emailAddress == null || emailAddress.equals("")) {
				url = "/register.jsp";
			}
			// if cookie exists, create User object and go to Downloads page
			else {
				ServletContext sc = getServletContext();
				String path = sc.getRealPath("/WEB-INF/EmailList.txt");
				user = UserIO.getUser(emailAddress, path);
				session.setAttribute("user", user);
				url = "/" + productCode + "_download.jsp";
			}
		}
		// if User object exists, go to Downloads page
		else {
			url = "/" + productCode + "_download.jsp";
		}
		return url;
	}

	private String registerUser(HttpServletRequest request, HttpServletResponse response) {

		// get the user data
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String password = request.getParameter("password");

		// store the data in a User object
		User user = new User(name, email, password);

		// write the User object to a file
		ServletContext sc = getServletContext();
		String path = sc.getRealPath("/WEB-INF/EmailList.txt");
		UserIO.add(user, path);

		// store the User object as a session attribute
		HttpSession session = request.getSession();
		session.setAttribute("user", user);

		// add a cookie that stores the user's email as a cookie
		Cookie c1 = new Cookie("emailCookie", email);
		c1.setMaxAge(60 * 60 * 24 * 365 * 2); // set age to 2 years
		c1.setPath("/"); // allow entire app to access it
		response.addCookie(c1);

		// add a cookie that stores the user's as a cookie
		Cookie c2 = new Cookie("name", name);
		c2.setMaxAge(60 * 60 * 24 * 365 * 2); // set age to 2 years
		c2.setPath("/"); // allow entire app to access it
		response.addCookie(c2);

		// create and return a URL for the appropriate Download page
		String productCode = (String) session.getAttribute("productCode");
		String url = "/" + productCode + "_download.jsp";
		return url;
	}

	private String deleteCookies(HttpServletRequest request, HttpServletResponse response) {

		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {
			cookie.setMaxAge(0); // delete the cookie
			cookie.setPath("/"); // allow the download application to access it

			HttpSession session = request.getSession();
			session.setAttribute("user", null);
			response.addCookie(cookie);
		}
		String url = "/delete_cookies.jsp";
		return url;
	}

}
