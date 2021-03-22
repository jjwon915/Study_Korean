<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한글쑥쑥</title>
</head>
<body>
	<%
		String id = request.getParameter("test");
	%>

	<%
		try {
			Connection conn = null;
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp1?serverTimezone=UTC", "root",
					"db2019");
			ResultSet rs = null;
			Statement st = null;
			st = conn.createStatement();
			st.executeUpdate("delete from child where id='" + id + "'");
			st.executeUpdate("delete from result where childId = '" + id + "'");

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		out.print("<script>alert('삭제되었습니다.');location.href='ChildManage.jsp';</script>");
	%>
</body>
</html>