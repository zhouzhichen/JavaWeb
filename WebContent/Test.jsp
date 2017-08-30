<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>include指令</h1>
<hr>
<%-- 	<%@include file="Include.jsp"%> 为指令   生成一个servlet，同时进行--%>
<jsp:include page="Include.jsp"></jsp:include><%-- 为动作  生成两个servlet，不是同时进行--%>
</body>
</html>