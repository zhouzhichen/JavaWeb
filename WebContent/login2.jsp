<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		request.setAttribute("teacher", "zhoudaye");
	%>
	<%=request.getAttribute("teacher")%><br> 
	获取MIME;<%=request.getContentType()%><br>
	获取协议名;<%=request.getProtocol()%><br> 
	获取主机名;<%=request.getServerName()%><br>
	获取端口名;<%=request.getServerPort()%><br> 
	获取文件长度;<%=request.getContentLength()%><br>
	获取真实路径;<%=request.getContextPath()%><br> 
	获取请求路径;<%=request.getRealPath("login2.jsp")%><br>
</body>
</html>