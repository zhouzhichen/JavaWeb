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
		String s = request.getParameter("user");
		String s1 = request.getParameter("password");
		if (s.equals("admin") && s1.equals("admin")) {
			request.getRequestDispatcher("Mylogin2.jsp").forward(request, response);
		} else {
		/* response.sendRedirect("Mylogin3.jsp"); */
			out.print("<script langeuage='JavaScript'>alert('UserNameWrong');window.location.href='Mylogin.jsp';</script>"); //实现的效果一样
		}
	%>
</body>
</html>