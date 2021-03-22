<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한글쑥쑥</title>
<script type="text/javascript">
	function checkValue() {

		var pw = document.getElementById('pw').value;

		if (pw.trim().length == 0) {
			alert("비밀번호가 입력되지 않았습니다.");
			return false;
		}

		var pw_re = document.getElementById('pw_re').value;

		if (pw_re.trim().length == 0) {
			alert("비밀번호 확인이 입력되지 않았습니다.");
			return false;
		}

		if (pw != pw_re) {
			alert("비밀번호가 동일하지 않습니다.");
			return false;
		}

	}
</script>
<style type="text/css">
.join-page {
	width: 360px;
	padding: 3% 0 0;
	margin: auto;
}

.form {
	position: relative;
	z-index: 1;
	background: #FFFFFF;
	max-width: 360px;
	margin: 0 auto 100px;
	padding: 45px;
	text-align: center;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0
		rgba(0, 0, 0, 0.24);
}

.form input {
	font-family: "Roboto", sans-serif;
	outline: 0;
	background: #f2f2f2;
	width: 100%;
	border: 0;
	margin: 0 0 15px;
	padding: 15px;
	box-sizing: border-box;
	font-size: 14px;
}

.form button {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #4CAF50;
	width: 100%;
	border: 0;
	padding: 15px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
}

.form button:hover, .form button:active, .form button:focus {
	background: #43A047;
}

.container {
	position: relative;
	z-index: 1;
	max-width: 300px;
	margin: 0 auto;
}

.container:before, .container:after {
	content: "";
	display: block;
	clear: both;
}

.container .info {
	margin: 50px auto;
	text-align: center;
}

.container .info h1 {
	margin: 0 0 15px;
	padding: 0;
	font-size: 36px;
	font-weight: 300;
	color: #1a1a1a;
}

.container .info span {
	color: #4d4d4d;
	font-size: 12px;
}

.container .info span a {
	color: #000000;
	text-decoration: none;
}

.container .info span .fa {
	color: #EF3B3A;
}

.main_message {
	font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans",
		"Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica,
		sans-serif;
	font-size: 18px;
}

.Warning {
	font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans",
		"Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica,
		sans-serif;
	font-size: 12px;
}
</style>
</head>
<body>
	<jsp:include page="ParentLogMenu.jsp" />
	<div class="join-page">
		<div class="form">
			<p align="center" class="main_message"><%=session.getAttribute("parentId")%>님의
				회원정보 페이지
			<p align="center" class="Warning">ID와 생년월일은 수정이 불가합니다.</p>
			<form class="modify-form" method="POST" action="ModifyParent.jsp">
				<input type="text" placeholder="<%=session.getAttribute("name")%>"
					id="name" name="name" /> <input type="text"
					placeholder="<%=session.getAttribute("parentId")%>" id="parentId"
					name="parentId" readonly /> <input type="password"
					placeholder="비밀번호" id="pw" name="pw" /> <input type="password"
					placeholder="비밀번호 확인" id="pw_re" /> <input type="text" id="birth"
					name="birth" placeholder="<%=session.getAttribute("birth")%>"
					readonly /> <input type="text" pattern="-?[0-9]*" maxlength=11
					placeholder="<%=session.getAttribute("phone")%>" id="phone"
					name="phone" />
				<button onclick="return checkValue();">수정하기</button>
			</form>
		</div>
	</div>
</body>
</html>