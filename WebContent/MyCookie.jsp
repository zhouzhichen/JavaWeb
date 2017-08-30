<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<% request.setCharacterEncoding("UTF-8");%>
	<jsp:useBean id="use" class="com.rf.zzc.bean.User" scope="page" />
	<jsp:useBean id="userDao" class="com.rf.zzc.bean.UserDAO" scope="page" />
	<jsp:setProperty property='*' name="use" />

	<%
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		if (userDao.lok(use)) {
			String str = request.getParameter("temp");
			if ("on".equals(str)) {
				String s = request.getParameter("name");
				String s1 = request.getParameter("password");
				Cookie c0 = new Cookie("user", URLEncoder.encode(s, "UTF-8"));
				Cookie c1 = new Cookie("password", s1);
				c0.setMaxAge(10);
				c1.setMaxAge(10);
				response.addCookie(c0);
				response.addCookie(c1);
				Cookie c[] = request.getCookies();
				for (Cookie x : c) {
					out.println(URLDecoder.decode(x.getValue(), "utf-8"));
					out.println("<br>");
				}

			} else {
				String s = request.getParameter("name");
				String s1 = request.getParameter("password");
				Cookie c0 = new Cookie("user", URLEncoder.encode(s, "UTF-8"));
				Cookie c1 = new Cookie("password", s1);
				response.addCookie(c0);
				response.addCookie(c1);
				Cookie c[] = request.getCookies();
				for (Cookie x : c) {
					out.println(URLDecoder.decode(x.getValue(), "utf-8"));
					out.println("<br>");
				}
			}

		}else{
			/* Cookie c[] = request.getCookies();
			for (Cookie x : c) {
				x.setValue(null);
				response.addCookie(x);
			} */
			out.print("<script language='JavaScript'>alert('you are wrong');window.location.href='Mylogin.jsp'</script>");
		}
	%>
</body>
</html>