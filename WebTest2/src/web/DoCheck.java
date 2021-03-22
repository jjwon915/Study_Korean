package web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DBUtil;

/**
 * Servlet implementation class DoCheck
 */
@WebServlet("/doCheck")
public class DoCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DoCheck() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServletContext sc = getServletContext();
		Connection con = (Connection) sc.getAttribute("DBconnection2");

		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		ResultSet rs = DBUtil.findUser(con, id);
		RequestDispatcher view = request.getRequestDispatcher("checkForm2.jsp");
		String result = "";
		if (rs != null) {
			try {
				if (rs.next()) {
					result = "false";
				} else {
					result = "true";
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		HttpSession httpsession = request.getSession(true);
		httpsession.setAttribute("result", result);
		httpsession.setAttribute("id", id);
		
		response.setCharacterEncoding("UTF-8");
		response.sendRedirect("checkForm2.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
