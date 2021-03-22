package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import model.DBUtil;

/**
 * Servlet implementation class DoMyPage
 */
@WebServlet("/doMyPage")
public class DoMyPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoMyPage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("parentId");
		String password = request.getParameter("password");
		
		ServletContext sc = getServletContext();
		Connection conn= (Connection) sc.getAttribute("DBconnection2");
		
		response.setCharacterEncoding("UTF-8");
		
		ResultSet rs = DBUtil.correctUser(conn, id);
		
		PrintWriter out = response.getWriter();
		
		if (rs != null) {
			try {
				if(rs.next()) { // existing user
					String checkpw = rs.getString(1);
					String checkname = rs.getString(2);
					String checkbirth = rs.getString(3);
					String checkphone = rs.getString(4);
					if (checkpw.equals(password)){
						HttpSession httpsession = request.getSession(true);
						httpsession.setAttribute("parentId", id);
						httpsession.setAttribute("name", checkname);
						httpsession.setAttribute("birth", checkbirth);
						httpsession.setAttribute("phone", checkphone);
						response.sendRedirect("Mypage.jsp");	
					}
					else {
						// wrong password
						out.println("<script>alert('wrong password');location.href='GoMypage.jsp';</script>");
						out.flush();
					}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
