<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
			st.executeUpdate("delete from board where id='" + id + "'");
			st.executeUpdate("delete from result where boardId='" + id + "'");

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		out.print("<script>alert('삭제되었습니다.');location.href='StudyList.jsp';</script>");
	%>
</body>
</html>