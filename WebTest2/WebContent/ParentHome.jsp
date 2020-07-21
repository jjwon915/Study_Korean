<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
if (session.getAttribute("parentId") == null) {
	response.sendRedirect("Home.jsp");
}
%>
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
	
}
</style>
</head>
<body>
	<jsp:include page="ParentLogMenu.jsp" />
	<br>
	<div class="container">
		<p align="center" class="main_message">
		<%= session.getAttribute("parentId") %>님  환영합니다. 원하시는 메뉴를 선택하세요. <p>
		<br><p align="center">
			<img src="Image/main.png" width="60%" height="30%" id="main" />
		</p>
	</div>
</body>
</html>