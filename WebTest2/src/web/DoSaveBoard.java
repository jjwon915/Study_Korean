package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DBUtil;

/**
 * Servlet implementation class DoSaveBoard
 */
@WebServlet("/doSaveBoard")
public class DoSaveBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DoSaveBoard() {
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
		request.setCharacterEncoding("UTF-8");

		String name = request.getParameter("name");
		String parentId = request.getParameter("parentId");
		String first = request.getParameter("first");
		String second = request.getParameter("second");
		String third = request.getParameter("third");
		String fourth = request.getParameter("fourth");
		String fifth = request.getParameter("fifth");
		String sixth = request.getParameter("sixth");
		String seventh = request.getParameter("seventh");
		String eighth = request.getParameter("eighth");
		String nineth = request.getParameter("nineth");
		String firstText = request.getParameter("firstText");
		String secondText = request.getParameter("secondText");
		String thirdText= request.getParameter("thirdText");
		String fourthText = request.getParameter("fourthText");
		String fifthText = request.getParameter("fifthText");
		String sixthText = request.getParameter("sixthText");
		String seventhText = request.getParameter("seventhText");
		String eighthText = request.getParameter("eighthText");
		String ninethText = request.getParameter("ninethText");
		
		ServletContext sc = getServletContext();
		Connection conn = (Connection) sc.getAttribute("DBconnection2");

		try {
			DBUtil.saveBoard(conn, name, parentId, first, second,
					third, fourth, fifth, sixth, seventh, eighth, nineth,
					firstText, secondText, thirdText, fourthText, fifthText,
					sixthText, seventhText, eighthText, ninethText);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		response.setCharacterEncoding("UTF-8");

		PrintWriter out = response.getWriter();
		out.println("<script>alert('save board');location.href='MakeImage.jsp';</script>");

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