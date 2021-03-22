<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한글쑥쑥</title>
</head>
<body>
<%
    session.invalidate();
    response.sendRedirect("Home.jsp");
%>

</body>
</html>