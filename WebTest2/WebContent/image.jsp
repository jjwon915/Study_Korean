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
<style type="text/css">
#box {
	display: inline;
	float: left;
	text-align: center;
}

#table1 {
	border-collapse: collapse;
	border: 1px solid #cccccc;
	width: 100%;
	margin: auto;
	text-align: center;
}

td {
	border: 1px solid #cccccc;
	text-align: center;
	vertical-align: middle;
	margin: auto;
}

#divdropbox {
	width: 99%;
	overflow: auto;
	text-overflow: ellipsis;
	text-align: center;
	display: block;
}

.search {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #4CAF50;
	width: 18%;
	border: 0;
	padding: 7px;
	color: #FFFFFF;
	font-size: 15px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
	border-radius: 12px;
}

.boardmenu_NEW {
	margin: 0.5%;
}

.save {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #4CAF50;
	width: 10%;
	border: 0;
	padding: 15px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
	border-radius: 12px;
}
}
</style>

<script type="text/javascript">
	
</script>
</head>
<body onload="pValue()">
	<div id="wrap">
		<br> <b><font size="4" color="gray"> 심볼 검색 결과 </font></b>
		<hr size="1" width="460">
		<div id="divDropBox"
			style="width: 30%; height: 600px; border: 1px dotted green; margin: 2%; padding: 2%; float: right; overflow: scroll;">
			<%
				Class.forName("com.mysql.jdbc.Driver");

				Connection conn = null; // DBMS와 Java연결객체
				Statement stmt = null; // SQL구문을 실행
				ResultSet rs = null; // SQL구문의 실행결과를 저장

				try {
					String url = "jdbc:mysql://220.69.171.28:3306/koreanaac_symbol_db?serverTimezone=Asia/Seoul";
					String dbUser = "aac_db";
					String dbPass = "hong1234";
					String searchtext = request.getParameter("searchtext");
					String query = "select * from symbol where symbol_name like '%" + searchtext + "%'";
					// 2. 데이터베이스 커넥션 생성
					conn = DriverManager.getConnection(url, dbUser, dbPass);

					// 3. Statement 생성
					stmt = conn.createStatement();

					// 4. 쿼리 실행
					rs = stmt.executeQuery(query);

					// 5. 쿼리 실행 결과 출력
					while (rs.next()) {
			%>
			<figure>
				<%
					String src = "http://220.69.171.28:8080/Symbol/" + rs.getString("symbol_img_path");
				%>
				<img src="<%=src%>" style="width: 120px; heigth: 120px;">
				<figcation>
				<p>
					<%=rs.getString("symbol_name")%>
				</p>
				</figcation>
			</figure>

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
		</div>
	</div>
</body>
</html>