<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.Arrays"%>
<%@ page import="java.util.concurrent.ThreadLocalRandom"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	var a = false;
	var b = false;
	var c = false;
	var d = false;
	var e = false;
	var f = false;
	var g = false;
	var h = false;
	var i = false;

	$(document).ready(function() {
		$('button[name=button1]').click(function() {
			$('button[name=button1]').find('input').attr('name', "");
			$(this).find('input').attr('name', "firstImage");
			a = true;

			$('button[name=button1]').css("background-color", "white");
			$(this).css("background-color", "#43A047");
		});

		$('button[name=button2]').click(function() {
			$('button[name=button2]').find('input').attr('name', "");
			$(this).find('input').attr('name', "secondImage");
			b = true;

			$('button[name=button2]').css("background-color", "white");
			$(this).css("background-color", "#43A047");
		});

		$('button[name=button3]').click(function() {
			$('button[name=button3]').find('input').attr('name', "");
			$(this).find('input').attr('name', "thirdImage");
			c = true;

			$('button[name=button3]').css("background-color", "white");
			$(this).css("background-color", "#43A047");
		});

		$('button[name=button4]').click(function() {
			$('button[name=button4]').find('input').attr('name', "");
			$(this).find('input').attr('name', "fourthImage");
			d = true;

			$('button[name=button4]').css("background-color", "white");
			$(this).css("background-color", "#43A047");
		});

		$('button[name=button5]').click(function() {
			$('button[name=button5]').find('input').attr('name', "");
			$(this).find('input').attr('name', "fifthImage");
			e = true;

			$('button[name=button5]').css("background-color", "white");
			$(this).css("background-color", "#43A047");
		});

		$('button[name=button6]').click(function() {
			$('button[name=button6]').find('input').attr('name', "");
			$(this).find('input').attr('name', "sixthImage");
			f = true;

			$('button[name=button6]').css("background-color", "white");
			$(this).css("background-color", "#43A047");
		});

		$('button[name=button7]').click(function() {
			$('button[name=button7]').find('input').attr('name', "");
			$(this).find('input').attr('name', "seventhImage");
			g = true;

			$('button[name=button7]').css("background-color", "white");
			$(this).css("background-color", "#43A047");
		});

		$('button[name=button8]').click(function() {
			$('button[name=button8]').find('input').attr('name', "");
			$(this).find('input').attr('name', "eighthImage");
			h = true;

			$('button[name=button8]').css("background-color", "white");
			$(this).css("background-color", "#43A047");
		});

		$('button[name=button9]').click(function() {
			$('button[name=button9]').find('input').attr('name', "");
			$(this).find('input').attr('name', "ninethImage");
			i = true;

			$('button[name=button9]').css("background-color", "white");
			$(this).css("background-color", "#43A047");
		});
	});

	function checkValue() {
		if (a && b && c && d && e && f && g && h && i) {
			return true;
		} else {
			alert("문제를 덜 풀었습니다.");
			return false;
		}
	}
</script>
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

.chooseKorean td {
	border: 1px solid #bcbcbc;
}

.chooseKorean {
	width: 60%;
	margin: auto;
	text-align: center;
}

.chooseKorean .korean {
	height: 250px;
}

.chooseKorean .image {
	height: 200px;
}

.container button:hover, .container button:active, .container button:focus
	{
	background: #43A047;
}

.container .next {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #4CAF50;
	float: right;
	margin-right: 12%;
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

.container .test {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #FFF;
	float: center;
	width: 100%;
	height: 100%;
	border: 3px solid #4CAF50;
	padding: 15px;
	color: black;
	font-size: 35px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
	border-radius: 12px;
	border: 3px solid #4CAF50
}

.container button:hover, .container button:active, .container button:focus
	{
	background: #43A047;
}
</style>
</head>
<body>
	<jsp:include page="ChildLogMenu.jsp" />
	<br>
	<form method="post" action="testResult3.jsp">
		<div class="container">
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

					// 5. 쿼리 실행 결과 출력
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
						String[] originalsrc = { src1, src2, src3, src4, src5, src6, src7, src8, src9 };
						String[] text = { text1, text2, text3, text4, text5, text6, text7, text8, text9 };
						String[] originalText = { text1, text2, text3, text4, text5, text6, text7, text8, text9 };

						for (int i = 0; i < src.length; i++) {
							int j = (int) (Math.random() * src.length);
							String tmp = null;

							tmp = src[i];
							src[i] = src[j];
							src[j] = tmp;
						}

						for (int i = 0; i < text.length; i++) {
							int j = (int) (Math.random() * text.length);
							String tmp = null;

							tmp = text[i];
							text[i] = text[j];
							text[j] = tmp;
						}
			%>
			<p align="center" class="main_message">
				아래의 한글에 맞는 그림을 고르세요. <br> <br>
			<table class="chooseKorean">
				<tr>
					<td colspan="3" align="center" class="korean"><h1><%=text[0]%></h1></td>
					<input type="hidden" value="<%=text[0]%>" name="first">
				</tr>
				<%
					String button0 = null;
							String button0A = null;
							String button0B = null;
							for (int i = 0; i < text.length; i++) {
								if (text[0] == originalText[i]) {
									button0 = originalsrc[i];
									for (int j = 0; j < src.length; j++) {
										if (originalsrc[i] == src[j] && j <= 4) {
											button0A = src[j + 2];
											button0B = src[j + 4];
										} else if (originalsrc[i] == src[j] && j <= 6) {
											button0A = src[j + 2];
											button0B = src[j - 2];
										} else if (originalsrc[i] == src[j] && j <= 8) {
											button0A = src[j - 2];
											button0B = src[j - 4];
										}
									}
								}
							}

							String[] btn0 = { button0, button0A, button0B };

							for (int i = 0; i < btn0.length; i++) {
								int j = (int) (Math.random() * btn0.length);
								String tmp = null;

								tmp = btn0[i];
								btn0[i] = btn0[j];
								btn0[j] = tmp;
							}
				%>
				<tr>
					<td class="image"><button type="button" class="test"
							name="button1">
							<img width="150px" height="150px" src="<%=btn0[0]%>"> <input
								type="hidden" value="<%=btn0[0]%>" name="">
						</button></td>
					<td class="image"><button type="button" class="test"
							name="button1">
							<img width="150px" height="150px" src="<%=btn0[1]%>" /> <input
								type="hidden" value="<%=btn0[1]%>" name="">
						</button></td>
					<td class="image"><button type="button" class="test"
							name="button1">
							<img width="150px" height="150px" src="<%=btn0[2]%>" /> <input
								type="hidden" value="<%=btn0[2]%>" name="">
						</button></td>
				</tr>
			</table>
			<br>

			<table class="chooseKorean">
				<tr>
					<td colspan="3" align="center" class="korean"><h1><%=text[1]%></h1></td>
					<input type="hidden" value="<%=text[1]%>" name="second">
				</tr>
				<%
					String button1 = null;
							String button1A = null;
							String button1B = null;
							for (int i = 0; i < text.length; i++) {
								if (text[1] == originalText[i]) {
									button1 = originalsrc[i];
									for (int j = 0; j < src.length; j++) {
										if (originalsrc[i] == src[j] && j <= 4) {
											button1A = src[j + 2];
											button1B = src[j + 4];
										} else if (originalsrc[i] == src[j] && j <= 6) {
											button1A = src[j + 2];
											button1B = src[j - 2];
										} else if (originalsrc[i] == src[j] && j <= 8) {
											button1A = src[j - 2];
											button1B = src[j - 4];
										}
									}
								}
							}

							String[] btn1 = { button1, button1A, button1B };

							for (int i = 0; i < btn1.length; i++) {
								int j = (int) (Math.random() * btn1.length);
								String tmp = null;

								tmp = btn1[i];
								btn1[i] = btn1[j];
								btn1[j] = tmp;
							}
				%>
				<tr>
					<td class="image"><button type="button" class="test"
							name="button2">
							<img width="150px" height="150px" src="<%=btn1[0]%>"> <input
								type="hidden" value="<%=btn1[0]%>" name="">
						</button></td>
					<td class="image"><button type="button" class="test"
							name="button2">
							<img width="150px" height="150px" src="<%=btn1[1]%>" /> <input
								type="hidden" value="<%=btn1[1]%>" name="">
						</button></td>
					<td class="image"><button type="button" class="test"
							name="button2">
							<img width="150px" height="150px" src="<%=btn1[2]%>" /> <input
								type="hidden" value="<%=btn1[2]%>" name="">
						</button></td>
				</tr>
			</table>
			<br>

			<table class="chooseKorean">
				<tr>
					<td colspan="3" align="center" class="korean"><h1><%=text[2]%></h1></td>
					<input type="hidden" value="<%=text[2]%>" name="third">
				</tr>
				<%
					String button2 = null;
							String button2A = null;
							String button2B = null;
							for (int i = 0; i < text.length; i++) {
								if (text[2] == originalText[i]) {
									button2 = originalsrc[i];
									for (int j = 0; j < src.length; j++) {
										if (originalsrc[i] == src[j] && j <= 4) {
											button2A = src[j + 2];
											button2B = src[j + 4];
										} else if (originalsrc[i] == src[j] && j <= 6) {
											button2A = src[j + 2];
											button2B = src[j - 2];
										} else if (originalsrc[i] == src[j] && j <= 8) {
											button2A = src[j - 2];
											button2B = src[j - 4];
										}
									}
								}
							}

							String[] btn2 = { button2, button2A, button2B };

							for (int i = 0; i < btn2.length; i++) {
								int j = (int) (Math.random() * btn2.length);
								String tmp = null;

								tmp = btn2[i];
								btn2[i] = btn2[j];
								btn2[j] = tmp;
							}
				%>
				<tr>
					<td class="image"><button type="button" class="test"
							name="button3">
							<img width="150px" height="150px" src="<%=btn2[0]%>"> <input
								type="hidden" value="<%=btn2[0]%>" name="">
						</button></td>
					<td class="image"><button type="button" class="test"
							name="button3">
							<img width="150px" height="150px" src="<%=btn2[1]%>" /> <input
								type="hidden" value="<%=btn2[1]%>" name="">
						</button></td>
					<td class="image"><button type="button" class="test"
							name="button3">
							<img width="150px" height="150px" src="<%=btn2[2]%>" /> <input
								type="hidden" value="<%=btn2[2]%>" name="">
						</button></td>
				</tr>
			</table>
			<br>

			<table class="chooseKorean">
				<tr>
					<td colspan="3" align="center" class="korean"><h1><%=text[3]%></h1></td>
					<input type="hidden" value="<%=text[3]%>" name="fourth">
				</tr>
				<%
					String button3 = null;
							String button3A = null;
							String button3B = null;
							for (int i = 0; i < text.length; i++) {
								if (text[3] == originalText[i]) {
									button3 = originalsrc[i];
									for (int j = 0; j < src.length; j++) {
										if (originalsrc[i] == src[j] && j <= 4) {
											button3A = src[j + 2];
											button3B = src[j + 3];
										} else if (originalsrc[i] == src[j] && j <= 6) {
											button3A = src[j - 5];
											button3B = src[j - 1];
										} else if (originalsrc[i] == src[j] && j <= 8) {
											button3A = src[j - 6];
											button3B = src[j - 1];
										}
									}
								}
							}

							String[] btn3 = { button3, button3A, button3B };

							for (int i = 0; i < btn3.length; i++) {
								int j = (int) (Math.random() * btn3.length);
								String tmp = null;

								tmp = btn3[i];
								btn3[i] = btn3[j];
								btn3[j] = tmp;
							}
				%>
				<tr>
					<td class="image"><button type="button" class="test"
							name="button4">
							<img width="150px" height="150px" src="<%=btn3[0]%>"> <input
								type="hidden" value="<%=btn3[0]%>" name="">
						</button></td>
					<td class="image"><button type="button" class="test"
							name="button4">
							<img width="150px" height="150px" src="<%=btn3[1]%>" /> <input
								type="hidden" value="<%=btn3[1]%>" name="">
						</button></td>
					<td class="image"><button type="button" class="test"
							name="button4">
							<img width="150px" height="150px" src="<%=btn3[2]%>" /> <input
								type="hidden" value="<%=btn3[2]%>" name="">
						</button></td>
				</tr>
			</table>
			<br>

			<table class="chooseKorean">
				<tr>
					<td colspan="3" align="center" class="korean"><h1><%=text[4]%></h1></td>
					<input type="hidden" value="<%=text[4]%>" name="fifth">
				</tr>
				<%
					String button4 = null;
							String button4A = null;
							String button4B = null;
							for (int i = 0; i < text.length; i++) {
								if (text[4] == originalText[i]) {
									button4 = originalsrc[i];
									for (int j = 0; j < src.length; j++) {
										if (originalsrc[i] == src[j] && j <= 4) {
											button4A = src[j + 3];
											button4B = src[j + 2];
										} else if (originalsrc[i] == src[j] && j <= 6) {
											button4A = src[j - 4];
											button4B = src[j - 5];
										} else if (originalsrc[i] == src[j] && j <= 8) {
											button4A = src[j - 6];
											button4B = src[j - 3];
										}
									}
								}
							}

							String[] btn4 = { button4, button4A, button4B };

							for (int i = 0; i < btn4.length; i++) {
								int j = (int) (Math.random() * btn4.length);
								String tmp = null;

								tmp = btn4[i];
								btn4[i] = btn4[j];
								btn4[j] = tmp;
							}
				%>
				<tr>
					<td class="image"><button type="button" class="test"
							name="button5">
							<img width="150px" height="150px" src="<%=btn4[0]%>"> <input
								type="hidden" value="<%=btn4[0]%>" name="">
						</button></td>
					<td class="image"><button type="button" class="test"
							name="button5">
							<img width="150px" height="150px" src="<%=btn4[1]%>" /> <input
								type="hidden" value="<%=btn4[1]%>" name="">
						</button></td>
					<td class="image"><button type="button" class="test"
							name="button5">
							<img width="150px" height="150px" src="<%=btn4[2]%>" /> <input
								type="hidden" value="<%=btn4[2]%>" name="">
						</button></td>
				</tr>
			</table>
			<br>

			<table class="chooseKorean">
				<tr>
					<td colspan="3" align="center" class="korean"><h1><%=text[5]%></h1></td>
					<input type="hidden" value="<%=text[5]%>" name="sixth">
				</tr>
				<%
					String button5 = null;
							String button5A = null;
							String button5B = null;
							for (int i = 0; i < text.length; i++) {
								if (text[5] == originalText[i]) {
									button5 = originalsrc[i];
									for (int j = 0; j < src.length; j++) {
										if (originalsrc[i] == src[j] && j <= 4) {
											button5A = src[j + 2];
											button5B = src[j + 3];
										} else if (originalsrc[i] == src[j] && j <= 6) {
											button5A = src[j + 2];
											button5B = src[j - 4];
										} else if (originalsrc[i] == src[j] && j <= 8) {
											button5A = src[j - 4];
											button5B = src[j - 5];
										}
									}
								}
							}

							String[] btn5 = { button5, button5A, button5B };

							for (int i = 0; i < btn5.length; i++) {
								int j = (int) (Math.random() * btn5.length);
								String tmp = null;

								tmp = btn5[i];
								btn5[i] = btn5[j];
								btn5[j] = tmp;
							}
				%>
				<tr>
					<td class="image"><button type="button" class="test"
							name="button6">
							<img width="150px" height="150px" src="<%=btn5[0]%>"> <input
								type="hidden" value="<%=btn5[0]%>" name="">
						</button></td>
					<td class="image"><button type="button" class="test"
							name="button6">
							<img width="150px" height="150px" src="<%=btn5[1]%>" /> <input
								type="hidden" value="<%=btn5[1]%>" name="">
						</button></td>
					<td class="image"><button type="button" class="test"
							name="button6">
							<img width="150px" height="150px" src="<%=btn5[2]%>" /> <input
								type="hidden" value="<%=btn5[2]%>" name="">
						</button></td>
				</tr>
			</table>
			<br>

			<table class="chooseKorean">
				<tr>
					<td colspan="3" align="center" class="korean"><h1><%=text[6]%></h1></td>
					<input type="hidden" value="<%=text[6]%>" name="seventh">
				</tr>
				<%
					String button6 = null;
							String button6A = null;
							String button6B = null;
							for (int i = 0; i < text.length; i++) {
								if (text[6] == originalText[i]) {
									button6 = originalsrc[i];
									for (int j = 0; j < src.length; j++) {
										if (originalsrc[i] == src[j] && j <= 4) {
											button6A = src[j + 1];
											button6B = src[j + 4];
										} else if (originalsrc[i] == src[j] && j <= 6) {
											button6A = src[j + 1];
											button6B = src[j - 1];
										} else if (originalsrc[i] == src[j] && j <= 8) {
											button6A = src[j - 5];
											button6B = src[j - 7];
										}
									}
								}
							}

							String[] btn6 = { button6, button6A, button6B };

							for (int i = 0; i < btn6.length; i++) {
								int j = (int) (Math.random() * btn6.length);
								String tmp = null;

								tmp = btn6[i];
								btn6[i] = btn6[j];
								btn6[j] = tmp;
							}
				%>
				<tr>
					<td class="image"><button type="button" class="test"
							name="button7">
							<img width="150px" height="150px" src="<%=btn6[0]%>"> <input
								type="hidden" value="<%=btn6[0]%>" name="">
						</button></td>
					<td class="image"><button type="button" class="test"
							name="button7">
							<img width="150px" height="150px" src="<%=btn6[1]%>" /> <input
								type="hidden" value="<%=btn6[1]%>" name="">
						</button></td>
					<td class="image"><button type="button" class="test"
							name="button7">
							<img width="150px" height="150px" src="<%=btn6[2]%>" /> <input
								type="hidden" value="<%=btn6[2]%>" name="">
						</button></td>
				</tr>
			</table>
			<br>

			<table class="chooseKorean">
				<tr>
					<td colspan="3" align="center" class="korean"><h1><%=text[7]%></h1></td>
					<input type="hidden" value="<%=text[7]%>" name="eighth">
				</tr>
				<%
					String button7 = null;
							String button7A = null;
							String button7B = null;
							for (int i = 0; i < text.length; i++) {
								if (text[7] == originalText[i]) {
									button7 = originalsrc[i];
									for (int j = 0; j < src.length; j++) {
										if (originalsrc[i] == src[j] && j <= 4) {
											button7A = src[j + 3];
											button7B = src[j + 4];
										} else if (originalsrc[i] == src[j] && j <= 6) {
											button7A = src[j + 2];
											button7B = src[j - 5];
										} else if (originalsrc[i] == src[j] && j <= 8) {
											button7A = src[j - 3];
											button7B = src[j - 5];
										}
									}
								}
							}

							String[] btn7 = { button7, button7A, button7B };

							for (int i = 0; i < btn7.length; i++) {
								int j = (int) (Math.random() * btn7.length);
								String tmp = null;

								tmp = btn7[i];
								btn7[i] = btn7[j];
								btn7[j] = tmp;
							}
				%>
				<tr>
					<td class="image"><button type="button" class="test"
							name="button8">
							<img width="150px" height="150px" src="<%=btn7[0]%>"> <input
								type="hidden" value="<%=btn7[0]%>" name="">
						</button></td>
					<td class="image"><button type="button" class="test"
							name="button8">
							<img width="150px" height="150px" src="<%=btn7[1]%>" /> <input
								type="hidden" value="<%=btn7[1]%>" name="">
						</button></td>
					<td class="image"><button type="button" class="test"
							name="button8">
							<img width="150px" height="150px" src="<%=btn7[2]%>" /> <input
								type="hidden" value="<%=btn7[2]%>" name="">
						</button></td>
				</tr>
			</table>
			<br>

			<table class="chooseKorean">
				<tr>
					<td colspan="3" align="center" class="korean"><h1><%=text[8]%></h1></td>
					<input type="hidden" value="<%=text[8]%>" name="nineth">
				</tr>
				<%
					String button8 = null;
							String button8A = null;
							String button8B = null;
							for (int i = 0; i < text.length; i++) {
								if (text[8] == originalText[i]) {
									button8 = originalsrc[i];
									for (int j = 0; j < src.length; j++) {
										if (originalsrc[i] == src[j] && j <= 4) {
											button8A = src[j + 3];
											button8B = src[j + 1];
										} else if (originalsrc[i] == src[j] && j <= 6) {
											button8A = src[j + 2];
											button8B = src[j - 4];
										} else if (originalsrc[i] == src[j] && j <= 8) {
											button8A = src[j - 5];
											button8B = src[j - 6];
										}
									}
								}
							}

							String[] btn8 = { button8, button8A, button8B };

							for (int i = 0; i < btn8.length; i++) {
								int j = (int) (Math.random() * btn8.length);
								String tmp = null;

								tmp = btn8[i];
								btn8[i] = btn8[j];
								btn8[j] = tmp;
							}
				%>
				<tr>
					<td class="image"><button type="button" class="test"
							name="button9">
							<img width="150px" height="150px" src="<%=btn8[0]%>"> <input
								type="hidden" value="<%=btn8[0]%>" name="">
						</button></td>
					<td class="image"><button type="button" class="test"
							name="button9">
							<img width="150px" height="150px" src="<%=btn8[1]%>" /> <input
								type="hidden" value="<%=btn8[1]%>" name="">
						</button></td>
					<td class="image"><button type="button" class="test"
							name="button9">
							<img width="150px" height="150px" src="<%=btn8[2]%>" /> <input
								type="hidden" value="<%=btn8[2]%>" name="">
						</button></td>
				</tr>
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
			<%
				int id = Integer.parseInt(request.getParameter("boardId"));
			%>
			<br> <input type="hidden" value="<%=id%>" name="boardId">
			<input type="submit" class="next" value="제출"
				onclick="return checkValue();">
		</div>
	</form>
</body>
</html>