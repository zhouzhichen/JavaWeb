<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login.jsp" name="reform" method="post">
		<table>
			<tr>
				<td>用户名：
				<td>
				<td><input type="text" name="name"><td>
				<tr>
				<td>密码：
				<td>
				<td><input type="password" name="password"><td>
				<tr>
				<td>性别：
				<td>
				<td><input type="radio" name="sex">男<td>
				<td><input type="radio" name="sex">女<td>
				<tr>
				<td>兴趣爱好：
				<td>
				<td><input type="checkbox" name="like" value="zuqiu">足球
				<input type="checkbox" name="like" value="lanqiu">篮球
				<input type="checkbox" name="like" value="youyng">游泳
				<td>
				<td><input type="submit" value="提交"><td>
		</table>
	</form>
</body>
</html>