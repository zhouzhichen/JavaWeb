<%@page import="java.io.PrintWriter"%>
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
		response.setContentType("text/html;charset=UTF-8");
		out.print("有你真好<br>");
		out.println("<hr>");
// 		out.flush();   在response页面如果有flush()步骤，则response会被提交，不能继续调用response的方法。
		PrintWriter p = response.getWriter();
		p.println("大家都好");
// 		response.sendRedirect("login2.jsp");
		request.getRequestDispatcher("login2.jsp").forward(request, response);
	%>
	
	<%-- <% for(int fontsize=1;fontsize<4;fontsize++ ){ %>
	<font color="red" size="<%=fontsize %>">
	bigger than bigger
	</font><br>
	<%} %> --%>
</body>
</html>