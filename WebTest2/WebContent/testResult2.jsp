<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.DBUtil"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>한글쑥쑥</title>
<style type="text/css">
.container {
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
}

* {
	margin: 0;
	padding: 0;
	border: 0;
}

.main_message {
	font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans",
		"Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica,
		sans-serif;
	font-size: 18px;
}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");

		String first = request.getParameter("firstconnect");
		String second = request.getParameter("secondconnect");
		String third = request.getParameter("thirdconnect");
		String fourth = request.getParameter("fourthconnect");
		String fifth = request.getParameter("fifthconnect");
		String sixth = request.getParameter("sixthconnect");
		String seventh = request.getParameter("seventhconnect");
		String eighth = request.getParameter("eighthconnect");
		String nineth = request.getParameter("ninethconnect");

		String[] getText = { first, second, third, fourth, fifth, sixth, seventh, eighth, nineth };

		String firstImage = request.getParameter("firstImage");
		String secondImage = request.getParameter("secondImage");
		String thirdImage = request.getParameter("thirdImage");
		String fourthImage = request.getParameter("fourthImage");
		String fifthImage = request.getParameter("fifthImage");
		String sixthImage = request.getParameter("sixthImage");
		String seventhImage = request.getParameter("seventhImage");
		String eighthImage = request.getParameter("eighthImage");
		String ninethImage = request.getParameter("ninethImage");

		String[] getImage = { firstImage, secondImage, thirdImage, fourthImage, fifthImage, sixthImage,
				seventhImage, eighthImage, ninethImage };

		Class.forName("com.mysql.jdbc.Driver");

		Connection conn = null; // DBMS와 Java연결객체
		Statement stmt = null; // SQL구문을 실행
		ResultSet rs = null; // SQL구문의 실행결과를 저장

		try {
			String url = "jdbc:mysql://localhost:3306/webapp1?serverTimezone=UTC";
			String dbUser = "root";
			String dbPass = "db2019";

			int id = Integer.parseInt(request.getParameter("boardId"));

			String query = "select * from board where id='" + id + "'";

			// 2. 데이터베이스 커넥션 생성
			conn = DriverManager.getConnection(url, dbUser, dbPass);

			// 3. Statement 생성
			stmt = conn.createStatement();

			// 4. 쿼리 실행
			rs = stmt.executeQuery(query);
			while (rs.next()) {
				String src1 = rs.getString("first");
				String src2 = rs.getString("second");
				String src3 = rs.getString("third");
				String src4 = rs.getString("fourth");
				String src5 = rs.getString("fifth");
				String src6 = rs.getString("sixth");
				String src7 = rs.getString("seventh");
				String src8 = rs.getString("eighth");
				String src9 = rs.getString("nineth");

				String text1 = rs.getString("firstText");
				String text2 = rs.getString("secondText");
				String text3 = rs.getString("thirdText");
				String text4 = rs.getString("fourthText");
				String text5 = rs.getString("fifthText");
				String text6 = rs.getString("sixthText");
				String text7 = rs.getString("seventhText");
				String text8 = rs.getString("eighthText");
				String text9 = rs.getString("ninethText");

				String[] src = { src1, src2, src3, src4, src5, src6, src7, src8, src9 };
				String[] text = { text1, text2, text3, text4, text5, text6, text7, text8, text9 };

				int one = 0;
				int two = 0;
				int three = 0;
				int four = 0;
				int five = 0;
				int six = 0;
				int seven = 0;
				int eight = 0;
				int nine = 0;

				for (int i = 0; i < 9; i++) {
					if (getImage[i].equals(src[0])) {
						if (getText[i].equals(text[0])) {
							one = 1;
							break;
						} else if (getText[i] != text[0]) {
							continue;
						}
					}
				}

				for (int i = 0; i < 9; i++) {
					if (getImage[i].equals(src[1])) {
						if (getText[i].equals(text[1])) {
							two = 1;
							break;
						} else if (getText[i] != text[1]) {
							continue;
						}
					}
				}

				for (int i = 0; i < 9; i++) {
					if (getImage[i].equals(src[2])) {
						if (getText[i].equals(text[2])) {
							three = 1;
							break;
						} else if (getText[i] != text[2]) {
							continue;
						}
					}
				}

				for (int i = 0; i < 9; i++) {
					if (getImage[i].equals(src[3])) {
						if (getText[i].equals(text[3])) {
							four = 1;
							break;
						} else if (getText[i] != text[3]) {
							continue;
						}
					}
				}

				for (int i = 0; i < 9; i++) {
					if (getImage[i].equals(src[4])) {
						if (getText[i].equals(text[4])) {
							five = 1;
							break;
						} else if (getText[i] != text[4]) {
							continue;
						}
					}
				}

				for (int i = 0; i < 9; i++) {
					if (getImage[i].equals(src[5])) {
						if (getText[i].equals(text[5])) {
							six = 1;
							break;
						} else if (getText[i] != text[5]) {
							continue;
						}
					}
				}

				for (int i = 0; i < 9; i++) {
					if (getImage[i].equals(src[6])) {
						if (getText[i].equals(text[6])) {
							seven = 1;
							break;
						} else if (getText[i] != text[6]) {
							continue;
						}
					}
				}

				for (int i = 0; i < 9; i++) {
					if (getImage[i].equals(src[7])) {
						if (getText[i].equals(text[7])) {
							eight = 1;
							break;
						} else if (getText[i] != text[7]) {
							continue;
						}
					}
				}

				for (int i = 0; i < 9; i++) {
					if (getImage[i].equals(src[8])) {
						if (getText[i].equals(text[8])) {
							nine = 1;
							break;
						} else if (getText[i] != text[8]) {
							continue;
						}
					}
				}

				String childId = (String) session.getAttribute("childId");

				try {
					DBUtil.insertResult(conn, childId, id, one, two, three, four, five, six, seven, eight, nine);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				int results = one + two + three + four + five + six + seven + eight + nine;
				String resultImg = null;

				if (results == 0 || results == 1) {
					resultImg = "Image/01_result.png";
				} else if (results == 2 || results == 3) {
					resultImg = "Image/23_result.png";
				} else if (results == 4 || results == 5) {
					resultImg = "Image/45_result.png";
				} else if (results == 6 || results == 7 || results == 8) {
					resultImg = "Image/678_result.png";
				} else if (results == 9) {
					resultImg = "Image/9_result.png";
				}
	%>
	<jsp:include page="ChildLogMenu.jsp" />
	<div class="container">
		<p align="center" class="main_message">
			<br>
		<p align="center">
			<img src="<%=resultImg%>" width="85%" height="60%" id="main" />
		</p>
	</div>
	<%
		}
		} catch (SQLException ex) {
			out.println(ex.getMessage());
			ex.printStackTrace();
		} finally {
			// 6. 사용한 Statement 종료
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (stmt != null)
				try {
					stmt.close();
				} catch (SQLException ex) {
				}

			// 7. 커넥션 종료
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
	%>

</body>
</html>