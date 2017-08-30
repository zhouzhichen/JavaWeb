<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		// 		response.sendRedirect("login2.jsp"); 重定向
		//		request.getRequestDispatcher("login2.jsp").forward(request, response); 转发
	%>

	<%-- <% for(int fontsize=1;fontsize<4;fontsize++ ){ %>
	<font color="red" size="<%=fontsize %>">
	bigger than bigger
	</font><br>
	<%} %> --%>

	session的创建时间 :<%=session.getCreationTime()%><br>
	<%
		SimpleDateFormat s = new SimpleDateFormat();
		Date d = new Date(session.getCreationTime());
		String time = s.format(d);
		session.setAttribute("username1", "case1");
	%>
	<%=time%><br> sessionID
	<%=session.getId()%><br> 
	获取session的用户名：<%=session.getAttribute("username1")%><br>
	获取session默认的存活时间：<%=session.getMaxInactiveInterval() %><br>
<%-- 	设置session默认存活时间：<% session.setMaxInactiveInterval(12); %> --%>

</body>
</html>