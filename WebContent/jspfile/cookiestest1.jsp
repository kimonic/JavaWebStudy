<%@page import="javax.xml.ws.Response"%>
<%@page import="java.util.Date"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>写入cookies</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String user=URLEncoder.encode(request.getParameter("user"),"UTF-8");
String dd=URLEncoder.encode(new Date().toLocaleString(),"UTF-8");
String dd1=new Date().toLocaleString();
String dd2=URLDecoder.decode(dd1,"UTF-8");
//cookies中不能包含空格,否则报错
Cookie cookie=new Cookie("mrCookie",user+"#"+dd);
cookie.setMaxAge(10);

response.addCookie(cookie);  
//response.sendRedirect("login.jsp");
response.flushBuffer();

%>
time:<%=dd %><br>
time1:<%=dd1 %><br>
time2:<%=dd2 %><br>
<%-- user:<%=user %><br> --%>
<%-- cookie:<%=cookie.getValue()%> --%>
<script type="text/javascript">window.location.href="cookiestest.jsp"</script>
</body>
</html>