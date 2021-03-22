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
<title>한글쑥쑥</title>
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
			$(this).find('input').attr('name', "first");
			a = true;

			$('button[name=button1]').css("background-color", "white");
			$(this).css("background-color", "#43A047");
		});

		$('button[name=button2]').click(function() {
			$('button[name=button2]').find('input').attr('name', "");
			$(this).find('input').attr('name', "second");
			b = true;

			$('button[name=button2]').css("background-color", "white");
			$(this).css("background-color", "#43A047");
		});

		$('button[name=button3]').click(function() {
			$('button[name=button3]').find('input').attr('name', "");
			$(this).find('input').attr('name', "third");
			c = true;

			$('button[name=button3]').css("background-color", "white");
			$(this).css("background-color", "#43A047");
		});

		$('button[name=button4]').click(function() {
			$('button[name=button4]').find('input').attr('name', "");
			$(this).find('input').attr('name', "fourth");
			d = true;

			$('button[name=button4]').css("background-color", "white");
			$(this).css("background-color", "#43A047");
		});

		$('button[name=button5]').click(function() {
			$('button[name=button5]').find('input').attr('name', "");
			$(this).find('input').attr('name', "fifth");
			e = true;

			$('button[name=button5]').css("background-color", "white");
			$(this).css("background-color", "#43A047");
		});

		$('button[name=button6]').click(function() {
			$('button[name=button6]').find('input').attr('name', "");
			$(this).find('input').attr('name', "sixth");
			f = true;

			$('button[name=button6]').css("background-color", "white");
			$(this).css("background-color", "#43A047");
		});

		$('button[name=button7]').click(function() {
			$('button[name=button7]').find('input').attr('name', "");
			$(this).find('input').attr('name', "seventh");
			g = true;

			$('button[name=button7]').css("background-color", "white");
			$(this).css("background-color", "#43A047");
		});

		$('button[name=button8]').click(function() {
			$('button[name=button8]').find('input').attr('name', "");
			$(this).find('input').attr('name', "eighth");
			h = true;

			$('button[name=button8]').css("background-color", "white");
			$(this).css("background-color", "#43A047");
		});

		$('button[name=button9]').click(function() {
			$('button[name=button9]').find('input').attr('name', "");
			$(this).find('input').attr('name', "nineth");
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
	width: 33%;
}

.chooseKorean {
	width: 60%;
	margin: auto;
	text-align: center;
}

.chooseKorean .image {
	height: 250px;
}

.chooseKorean .korean {
	height: 200px;
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

.container button:hover {
	background: #43A047;
}
</style>
</head>
<body>
	<jsp:include page="ChildLogMenu.jsp" />
	<br>
	<form method="post" action="testResult.jsp">
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
				아래의 그림에 맞는 한글단어를 고르세요. <br> <br>
			<table class="chooseKorean">
				<tr>
					<td colspan="3" align="center" class="image"><img
						src="<%=src[0]%>" style="width: 150px; height: 150px;"></td>
					<input type="hidden" value="<%=src[0]%>" name="firstImage">
				</tr>
				<%
					String button0 = null;
							String button0A = null;
							String button0B = null;
							for (int i = 0; i < src.length; i++) {
								if (src[0] == originalsrc[i]) {
									button0 = originalText[i];
									for (int j = 0; j < src.length; j++) {
										if (originalText[i] == text[j] && j <= 4) {
											button0A = text[j + 2];
											button0B = text[j + 4];
										} else if (originalText[i] == text[j] && j <= 6) {
											button0A = text[j + 2];
											button0B = text[j - 2];
										} else if (originalText[i] == text[j] && j <= 8) {
											button0A = text[j - 2];
											button0B = text[j - 4];
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
					<td class="korean">
						<button type="button" class="test" name="button1"
							value="<%=btn0[0]%>"><%=btn0[0]%>
							<input type="hidden" value="<%=btn0[0]%>" name="">
						</button>
					</td>

					<td class="korean">
						<button type="button" class="test" name="button1"
							value="<%=btn0[1]%>"><%=btn0[1]%>
							<input type="hidden" value="<%=btn0[1]%>" name="">
						</button>
					</td>
					<td class="korean">
						<button type="button" class="test" name="button1"
							value="<%=btn0[2]%>"><%=btn0[2]%>
							<input type="hidden" value="<%=btn0[2]%>" name="">
						</button>
					</td>
				</tr>
			</table>
			<br>

			<table class="chooseKorean">
				<tr>
					<td colspan="3" align="center" class="image"><img
						src="<%=src[1]%>" style="width: 150px; height: 150px;"> <input
						type="hidden" value="<%=src[1]%>" name="secondImage"></td>
				</tr>
				<%
					String button1 = null;
							String button1A = null;
							String button1B = null;
							for (int i = 0; i < src.length; i++) {
								if (src[1] == originalsrc[i]) {
									button1 = originalText[i];
									for (int j = 0; j < src.length; j++) {
										if (originalText[i] == text[j] && j <= 4) {
											button1A = text[j + 3];
											button1B = text[j + 4];
										} else if (originalText[i] == text[j] && j <= 6) {
											button1A = text[j + 2];
											button1B = text[j - 3];
										} else if (originalText[i] == text[j] && j <= 8) {
											button1A = text[j - 2];
											button1B = text[j - 6];
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
					<td class="korean">
						<button type="button" class="test" name="button2"
							value="<%=btn1[0]%>"><%=btn1[0]%>
							<input type="hidden" value="<%=btn1[0]%>" name="">
						</button>
					</td>
					<td class="korean">
						<button type="button" class="test" name="button2"
							value="<%=btn1[1]%>"><%=btn1[1]%>
							<input type="hidden" value="<%=btn1[1]%>" name="">
						</button>
					</td>
					<td class="korean">
						<button type="button" class="test" name="button2"
							value="<%=btn1[2]%>"><%=btn1[2]%><input type="hidden"
								value="<%=btn1[2]%>" name="">
						</button>
					</td>
				</tr>
			</table>
			<br>

			<table class="chooseKorean">
				<tr>
					<td colspan="3" align="center" class="image"><img
						src="<%=src[2]%>" style="width: 150px; height: 150px;"> <input
						type="hidden" value="<%=src[2]%>" name="thirdImage"></td>
				</tr>
				<%
					String button2 = null;
							String button2A = null;
							String button2B = null;
							for (int i = 0; i < src.length; i++) {
								if (src[2] == originalsrc[i]) {
									button2 = originalText[i];
									for (int j = 0; j < src.length; j++) {
										if (originalText[i] == text[j] && j <= 4) {
											button2A = text[j + 3];
											button2B = text[j + 4];
										} else if (originalText[i] == text[j] && j <= 6) {
											button2A = text[j + 2];
											button2B = text[j - 3];
										} else if (originalText[i] == text[j] && j <= 8) {
											button2A = text[j - 2];
											button2B = text[j - 6];
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
					<td class="korean">
						<button type="button" class="test" name="button3"
							value="<%=btn2[0]%>"><%=btn2[0]%><input type="hidden"
								value="<%=btn2[0]%>" name="">
						</button>
					</td>
					<td class="korean">
						<button type="button" class="test" name="button3"
							value="<%=btn2[1]%>"><%=btn2[1]%><input type="hidden"
								value="<%=btn2[1]%>" name="">
						</button>
					</td>
					<td class="korean">
						<button type="button" class="test" name="button3"
							value="<%=btn2[2]%>"><%=btn2[2]%><input type="hidden"
								value="<%=btn2[2]%>" name="">
						</button>
					</td>
				</tr>
			</table>
			<br>

			<table class="chooseKorean">
				<tr>
					<td colspan="3" align="center" class="image"><img
						src="<%=src[3]%>" style="width: 150px; height: 150px;"> <input
						type="hidden" value="<%=src[3]%>" name="fourthImage"></td>
				</tr>
				<%
					String button3 = null;
							String button3A = null;
							String button3B = null;
							for (int i = 0; i < src.length; i++) {
								if (src[3] == originalsrc[i]) {
									button3 = originalText[i];
									for (int j = 0; j < src.length; j++) {
										if (originalText[i] == text[j] && j <= 4) {
											button3A = text[j + 3];
											button3B = text[j + 4];
										} else if (originalText[i] == text[j] && j <= 6) {
											button3A = text[j + 2];
											button3B = text[j - 3];
										} else if (originalText[i] == text[j] && j <= 8) {
											button3A = text[j - 2];
											button3B = text[j - 6];
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
					<td class="korean">
						<button type="button" class="test" name="button4"
							value="<%=btn3[0]%>"><%=btn3[0]%><input type="hidden"
								value="<%=btn3[0]%>" name="">
						</button>
					</td>
					<td class="korean">
						<button type="button" class="test" name="button4"
							value="<%=btn3[1]%>"><%=btn3[1]%><input type="hidden"
								value="<%=btn3[1]%>" name="">
						</button>
					</td>
					<td class="korean">
						<button type="button" class="test" name="button4"
							value="<%=btn3[2]%>"><%=btn3[2]%><input type="hidden"
								value="<%=btn3[2]%>" name="">
						</button>
					</td>
				</tr>
			</table>
			<br>

			<table class="chooseKorean">
				<tr>
					<td colspan="3" align="center" class="image"><img
						src="<%=src[4]%>" style="width: 150px; height: 150px;"> <input
						type="hidden" value="<%=src[4]%>" name="fifthImage"></td>
				</tr>
				<%
					String button4 = null;
							String button4A = null;
							String button4B = null;
							for (int i = 0; i < src.length; i++) {
								if (src[4] == originalsrc[i]) {
									button4 = originalText[i];
									for (int j = 0; j < src.length; j++) {
										if (originalText[i] == text[j] && j <= 4) {
											button4A = text[j + 3];
											button4B = text[j + 4];
										} else if (originalText[i] == text[j] && j <= 6) {
											button4A = text[j + 2];
											button4B = text[j - 3];
										} else if (originalText[i] == text[j] && j <= 8) {
											button4A = text[j - 2];
											button4B = text[j - 6];
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
					<td class="korean">
						<button type="button" class="test" name="button5"
							value="<%=btn4[0]%>"><%=btn4[0]%><input type="hidden"
								value="<%=btn4[0]%>" name="">
						</button>
					</td>
					<td class="korean">
						<button type="button" class="test" name="button5"
							value="<%=btn4[1]%>"><%=btn4[1]%><input type="hidden"
								value="<%=btn4[1]%>" name="">
						</button>
					</td>
					<td class="korean">
						<button type="button" class="test" name="button5"
							value="<%=btn4[2]%>"><%=btn4[2]%><input type="hidden"
								value="<%=btn4[2]%>" name="">
						</button>
					</td>
				</tr>
			</table>
			<br>

			<table class="chooseKorean">
				<tr>
					<td colspan="3" align="center" class="image"><img
						src="<%=src[5]%>" style="width: 150px; height: 150px;"> <input
						type="hidden" value="<%=src[5]%>" name="sixthImage"></td>
				</tr>
				<%
					String button5 = null;
							String button5A = null;
							String button5B = null;
							for (int i = 0; i < src.length; i++) {
								if (src[5] == originalsrc[i]) {
									button5 = originalText[i];
									for (int j = 0; j < src.length; j++) {
										if (originalText[i] == text[j] && j <= 4) {
											button5A = text[j + 3];
											button5B = text[j + 4];
										} else if (originalText[i] == text[j] && j <= 6) {
											button5A = text[j + 2];
											button5B = text[j - 3];
										} else if (originalText[i] == text[j] && j <= 8) {
											button5A = text[j - 2];
											button5B = text[j - 6];
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
					<td class="korean">
						<button type="button" class="test" name="button6"
							value="<%=btn5[0]%>"><%=btn5[0]%><input type="hidden"
								value="<%=btn5[0]%>" name="">
						</button>
					</td>
					<td class="korean">
						<button type="button" class="test" name="button6"
							value="<%=btn5[1]%>"><%=btn5[1]%><input type="hidden"
								value="<%=btn5[1]%>" name="">
						</button>
					</td>
					<td class="korean">
						<button type="button" class="test" name="button6"
							value="<%=btn5[2]%>"><%=btn5[2]%><input type="hidden"
								value="<%=btn5[2]%>" name="">
						</button>
					</td>
				</tr>
			</table>
			<br>

			<table class="chooseKorean">
				<tr>
					<td colspan="3" align="center" class="image"><img
						src="<%=src[6]%>" style="width: 150px; height: 150px;"> <input
						type="hidden" value="<%=src[6]%>" name="seventhImage"></td>
				</tr>
				<%
					String button6 = null;
							String button6A = null;
							String button6B = null;
							for (int i = 0; i < src.length; i++) {
								if (src[6] == originalsrc[i]) {
									button6 = originalText[i];
									for (int j = 0; j < src.length; j++) {
										if (originalText[i] == text[j] && j <= 4) {
											button6A = text[j + 2];
											button6B = text[j + 1];
										} else if (originalText[i] == text[j] && j <= 6) {
											button6A = text[j + 2];
											button6B = text[j - 4];
										} else if (originalText[i] == text[j] && j <= 8) {
											button6A = text[j - 7];
											button6B = text[j - 4];
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
					<td class="korean">
						<button type="button" class="test" name="button7"
							value="<%=btn6[0]%>"><%=btn6[0]%><input type="hidden"
								value="<%=btn6[0]%>" name="">
						</button>
					</td>
					<td class="korean">
						<button type="button" class="test" name="button7"
							value="<%=btn6[1]%>"><%=btn6[1]%><input type="hidden"
								value="<%=btn6[1]%>" name="">
						</button>
					</td>
					<td class="korean">
						<button type="button" class="test" name="button7"
							value="<%=btn6[2]%>"><%=btn6[2]%><input type="hidden"
								value="<%=btn6[2]%>" name="">
						</button>
					</td>
				</tr>
			</table>
			<br>

			<table class="chooseKorean">
				<tr>
					<td colspan="3" align="center" class="image"><img
						src="<%=src[7]%>" style="width: 150px; height: 150px;"> <input
						type="hidden" value="<%=src[7]%>" name="eighthImage"></td>
				</tr>
				<%
					String button7 = null;
							String button7A = null;
							String button7B = null;
							for (int i = 0; i < src.length; i++) {
								if (src[7] == originalsrc[i]) {
									button7 = originalText[i];
									for (int j = 0; j < src.length; j++) {
										if (originalText[i] == text[j] && j <= 4) {
											button7A = text[j + 1];
											button7B = text[j + 2];
										} else if (originalText[i] == text[j] && j <= 6) {
											button7A = text[j + 1];
											button7B = text[j - 3];
										} else if (originalText[i] == text[j] && j <= 8) {
											button7A = text[j - 5];
											button7B = text[j - 3];
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
					<td class="korean">
						<button type="button" class="test" name="button8"
							value="<%=btn7[0]%>"><%=btn7[0]%>
							<input type="hidden" value="<%=btn7[0]%>" name="">
						</button>
					</td>
					<td class="korean">
						<button type="button" class="test" name="button8"
							value="<%=btn7[1]%>"><%=btn7[1]%>
							<input type="hidden" value="<%=btn7[1]%>" name="">
						</button>
					</td>
					<td class="korean">
						<button type="button" class="test" name="button8"
							value="<%=btn7[2]%>"><%=btn7[2]%>
							<input type="hidden" value="<%=btn7[2]%>" name="">
						</button>
					</td>
				</tr>
			</table>
			<br>

			<table class="chooseKorean">
				<tr>
					<td colspan="3" align="center" class="image"><img
						src="<%=src[8]%>" style="width: 150px; height: 150px;"> <input
						type="hidden" value="<%=src[8]%>" name="ninethImage"></td>
				</tr>
				<%
					String button8 = null;
							String button8A = null;
							String button8B = null;
							for (int i = 0; i < src.length; i++) {
								if (src[8] == originalsrc[i]) {
									button8 = originalText[i];
									for (int j = 0; j < src.length; j++) {
										if (originalText[i] == text[j] && j <= 4) {
											button8A = text[j + 4];
											button8B = text[j + 2];
										} else if (originalText[i] == text[j] && j <= 6) {
											button8A = text[j + 1];
											button8B = text[j - 5];
										} else if (originalText[i] == text[j] && j <= 8) {
											button8A = text[j - 3];
											button8B = text[j - 7];
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
					<td class="korean">
						<button type="button" class="test" name="button9"
							value="<%=btn8[0]%>"><%=btn8[0]%>
							<input type="hidden" value="<%=btn8[0]%>" name="">
						</button>
					</td>
					<td class="korean">
						<button type="button" class="test" name="button9"
							value="<%=btn8[1]%>"><%=btn8[1]%>
							<input type="hidden" value="<%=btn8[1]%>" name="">
						</button>
					</td>
					<td class="korean">
						<button type="button" class="test" name="button9"
							value="<%=btn8[2]%>"><%=btn8[2]%>
							<input type="hidden" value="<%=btn8[2]%>" name="">
						</button>
					</td>
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