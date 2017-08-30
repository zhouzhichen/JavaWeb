<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="beanName" class="com.rf.zzc.bean.User" scope="page"/>
<!-- 用于在jsp页面中查找或者实例化一个Javabean组件 -->
<%-- <jsp:setProperty property="name" name="beanName" value="zzc"/> --%>
<%-- <jsp:setProperty property="password" name="beanName" value="550956150"/> --%>

<jsp:setProperty name="beanName" property='*'/>
<!--用于获取全部parameter参数  -->
姓名：<%=beanName.getName() %><br>
密码：<%=beanName.getPassword() %><br>
</body>
</html>