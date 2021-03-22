<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한글쑥쑥</title>
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
	font-weight: bold;
}

.container button {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #4CAF50;
	float: right;
	margin-right: 12%;
	width: 10%;
	border: 0;
	padding: 8px;
	color: #FFFFFF;
	font-size: 15px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
	border-radius: 12px;
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
	<div class="container">
		<p align="center">
			<img src="Image/01_result.png" width="60%" height="30%" id="main" />
		</p>
		<br> 
		<button>완료</button>
	</div>
</body>
</html>