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
<Style>
.container {
	padding-right: 30px;
	padding-left: 30px;
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

.studyList td {
	border: 1px solid #bcbcbc;
}

.studyList {
	width: 60%;
	margin: auto;
	text-align: center;
}

.studybtn {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #4CAF50;
	width: 70px;  
	border: 0; 
	padding: 5px;
	color: #FFFFFF;
	font-size: 15px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
	border-radius: 12px;
	text-align: center;
}
</Style>
</head>
<body>
	<jsp:include page="ChildLogMenu.jsp" />
	<div class="container">
	<br>
		<p class="main_message" align="center"><%=session.getAttribute("childId")%>님의
			학습판 리스트 입니다.
		</p>
	</div>
	<br>
	<p>
	<table class="studyList">
		<tr>
			<td>
				<!-- <input type="checkbox" id="Check_All" value="true"
                  onclick="Checkall(this.checked)"> -->
			</td>
			<td>제목</td>
			<td>학습판</td>
		</tr>
		<%
			Class.forName("com.mysql.jdbc.Driver");

			Connection conn = null; // DBMS와 Java연결객체
			Statement stmt = null; // SQL구문을 실행
			ResultSet rs = null; // SQL구문의 실행결과를 저장

			try {
				String url = "jdbc:mysql://localhost:3306/webapp1?serverTimezone=UTC";
				String dbUser = "root";
				String dbPass = "db2019";

				String id = (String) session.getAttribute("childId");

				String query = "select name, id from board where parentId = (select parentId from child where id = '"
						+ id + "')";

				// 2. 데이터베이스 커넥션 생성 
				conn = DriverManager.getConnection(url, dbUser, dbPass);

				// 3. Statement 생성
				stmt = conn.createStatement();

				// 4. 쿼리 실행
				rs = stmt.executeQuery(query);

				// 5. 쿼리 실행 결과 출력
				while (rs.next()) {
		%>
		<tr>
			<td><input type="checkbox" name="test"></td>
			<td><%=rs.getString("name")%></td>
			<form method="POST" name="form" action="study.jsp">
				<input type="hidden" value="<%=rs.getInt("id")%>" name="boardId">
				<td><input type="submit" class="studybtn" value="학습하기"></td>
			</form>
		</tr>
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


	</table>
</body>
</html>