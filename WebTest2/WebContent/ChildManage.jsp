<%@page import="java.io.PrintWriter"%>
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

	function deleteChild() {
		var count = $("input:checked[type='checkbox']").length;
		if (count == 0) {
			alert("1개를 선택해주세요");
			return false;
		} else {
			var v = document.form;
			v.action = "DeleteChild.jsp";
			v.submit();
		}
	}

	function updateChild() {
		var count = $("input:checked[type='checkbox']").length;
		if (count == 0) {
			alert("1개를 선택해주세요");
			return false;
		} else {
			var v = document.form;
			v.action = "ChildPage.jsp";
			v.submit();
		}
	}

	function resultChild() {
		var count = $("input:checked[type='checkbox']").length;
		if (count == 0) {
			alert("1개를 선택해주세요");
			return false;
		} else {
			var v = document.form;
			v.action = "GoResult.jsp";
			v.submit()
		}
	}
</script>
<style>
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

.container .button {
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

.container button:hover, .container button:active, .container button:focus
	{
	background: #43A047;
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

.main_message {
	font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans",
		"Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica,
		sans-serif;
	font-size: 18px;
}

.childList td {
	border: 1px solid #bcbcbc;
}

.childList {
	width: 60%;
	margin: auto;
	text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="ParentLogMenu.jsp" />
	<br>
	<div class="container">
		<p align="center" class="main_message">
			아이 관리 페이지 입니다. <br> <br>
		</p>
		<button type="button" onclick="location.href='ChildJoin.jsp' "
			class="button">추가</button>
		<form method="POST" name="form">
			<input type="submit" class="button" value="수정" id="update"
				onclick="updateChild();"> <input type="submit"
				class="button" value="삭제" id="delete" onclick="deleteChild();" />
			<table class="childList">
				<tr>
					<td>
						<!-- <input type="checkbox" id="Check_All" value="true"
                  onclick="Checkall(this.checked)"> -->
					</td>
					<td>이름</td>
					<td>학습관리</td>
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

						String query = "select name, id from child where parentId='" + id + "'";

						// 2. 데이터베이스 커넥션 생성
						conn = DriverManager.getConnection(url, dbUser, dbPass);

						// 3. Statement 생성
						stmt = conn.createStatement();

						// 4. 쿼리 실행
						rs = stmt.executeQuery(query);

						// 5. 쿼리 실행 결과 출력
						while (rs.next()) {
				%>
				<br>
				<tr>
					<td><input type="checkbox" name="test"
						value="<%=rs.getString("id")%>"></td>
					<td><%=rs.getString("name")%></td>
					<td><input type="submit" onclick="resultChild();"
						class="resultbtn" id="goResult" value="학습결과"></td>
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
		</form>
	</div>
</body>
</html>