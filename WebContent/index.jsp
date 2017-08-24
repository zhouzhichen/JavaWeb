<%@ page language="java" import="java.util.*"
	import="java.text.SimpleDateFormat"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!-- HTML注释,客户端可见 -->
	<%--JSP注释,客户端不可见 --%>
	<!--//单行注释 -->
	<!--/*多行注释*/ -->

	<%
		//这里面定义的类似于局部变量
		String name = "Hello web";
	
	%>

	<%!//这里面定义的类似于成员变量
	String name1 = "Hello web";

	//在%!里声明声明方法
	int add(int x, int y) {
		return x + y;
	}%>

	<%=name%>
	<%=add(3, 4)%>

	<hr>
	<%
		//JSP9大内置对象,不用声明直接使用
		//out,request,response,session,application,page,pageContext,config,exception
	%>

	<%!void print99_1(JspWriter out) throws Exception {
		for (int i = 1; i <= 9; i++) {
			for (int j = 1; j <= i; j++)
				out.print(i + "*" + j + "=" + i * j + "\t");
			out.print("<br>");
		}
	}

	String print99_2() {
		String str = "";
		for (int i = 1; i <= 9; i++) {
			for (int j = 1; j <= i; j++)
				str += i + "*" + j + "=" + i * j + "\t";
			str += "<br>";
		}
		return str;
	}

	String obtainTime() {
		Calendar time = Calendar.getInstance();
		Date date = time.getTime();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		return sdf.format(date);
	}%>

	<%
		print99_1(out);
	%>

	<%=print99_2()%>
	<%=obtainTime()%>

	<hr>



</body>
