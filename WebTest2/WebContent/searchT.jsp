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
<meta charset="UTF-8" name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>한글쑥쑥</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(window).resize(
			function() {
				if ($(window).width() > 800) {
					$('.drop').css('width',
							($(window).width() - $('.panel').width()) / 4);
				} else {
				}
			});
	$(document).ready(
			function() {
				if ($(window).width() > 800) {
					$('.drop').css('width',
							($(window).width() - $('.panel').width()) / 4);
				} else {
				}
			});

	function checkValue() {
		var name = document.getElementById('name').value;

		if (name.trim().length == 0) {
			alert("이름이 입력되지 않았습니다.");
			return false;
		}

		var a = $('#dropbox00').find('img').attr("src");
		$('#first').val(a);

		var b = $('#dropbox01').find('img').attr("src");
		$('#second').val(b);

		var c = $('#dropbox02').find('img').attr("src");
		$('#third').val(c);

		var d = $('#dropbox10').find('img').attr("src");
		$('#fourth').val(d);

		var e = $('#dropbox11').find('img').attr("src");
		$('#fifth').val(e);

		var f = $('#dropbox12').find('img').attr("src");
		$('#sixth').val(f);

		var g = $('#dropbox20').find('img').attr("src");
		$('#seventh').val(g);

		var h = $('#dropbox21').find('img').attr("src");
		$('#eighth').val(h);

		var i = $('#dropbox22').find('img').attr("src");
		$('#nineth').val(i);

		var a1 = $('#dropbox00').find('p').text();
		$('#firstText').val(a1);

		var a2 = $('#dropbox01').find('p').text();
		$('#secondText').val(a2);

		var a3 = $('#dropbox02').find('p').text();
		$('#thirdText').val(a3);

		var a4 = $('#dropbox10').find('p').text();
		$('#fourthText').val(a4);

		var a5 = $('#dropbox11').find('p').text();
		$('#fifthText').val(a5);

		var a6 = $('#dropbox12').find('p').text();
		$('#sixthText').val(a6);

		var a7 = $('#dropbox20').find('p').text();
		$('#seventhText').val(a7);

		var a8 = $('#dropbox21').find('p').text();
		$('#eighthText').val(a8);

		var a9 = $('#dropbox22').find('p').text();
		$('#ninethText').val(a9);

		if (a1.trim().length == 0 || a2.trim().length == 0
				|| a3.trim().length == 0 || a4.trim().length == 0
				|| a5.trim().length == 0 || a6.trim().length == 0
				|| a7.trim().length == 0 || a8.trim().length == 0
				|| a9.trim().length == 0) {
			alert("학습판에 사진이 전부 올라오지 않았습니다.");
			return false;
		}
	}

	function text_submit() {
		var a1 = $('#dropbox00').find('p').text();
		var a2 = $('#dropbox01').find('p').text();
		var a3 = $('#dropbox02').find('p').text();
		var a4 = $('#dropbox10').find('p').text();
		var a5 = $('#dropbox11').find('p').text();
		var a6 = $('#dropbox12').find('p').text();
		var a7 = $('#dropbox20').find('p').text();
		var a8 = $('#dropbox21').find('p').text();
		var a9 = $('#dropbox22').find('p').text();

		if (a1.trim().length != 0 || a2.trim().length != 0
				|| a3.trim().length != 0 || a4.trim().length != 0
				|| a5.trim().length != 0 || a6.trim().length != 0
				|| a7.trim().length != 0 || a8.trim().length != 0
				|| a9.trim().length != 0) {
			var confirmResult = confirm("학습판에 심볼이 올라와 있습니다. 재검색하면 학습판이 초기화 되는게 계속 진행하겠습니까?");
			if (confirmResult == true) {
			} else {
				return false;
			}
		}

		var searchtext = document.getElementById('searchtext').value;

		if (searchtext.trim().length == 0) {
			alert("검색명이 입력되지 않았습니다.");
			return false;
		}

		var v = document.nameForm;
		v.action = "searchT.jsp";
		v.submit();

	}
	function select_submit() {
		var a1 = $('#dropbox00').find('p').text();
		var a2 = $('#dropbox01').find('p').text();
		var a3 = $('#dropbox02').find('p').text();
		var a4 = $('#dropbox10').find('p').text();
		var a5 = $('#dropbox11').find('p').text();
		var a6 = $('#dropbox12').find('p').text();
		var a7 = $('#dropbox20').find('p').text();
		var a8 = $('#dropbox21').find('p').text();
		var a9 = $('#dropbox22').find('p').text();

		if (a1.trim().length != 0 || a2.trim().length != 0
				|| a3.trim().length != 0 || a4.trim().length != 0
				|| a5.trim().length != 0 || a6.trim().length != 0
				|| a7.trim().length != 0 || a8.trim().length != 0
				|| a9.trim().length != 0) {
			var confirmResult = confirm("학습판에 심볼이 올라와 있습니다. 재검색하면 학습판이 초기화 되는게 계속 진행하겠습니까?");
			if (confirmResult == true) {
			} else {
				return false;
			}
		}
		var base = $("select[name=category1]").val();

		if (base.trim().length == 0) {
			alert("기본학습판을 선택하지 않았습니다.");
			return false;
		}
	}

	function allowDrop(ev) {
		ev.preventDefault();
	}

	function drag(ev) {
		var code = '<img src="' + ev.target.src
				+ '" width="150" height="150" ondrop="drop(event)"> <p></p>';
		ev.dataTransfer.setData("text", code);
		ev.dataTransfer.setData("alt", ev.target.alt);
	}

	function drop(ev) {
		ev.preventDefault();
		var data = ev.dataTransfer.getData("text");
		var alt = ev.dataTransfer.getData("alt");

		$('#' + ev.target.id).html(data);
		$('#' + ev.target.id).find('p').text(alt);
		$('#' + ev.target.id).find('img').attr('draggable', false);
	}

	function category_submit() {
		var a1 = $('#dropbox00').find('p').text();
		var a2 = $('#dropbox01').find('p').text();
		var a3 = $('#dropbox02').find('p').text();
		var a4 = $('#dropbox10').find('p').text();
		var a5 = $('#dropbox11').find('p').text();
		var a6 = $('#dropbox12').find('p').text();
		var a7 = $('#dropbox20').find('p').text();
		var a8 = $('#dropbox21').find('p').text();
		var a9 = $('#dropbox22').find('p').text();

		if (a1.trim().length != 0 || a2.trim().length != 0
				|| a3.trim().length != 0 || a4.trim().length != 0
				|| a5.trim().length != 0 || a6.trim().length != 0
				|| a7.trim().length != 0 || a8.trim().length != 0
				|| a9.trim().length != 0) {
			var confirmResult = confirm("학습판에 심볼이 올라와 있습니다. 재검색하면 학습판이 초기화 되는게 계속 진행하겠습니까?");
			if (confirmResult == true) {
			} else {
				return false;
			}
		}
		var base = $("select[name=category2]").val();

		if (base.trim().length == 0) {
			alert("카테고리를 선택하지 않았습니다.");
			return false;
		}
	}
</script>
<style>
.resultpanel {
	width: 30%;
	height: 300px;
	border: 1px dotted green;
	margin: 2%;
	padding: 2%;
	overflow: scroll;
}

.drop {
	width: 200px;
	height: 247.5px;
}

.panel {
	width: 30%;
	border: 1px dotted green;
	margin: 2%;
	padding: 2%;
}

#box {
	display: inline;
	text-align: center;
	float: right;
	margin: 0.2%;
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
	width: 60px;
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
	width: 60px;
	border: 0;
	padding: 15px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
	border-radius: 12px;
}

@media only screen and (max-width : 800px) {
	#box {
		width: 100%;
		clear: both;
	}
	.panel {
		width: 90%;
		height: 150px;
		clear: both;
	}
	.resultpanel {
		width: 90%;
		height: 200px;
		clear: both;
	}
}
</style>

</head>
<body>
	<jsp:include page="ParentLogMenu.jsp" />
	<div>
		<h3 class="boardmenu_NEW" style="text-align: center;">새로운 학습판을
			생성해 주세요.</h3>
		<hr>

		<form method="POST" action="doSaveBoard">
			<div id="box">
				<div>
					<h4>
						학습판 이름을 적어주세요. <input type="text" placeholder="학습판이름" id="name"
							name="name" />
					</h4>
				</div>
				<table id="table1" style="height: 825px;">
					<tbody>
						<tr>
							<td id="dropbox00" class="drop" ondrop="drop(event)"
								ondragover="allowDrop(event)" ondragenter="return false"><br>
								<p name="firstText"></p></td>
							<td id="dropbox01" class="drop" ondrop="drop(event)"
								ondragover="allowDrop(event)" ondragenter="return false"><br>
								<p></p></td>
							<td id="dropbox02" class="drop" ondrop="drop(event)"
								ondragover="allowDrop(event)" ondragenter="return false"><br>
								<p></p></td>
						</tr>

						<tr>
							<td id="dropbox10" class="drop" ondrop="drop(event)"
								ondragover="allowDrop(event)" ondragenter="return false"><br>
								<p></p></td>
							<td id="dropbox11" class="drop" ondrop="drop(event)"
								ondragover="allowDrop(event)" ondragenter="return false"><br>
								<p></p></td>
							<td id="dropbox12" class="drop" ondrop="drop(event)"
								ondragover="allowDrop(event)" ondragenter="return false"><br>
								<p></p></td>
						</tr>

						<tr>
							<td id="dropbox20" class="drop" ondrop="drop(event)"
								ondragover="allowDrop(event)" ondragenter="return false"><br>
								<p></p></td>
							<td id="dropbox21" class="drop" ondrop="drop(event)"
								ondragover="allowDrop(event)" ondragenter="return false"><br>
								<p></p></td>
							<td id="dropbox22" class="drop" ondrop="drop(event)"
								ondragover="allowDrop(event)" ondragenter="return false"><br>
								<p></p></td>
						</tr>
					</tbody>
					<div>
						<input type="hidden" name="row" value="3">
						<!--    <input type="hidden" name="column" value="3"> -->
						<input type="hidden" id="first" name="first" value=""> <input
							type="hidden" id="second" name="second" value=""> <input
							type="hidden" id="third" name="third" value=""> <input
							type="hidden" id="fourth" name="fourth" value=""> <input
							type="hidden" id="fifth" name="fifth" value=""> <input
							type="hidden" id="sixth" name="sixth" value=""> <input
							type="hidden" id="seventh" name="seventh" value=""> <input
							type="hidden" id="eighth" name="eighth" value=""> <input
							type="hidden" id="nineth" name="nineth" value=""> <input
							type="hidden" name="FromAddress" value="Newboard"> <input
							name="a" type="text" value="" style="DISPLAY: NONE"> <input
							type="hidden" id="firstText" name="firstText" value=""> <input
							type="hidden" id="secondText" name="secondText" value="">
						<input type="hidden" id="thirdText" name="thirdText" value="">
						<input type="hidden" id="fourthText" name="fourthText" value="">
						<input type="hidden" id="fifthText" name="fifthText" value="">
						<input type="hidden" id="sixthText" name="sixthText" value="">
						<input type="hidden" id="seventhText" name="seventhText" value="">
						<input type="hidden" id="eighthText" name="eighthText" value="">
						<input type="hidden" id="ninethText" name="ninethText" value="">
					</div>
				</table>
				<input type="hidden" id="parentId" name="parentId"
					value="<%=session.getAttribute("parentId")%>"> <br> <input
					type="submit" class="save" id="save" onclick="return checkValue();"
					style="float: right;" value="저장">
			</div>
		</form>

		<form method="POST" name="chooseBase" action="MakeImage3.jsp">
			<div class="panel">
				<div class="panel-heading" role="tab" id="headingTwo">
					<h4 class="panel-title">
						카테고리 검색 <span class="glyphicon glyphicon-search"></span><span
							class="caret"></span>
					</h4>
					<p style="font-size: 1vw;">찾고싶은 심볼 카테고리를 선택하여 검색해 주세요.</p>
				</div>
				<div class="panel-collapse collapse" role="tabpanel"
					aria-labelledby="headingTwo">
					<div class="panel-body">
						<select id="firstSelect" name="category2"
							onchange="itemChange(this.form);"><option value="">선택</option>
							<option value="3">음식</option>
							<option value="4">학교</option>
							<option value="5">집</option>
							<option value="6">놀이여가</option>
							<option value="7">건강</option>
							<option value="8">교통</option>
							<option value="9">지역사회</option>
							<option value="10">스케쥴</option>
							<option value="11">종교</option>
							<option value="12">스포츠</option>
							<option value="13">색</option>
							<option value="14">동식물</option>
							<option value="15">인물</option>
							<option value="16">사람</option>
							<option value="17">국가</option>
							<option value="18">미분류</option>
							<option value="19">결혼출산육아</option>
							<option value="20">대학생활</option>
							<option value="21">복지주민센터</option>
							<option value="22">장애피해상황</option>
							<option value="23">직업</option>
							<option value="24">기기정비</option></select> <input type="submit"
							class="search" onclick="return category_submit()" value="검색">
					</div>
				</div>
			</div>
		</form>

		<form method="Post" name="nameForm">
			<div class="panel">
				<div class="panel-heading" role="tab" id="headingThree">
					<h4 class="panel-title">
						<h4>이름 검색</h4>
						<span class="glyphicon glyphicon-search"></span><span
							class="caret"></span>
					</h4>
					<p style="font-size: 1vw;">찾고싶은 심볼의 이름을 입력하여 검색해 주세요.</p>
				</div>

				<div id="collapseThree" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingThree">

					<div class="panel-body">
						<input type="text" name="searchtext" id="searchtext"
							placeholder="심볼명 검색">
						<button type="button" class="search"
							onclick="return text_submit();">검색</button>
					</div>
				</div>
			</div>
		</form>
	</div>


	<form method="POST" name="chooseBase" action="MakeImage2.jsp">
		<div class="panel">
			<h4>기본판에서 고르기</h4>
			<p style="font-size: 1vw;">시스템 상 기본으로 만들어진 학습판을 사용할 수 있습니다.</p>
			<div class="panel-collapse collapse" role="tabpanel"
				aria-labelledby="headingTwo">
				<div class="panel-body">
					<select name="category1" onchange="itemChange(this.form);"><option
							value="">선택</option>
						<option value="food">음식</option>
						<option value="place">장소</option>
						<option value="color">색깔</option>
						<option value="animal">동물</option>
						<option value="school">학교</option>
						<option value="fruit">과일</option>
						<option value="traffic">교통</option>
						<option value="family">가족</option>
						<option value="pencil">학용품</option>
						<option value="instrument">악기</option>
					</select> <input type="submit" class="search"
						onclick="return select_submit()" />
				</div>
			</div>

		</div>
	</form>
	<div class="resultpanel" id="searchResult">
		<h4>검색 결과</h4>
		<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel"
			aria-labelledby="headingTwo" id="searchResult2">
			<%
				request.setCharacterEncoding("utf-8");
				Class.forName("com.mysql.jdbc.Driver");

				Connection conn = null; // DBMS와 Java연결객체
				Statement stmt = null; // SQL구문을 실행
				ResultSet rs = null; // SQL구문의 실행결과를 저장

				try {
					String url = "jdbc:mysql://220.69.171.28:3306/koreanaac_symbol_db?serverTimezone=Asia/Seoul";
					String dbUser = "aac_db";
					String dbPass = "hong1234";
					String searchtext = request.getParameter("searchtext");
					String query = "select * from symbol where symbol_expression like '%" + searchtext + "%'";
					// 2. 데이터베이스 커넥션 생성
					conn = DriverManager.getConnection(url, dbUser, dbPass);

					// 3. Statement 생성
					stmt = conn.createStatement();

					// 4. 쿼리 실행
					rs = stmt.executeQuery(query);

					// 5. 쿼리 실행 결과 출력
					while (rs.next()) {
			%>
			<figure> <%
 	String src = "http://220.69.171.28:8080/Symbol/" + rs.getString("symbol_img_path");
 %> <img id="<%=rs.getString("symbol_id")%>" src="<%=src%>"
				style="width: 120px; heigth: 120px;" draggable="true"
				ondragstart="drag(event)"
				alt="<%=rs.getString("symbol_expression")%>"> <figcation>
			<p>
				<%=rs.getString("symbol_expression")%>
			</p>
			</figcation> </figure>
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
	</div>
	</div>
	</div>

</body>
</html>