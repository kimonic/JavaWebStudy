<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>通过cookies读取并保存用户信息</title>
</head>
<body>
<%

		response.setHeader("Cache-Control", "no-store");
		response.setDateHeader("Expires", 0);
		//response.setHeader("refresh", "5");
		Cookie[] cookies=request.getCookies();

		String user="";
		String date="";
		
		
		if(cookies!=null){
			for(int i=0;i<cookies.length;i++){				
				if(cookies[i].getName().equals("mrCookie")){
					user=URLDecoder.decode(cookies[i].getValue().split("#")[0],"UTF-8");
					
					date=URLDecoder.decode(cookies[i].getValue().split("#")[1],"UTF-8");
				}
			}
			
		}
		if("".equals(user)&&"".equals(date)){		
		

%>
游客你好,欢迎初次光临!<br>
<form action="cookiestest1.jsp" id="name" name="name" method="post">
请输入姓名:<input type="text" name="user" value="">
<input type="submit" value="确定" >
<%
}else{
	%>
	欢迎<b><%=user %></b>再次光临<br>
	您注册的时间是:<%=date %><br>	
	<%} %>

		
		

</form>

</body>
</html>