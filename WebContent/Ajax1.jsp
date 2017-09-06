<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form action="" name="f1" id="form1">
		<table>
			<tr>
				<td>用户名</td>
				<td><input type="text" id="usernameid" name="username"
					value="zhangsan"></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="password" id="passwordid" name="password"
					value="123"></td>
			</tr>
		</table>
		<input type="button" id="b1" value="提交">
	</form>
	<div id="div1"
		style="width: 400px; height: 200px; background-color: red;"></div>


</body>
<script type="text/javascript">
	$(document).ready(function() {
		$("#b1").click();
	})
	$("#b1").click(function() {
		$("#div1").load("Ajax2.jsp", {
			username : $("#usernameid").val(),
			password : $("#passwordid").val()
		}, function(data, textStaus, xmlRequest) {

		})
	})
</script>
</html>
