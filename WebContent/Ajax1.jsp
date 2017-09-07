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
		$("#b1").click(function() {
			$("#div1").load("Ajax2.jsp", {    //请求的路径，或者跳转的页面
				username : $("#usernameid").val(),   //发送到服务器的数据，用键值对的方式
				password : $("#passwordid").val()
			}, function(data, textStaus, xmlRequest) {   
				//function为回调函数
				/*
				date： 为请求返回的内容，处理后的数据，在这里代表的是Ajax2.jsp输出到页面的内容(也就是out.print()方法的输出内容)
				textStatus:描述状态的字符串。有四个值分别为：succuss成功,error错误/失败 ,notmodify 没有被修改,timeout 超时
				XMLHttpRequest表示XMLHttpRequest对象   用于在后台与服务器交换数据。
				传递方式： load()方法的传递参数根据参数data来自动定义，如果没有参数传递，采用get方式传递，否则采用post方式传递
				*/
			})
		})
	})

</script>
</html>
