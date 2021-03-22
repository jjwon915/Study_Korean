<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>한글쑥쑥</title>
<style type="text/css">
.menubar, .menubar2 {
	border: none;
	border: 0px;
	margin: 0px;
	padding: 0px;
	font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans",
		"Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica,
		sans-serif;
	font-size: 14px;
	font-weight: bold;
}

.menubar2 ul {
	list-style: none;
	margin: 0;
	padding: 0;
	width: 100%;
}

.menubar ul {
	background: rgb(109, 109, 109);
	height: 50px;
	list-style: none;
	margin: 0;
	padding: 0;
}

.menubar li {
	float: left;
	padding: 0px;
}

.menubar li a {
	background: rgb(109, 109, 109);
	color: #cccccc;
	display: block;
	font-weight: normal;
	line-height: 50px;
	margin: 0px;
	padding: 0px 25px;
	text-align: center;
	text-decoration: none;
}

.menubar2 li a {
	background: rgb(109, 109, 109);
	color: #cccccc;
	display: block;
	font-weight: normal;
	line-height: 50px;
	margin: 0px;
	padding: 0px 25px;
	text-align: center;
	text-decoration: none;
}

.menubar li a:hover, .menubar ul li:hover a, .menubar li ul li a:hover {
	background: rgb(71, 71, 71);
	color: #FFFFFF;
	text-decoration: none;
}

.menubar li ul {
	background: rgb(109, 109, 109);
	display: none; /* 평상시에는 드랍메뉴가 안보이게 하기 */
	height: auto;
	padding: 0px;
	margin: 0px;
	border: 0px;
	position: absolute;
	width: 200px;
	z-index: 200;
	/*top:1em;
/*left:0;*/
}

.menubar li:hover ul {
	display: block; /* 마우스 커서 올리면 드랍메뉴 보이게 하기 */
}

.menubar li li {
	background: rgb(109, 109, 109);
	display: block;
	float: none;
	margin: 0px;
	padding: 0px;
	width: 200px;
}

.menubar li:hover li a {
	background: none;
}

.menubar li ul a {
	display: block;
	height: 50px;
	font-size: 12px;
	font-style: normal;
	margin: 0px;
	padding: 0px 10px 0px 15px;
	text-align: left;
}

.menubar2 li ul a:hover, .menubar2 li ul li:hover a, .menubar2 li a:hover
	{
	background: rgb(71, 71, 71);
	border: 0px;
	color: #ffffff;
	text-decoration: none;
}

.menubar p {
	clear: left;
}

.menubar .home {
	background: #4CAF50;
	color: #FFF
}

.menubar .home:hover {
	background: #43A047;
}

.menubar:before, .menubar:after {
	content: " ";
	display: table;
}

.menubar:after {
	clear: both;
}

.menubar {
	*zoom: 1;
}

#mobile {
	display: none;
}

#mobile #pull {
	display: none;
}

#nav2 {
	display: none;
}

@media only screen and (max-width : 550px) {
	#nav {
		display: none;
	}
	#pull {
		border-bottom: 0;
	}
	#mobile ul {
		display: none;
		height: auto;
	}
	#mobile {
		background-color: #4CAF50;
		width: 100%;
		position: relative;
	}
	#pull a:after {
		content: "";
		background: no-repeat;
		width: 30px;
		height: 30px;
		display: inline-block;
		position: absolute;
		right: 15px;
		top: 10px;
	}
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		var a = $(window).width();
		var menu = $('#nav2');
		var button = $('#pull');
		var menuHeight = menu.height();

		if (a < 550) {
			$("#nav").hide();
			$("#mobile").show();
			$("#pull").show();
		} else {
			$("#mobile").hide();
			$("#nav").show();
			$("#nav2").hide();
			$("#pull").hide();
		}

		$("#pull").unbind('click').on('click', function() {
			if ($("#pull").attr('name') == "none") {
				$("#nav2").show();
				$("#nav2 ul.sub").hide();
				$("#nav2 ul.menu2 li").click(function() {
					$("ul", this).slideToggle();
				});
				$("#pull").attr('name', "display");
			} else {
				$("#nav2").hide();
				$("#pull").attr('name', "none");
			}

		});
	});

	$(window).resize(function() {
		var a = $(window).width();
		var menu = $('#nav2');
		var button = $('#pull');
		var menuHeight = menu.height();

		if (a < 550) {
			$("#nav").hide();
			$("#mobile").show();
			$("#pull").show();
		} else {
			$("#mobile").hide();
			$("#nav").show();
			$("#nav2").hide();
			$("#pull").hide();
		}

		$("#pull").unbind('click').on('click', function() {
			if ($("#pull").attr('name') == "none") {
				$("#nav2").show();
				$("#nav2 ul.sub").hide();
				$("#nav2 ul.menu2 li").click(function() {
					$("ul", this).slideToggle();
				});
				$("#pull").attr('name', "display");
			} else {
				$("#nav2").hide();
				$("#pull").attr('name', "none");
			}

		});
	});
</script>
</head>
<body>
	<div id="mobile" style="display: none">
		<a href="#" id="pull" name="none"><img src="Image/menu_icon.png"
			width="40px" height="40px" /></a>
	</div>
	<div class="menubar" id="nav">
		<ul class="menu">
			<li><a href="ChildHome.jsp" class="home">Home</a></li>
			<li><a href="Logout.jsp" id="current">로그아웃</a>
			<li><a href="Gostudy.jsp" id="study">학습하기</a>
			<li><a href="#">게임</a>
				<ul class="sub">
					<li><a href="GoChooseKorean.jsp">한글맞추기</a></li>
					<li><a href="GoChooseImage.jsp">그림맞추기</a></li>
					<li><a href="GoDrawLine.jsp">선긋기</a></li>
				</ul></li>
		</ul>
	</div>
	<div class="menubar2" id="nav2">
		<ul class="menu2">
			<li><a href="ChildHome.jsp" class="home">Home</a></li>
			<li><a href="Logout.jsp" id="current">로그아웃</a>
			<li><a href="Gostudy.jsp" id="study">학습하기</a>
			<li><a href="#">게임</a>
				<ul class="sub">
					<li><a href="GoChooseKorean.jsp">한글맞추기</a></li>
					<li><a href="GoChooseImage.jsp">그림맞추기</a></li>
					<li><a href="GoDrawLine.jsp">선긋기</a></li>
				</ul></li>
		</ul>
	</div>
</body>
</html>