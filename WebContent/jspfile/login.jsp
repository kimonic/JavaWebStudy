<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆页</title>
</head>
<body>
<%
	String  s=request.getParameter("name");
	String b=(String)request.getAttribute("id");
	
%>
传递的参数:是<%=s %><br>
传递的id参数是:<%=b %>
<form action="" name="form1" method="post">
用户名:<input name="name" type="text"  id="name" style="width: 120px"><br>
密&nbsp;&nbsp;&nbsp;码:<input name="pwd" type="password" id="pwd" style="width: 120px"><br>

<br>

<input type="submit" name="submit" value="提交">


</form>
</body>
</html>