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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {

	});
</script>
<style>
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
	border: 2px dotted green;
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
	width: 20%;
	border: 0;
	padding: 15px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
	border-radius: 12px;
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
</head>
<body>
	<jsp:include page="ParentLogMenu.jsp" />
	<%
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
	%>

	<table id="table1" style="width: 70%; height: 825px; margin-top: 1%;">
		<tbody>
			<tr>
				<td id="dropbox00" class="drop" ondrop="drop(this,event)"
					ondragenter="return false" ondragover="allowDrop(event)"
					style="width: 33.3%; height: 247.5px;"><img id="first"
					src="<%=src1%>" style="width: 150px; height: 150px;"> <br>
					<%=text1%></td>
				<td id="dropbox01" class="drop" ondrop="drop(this,event)"
					ondragenter="return false" ondragover="allowDrop(event)"
					style="width: 33.3%; height: 247.5px;"><img src="<%=src2%>"
					style="width: 150px; height: 150px;"> <br> <%=text2%>
				</td>
				<td id="dropbox02" class="drop" ondrop="drop(this,event)"
					ondragenter="return false" ondragover="allowDrop(event)"
					style="width: 33.3%; height: 247.5px;"><img src="<%=src3%>"
					style="width: 150px; height: 150px;"> <br> <%=text3%>
				</td>
			</tr>

			<tr>
				<td id="dropbox10" class="drop" ondrop="drop(this,event)"
					ondragenter="return false" ondragover="allowDrop(event)"
					style="width: 247.5px; height: 247.5px;"><img src="<%=src4%>"
					style="width: 150px; height: 150px;"> <br> <%=text4%></td>
				<td id="dropbox11" class="drop" ondrop="drop(this,event)"
					ondragenter="return false" ondragover="allowDrop(event)"
					style="width: 247.5px; height: 247.5px;"><img src="<%=src5%>"
					style="width: 150px; height: 150px;"> <br> <%=text5%>
				</td>
				<td id="dropbox12" class="drop" ondrop="drop(this,event)"
					ondragenter="return false" ondragover="allowDrop(event)"
					style="width: 247.5px; height: 247.5px;"><img src="<%=src6%>"
					style="width: 150px; height: 150px;"> <br> <%=text6%>
				</td>
			</tr>

			<tr>
				<td id="dropbox20" class="drop" ondrop="drop(this,event)"
					ondragenter="return false" ondragover="allowDrop(event)"
					style="width: 247.5px; height: 247.5px;"><img src="<%=src7%>"
					style="width: 150px; height: 150px;"> <br> <%=text7%>
				</td>
				<td id="dropbox21" class="drop" ondrop="drop(this,event)"
					ondragenter="return false" ondragover="allowDrop(event)"
					style="width: 247.5px; height: 247.5px;"><img src="<%=src8%>"
					style="width: 150px; height: 150px;"> <br> <%=text8%>
				</td>
				<td id="dropbox22" class="drop" ondrop="drop(this,event)"
					ondragenter="return false" ondragover="allowDrop(event)"
					style="width: 247.5px; height: 247.5px;"><img src="<%=src9%>"
					style="width: 150px; height: 150px;"> <br> <%=text9%>
				</td>
			</tr>

		</tbody>
	</table>

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

	<div>
		<input type="hidden" name="row" value="3">
		<!--    <input type="hidden" name="column" value="3"> -->
		<input type="hidden" name="dropbox00" id="image00" value="null">
		<input type="hidden" name="dropbox01" id="image01" value="null">
		<input type="hidden" name="dropbox02" id="image02" value="null">

		<input type="hidden" name="dropbox10" id="image10" value="null">
		<input type="hidden" name="dropbox11" id="image11" value="null">
		<input type="hidden" name="dropbox12" id="image12" value="null">

		<input type="hidden" name="dropbox20" id="image20" value="null">
		<input type="hidden" name="dropbox21" id="image21" value="null">
		<input type="hidden" name="dropbox22" id="image22" value="null">

		<input type="hidden" name="FromAddress" value="Newboard"> <input
			name="a" type="text" value="" style="DISPLAY: NONE">
	</div>
</body>
</html>