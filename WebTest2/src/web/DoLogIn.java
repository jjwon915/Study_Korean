package web;

import java.io.IOException;
import java.io.PrintWriter;
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

import com.mysql.cj.Session;

import model.DBUtil;

/**
 * Servlet implementation class DoLogIn
 */
@WebServlet("/doLogin")
public class DoLogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DoLogIn() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub //response.getWriter().append("Served at:
		// ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");

		ServletContext sc = getServletContext();
		Connection conn = (Connection) sc.getAttribute("DBconnection2");

		ResultSet rs = DBUtil.findUser(conn, id);
		
		response.setCharacterEncoding("UTF-8");

		PrintWriter out = response.getWriter();

		if (rs != null) {
			try {
				if (rs.next()) { // existing user
					String checkpw = rs.getString(1);
					if (checkpw.equals(password)) {
						HttpSession httpsession = request.getSession(true);
						httpsession.setAttribute("parentId", id);
						response.sendRedirect("ParentHome.jsp");
					} else {
						// wrong password
						out.println("<script>alert('wrong password');location.href='ParentLogin.jsp';</script>");
					}
				} else {
					// invalid user
					out.println("<script>alert('Invalid user');location.href='ParentLogin.jsp';</script>");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
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