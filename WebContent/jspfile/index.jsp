<%@page import="java.awt.image.SinglePixelPackedSampleModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date" %>
    <%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP程序首页</title>
</head>
<body>
<h1>首次运行的jsp页面</h1>
<%
	Date date=new Date();
	SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	String today=simpleDateFormat.format(date);
%>


当前时间:<%=today %>

</body>
</html>