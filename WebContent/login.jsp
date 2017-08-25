<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>登陆成功</h1>
<% request.setCharacterEncoding("UTF-8"); %>
用户名：<%=request.getParameter("name") %><br>
密码：<%=request.getParameter("password") %><br>
兴趣爱好:<% String[] str=request.getParameterValues("like");
for(String str1:str){
	out.println(str1);
}
%>
</body>
</html>