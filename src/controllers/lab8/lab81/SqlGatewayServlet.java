package controllers.lab8.lab81;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/lab-8/lab8-1/sqlGateway")
public class SqlGatewayServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// get a connection
		ConnectionPool pool = ConnectionPool.getInstance();
		Connection connection = pool.getConnection();

		String sqlStatement = request.getParameter("sqlStatement");
		String sqlResult = "";
		try {
			// create a statement
			Statement statement = connection.createStatement();

			// parse the SQL string
			sqlStatement = sqlStatement.trim();
			if (sqlStatement.length() >= 6) {
				String sqlType = sqlStatement.substring(0, 6);
				if (sqlType.equalsIgnoreCase("select")) {
					// create the HTML for the result set
					ResultSet resultSet = statement.executeQuery(sqlStatement);
					sqlResult = SQLUtil.getHtmlTable(resultSet);
					resultSet.close();
				} else {
					int i = statement.executeUpdate(sqlStatement);
					if (i == 0) { // a DDL statement
						sqlResult = "<p>The statement executed successfully.</p>";
					} else { // an INSERT, UPDATE, or DELETE statement
						sqlResult = "<p>The statement executed successfully.<br>" + i + " row(s) affected.</p>";
					}
				}
			}
			statement.close();
			connection.close();
		} catch (SQLException e) {
			sqlResult = "<p>Error executing the SQL statement: <br>" + e.getMessage() + "</p>";
		} finally {
			pool.freeConnection(connection);
		}

		HttpSession session = request.getSession();
		session.setAttribute("sqlResult", sqlResult);
		session.setAttribute("sqlStatement", sqlStatement);

		String url = "/lab-8/lab8-1/index.jsp";
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}
}