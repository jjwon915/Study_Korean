<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<style>
.container {
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
	align:center;
}
</style>
</head>
<body>
	<jsp:include page="ParentLogMenu.jsp" />
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>
	<%
		String boardId = request.getParameter("boardId");
		String childId = request.getParameter("childId");
	%>

	<%
		Class.forName("com.mysql.jdbc.Driver");

		Connection conn = null; // DBMS와 Java연결객체
		Statement stmt = null; // SQL구문을 실행
		ResultSet rs = null; // SQL구문의 실행결과를 저장

		try {
			String url = "jdbc:mysql://localhost:3306/webapp1?serverTimezone=UTC";
			String dbUser = "root";
			String dbPass = "db2019";

			String query = "select firstText, secondText, thirdText, fourthText, fifthText, sixthText, seventhText, eighthText, ninethText, count(boardId), sum(one), sum(two), sum(three), sum(four), sum(five), sum(six), sum(seven), sum(eight), sum(nine) from board, result where result.boardId = board.id and result.boardId="
					+ boardId + " and childId='" + childId + "'";

			// 2. 데이터베이스 커넥션 생성
			conn = DriverManager.getConnection(url, dbUser, dbPass);

			// 3. Statement 생성
			stmt = conn.createStatement();

			// 4. 쿼리 실행
			rs = stmt.executeQuery(query);

			// 5. 쿼리 실행 결과 출력
			while (rs.next()) {

				if (rs.getInt("count(boardId)") == 0) {
					out.print("<script>alert('한 번도 시험보지 않은 학습판입니다.');location.href='ChildManage.jsp';</script>");
				}
				float a = rs.getInt("sum(one)");
				float b = rs.getInt("sum(two)");
				float c = rs.getInt("sum(three)");
				float d = rs.getInt("sum(four)");
				float e = rs.getInt("sum(five)");
				float f = rs.getInt("sum(six)");
				float g = rs.getInt("sum(seven)");
				float h = rs.getInt("sum(eight)");
				float i = rs.getInt("sum(nine)");

				float count = rs.getInt("count(boardId)");

				float one = (a / count) * 100;
				float two = (b / count) * 100;
				float three = (c / count) * 100;
				float four = (d / count) * 100;
				float five = (e / count) * 100;
				float six = (f / count) * 100;
				float seven = (g / count) * 100;
				float eight = (h / count) * 100;
				float nine = (i / count) * 100;

				String[] recommend = {null, null, null, null, null, null, null, null, null};
				String r = "";
				if (one > 80.0) {
					recommend[0] = rs.getString("firstText");
					r = r + "  " + "'" + recommend[0] + "'";
				}
				if (two > 80.0) {
					recommend[1] = rs.getString("secondText");
					r = r + "  " + "'" + recommend[1] + "'";
				}
				if (three > 80.0) {
					recommend[2] = rs.getString("thirdText");
					r = r + "  " + "'" + recommend[2] + "'";
				}
				if (four > 80.0) {
					recommend[3] = rs.getString("fourthText");
					r = r + "  " + "'" + recommend[3] + "'";
				}
				if (five > 80.0) {
					recommend[4] = rs.getString("fifthText");
					r = r + "  " + "'" + recommend[4] + "'";
				}
				if (six > 80.0) {
					recommend[5] = rs.getString("sixthText");
					r = r + "  " + "'" + recommend[5] + "'";
				}
				if (seven > 80.0) {
					recommend[6] = rs.getString("seventhText");
					r = r + "  " + "'" + recommend[6] + "'";
				}
				if (eight > 80.0) {
					recommend[7] = rs.getString("eighthText");
					r = r + "  " + "'" + recommend[7] + "'";
				}
				if (nine > 80.0) {
					recommend[8] = rs.getString("ninethText");
					r = r + "  " + "'" + recommend[8] + "'";
				}
				String command = null;
				if(r == ""){
					command= "더 학습할 것을 추천합니다.";
				} if(r!= ""){
					command = r +" 을 다른 심볼로 교체하는 것을 추천합니다.";
				}
	%>
	<h4 align="right" class="container">
		전체 게임 횟수 :<%=(int) count%>
		<h5 align="right" class="container">
			<%=command%>
		</h5>
	</h4>

	<script type="text/javascript"> 
   google.charts.load('current', {packages: ['corechart', 'bar']});
   google.charts.setOnLoadCallback(drawBasic);

   function drawBasic() {
    var data = new google.visualization.DataTable();
    data.addColumn('string', '목록');
    data.addColumn('number', '결과(퍼센트)');

    data.addRows([
     ['<%=rs.getString("firstText")%>', <%=one%>],
     ['<%=rs.getString("secondText")%>', <%=two%>],
     ['<%=rs.getString("thirdText")%>', <%=three%>],
     ['<%=rs.getString("fourthText")%>', <%=four%>],
     ['<%=rs.getString("fifthText")%>', <%=five%>],
     ['<%=rs.getString("sixthText")%>', <%=six%>],
     ['<%=rs.getString("seventhText")%>', <%=seven%>],
     ['<%=rs.getString("eighthText")%>', <%=eight%>],
     ['<%=rs.getString("ninethText")%>', <%=nine%>], ]);

			var options = {
				title : '학습 결과',
				hAxis : {
					title : '목록',
					viewWindow : {}
				},
				vAxis : {
					title : '결과(퍼센트)',
					maxValue : 100,
					minValue : 0
				}
			};

			options.color = [ '#008000' ];

			var chart = new google.visualization.ColumnChart(document
					.getElementById('chart_div'));

			chart.draw(data, options);
		}
	</script>
	<div id="chart_div" style="width: 80%; height: 550px;"
		class="container"></div> 

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