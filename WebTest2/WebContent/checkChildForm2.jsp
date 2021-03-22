<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한글쑥쑥</title>
	<style type="text/css">
		#wrap {
			width: 490px;
			text-align :center;
			margin: 0 auto 0 auto;
		}
		
		#chk{
			text-align :center;
		}
		
		#cancelBtn{
			visibility:visible;
		}
		
		#useBtn{
			 visibility:hidden;
		}

	</style>
	
	<script type="text/javascript">
		function pValue(){
			document.getElementById("id").value = opener.document.join.id.value;
		}
		
		function check() {
			var v = document.getElementById("result").value;
			if (v=="false") {
				document.getElementById("msg").innerHTML = "사용할 수 없는 아이디입니다.";
				document.getElementById("useBtn").style.visibility='hidden';
			} else {
				document.getElementById("msg").innerHTML = "사용 가능한 아이디입니다.";
				document.getElementById("useBtn").style.visibility='visible';
			}
		}		
		// 사용하기 클릭 시 부모창으로 값 전달 
		function sendCheckValue(){
			var usernewid = document.getElementById("id").value;
			opener.join.id.value = usernewid;
			opener.join.idDuplication.value ="idCheck";
			self.close();
		}
	</script>
</head>
<body onload="check();">
<div id="wrap">
	<br>
	<b><font size="4" color="gray">아이디 중복체크</font></b>
	<hr size="1" width="460">
	<br>
	<div id="chk">
		<form id="checkForm"  method="POST" action="doChildCheck">
			<input type="text" name="id" id="id" value=	<%= session.getAttribute("id") %> disabled>

		</form>
		<div id="msg"></div>
		<br>
		<input id="useBtn" type="button" value="사용하기" onclick="sendCheckValue()"><br>	
		<input id="result" type="hidden" value=	<%= session.getAttribute("result2") %>>
	</div>
</div>	
</body>
</html>