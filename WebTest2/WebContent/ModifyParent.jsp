<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한글쑥쑥</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		if (name == "") {
			name = (String) session.getAttribute("name");
		}
		String password = request.getParameter("pw");
		if (password == "") {
			password = (String) session.getAttribute("password");
		}
		String phone = request.getParameter("phone");
		if(phone == ""){
			phone = (String) session.getAttribute("phone");
		}
	%>
	<%
		Connection conn = null; // DBMS와 Java연결객체
		PreparedStatement pstmt = null; // SQL구문을 실행

		String url = "jdbc:mysql://localhost:3306/webapp1?serverTimezone=UTC";
		String dbUser = "root";
		String dbPass = "db2019";

		String id = (String) session.getAttribute("parentId");
		String query = "update parent set name = ?, password = ?, phone = ? where id='" + id + "'";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			// 2. 데이터베이스 커넥션 생성
			conn = DriverManager.getConnection(url, dbUser, dbPass);

			// 3. Statement 생성
			pstmt = conn.prepareStatement(query);

			// 4. 쿼리 실행
			pstmt.setString(1, name);
			pstmt.setString(2, password);
			pstmt.setString(3, phone);

			pstmt.executeUpdate();

		} catch (SQLException e) {
			System.out.println("[SQL Error : " + e.getMessage() + "]");
		} finally { //사용순서와 반대로 close 함
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		response.sendRedirect("GoMypage.jsp");
	%>
</body>
</html>