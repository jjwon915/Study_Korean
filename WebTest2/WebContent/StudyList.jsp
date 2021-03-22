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
		$("input[type='checkbox']").on("click", function() {
			var count = $("input:checked[type='checkbox']").length;

			if (count > 1) {
				$(this).prop("checked", false);
				alert("1개까지만 선택할 수 있습니다.");
			}
		});

	});

	function deleteBoard() {
		var count = $("input:checked[type='checkbox']").length;
		if (count == 0) {
			alert("1개를 선택해주세요");
			return false;
		} else {
			var v = document.checkboxForm;
			v.action = "DeleteBoard.jsp";
			v.submit();
		}
	}
</script>
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

.resultbtn {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #4CAF50;
	float: center;
	margin-right: 1%;
	width: 70px;
	border: 0;
	padding: 2px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
	border-radius: 12px;
}

.resultbtn:hover, .resultbtn:active, .resultbtn:focus {
	background: #43A047;
}

.button {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #4CAF50;
	float: right;
	margin-right: 1%;
	width: 42px;
	border: 0;
	padding: 5px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
	border-radius: 12px;
}
</Style>
</head>
<body>
	<jsp:include page="ParentLogMenu.jsp" />
	<br>
	<div class="container">
		<p class="main_message" align="center"><%=session.getAttribute("parentId")%>님의
			학습판 리스트 입니다.
		</p>
	</div>
	<br> 
	<p>
	<form method="POST" name="checkboxForm">
		<input type="submit" class="button" value="삭제" id="delete"
			onclick="deleteBoard();" />
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

					String id = (String) session.getAttribute("parentId");

					String query = "select name, id from board where parentId='" + id + "'";

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
				<td><input type="checkbox" name="test"
					value="<%=rs.getString("id")%>"></td>
				<td><%=rs.getString("name")%></td>
				</form>
				<form method="POST" name="form" action="board.jsp">
					<input type="hidden" value="<%=rs.getInt("id")%>" name="boardId">
					<td><input type="submit" class="resultbtn" value="학습판"></td>
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