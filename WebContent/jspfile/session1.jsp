<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>session跳转页面</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String cName=request.getParameter("name");
	String name="";
	if(cName!=null){
		 name=URLDecoder.decode(cName,"UTF-8");
	}
	
	session.setAttribute("name", name);
%>
	<div align="center">
		<form action="" id="form1" name="form1" method="post">
			<table width="28%" border="0">
				<tr>
					<td>您的名字是:</td>
					<td><%=name %></td>
				</tr>
				<tr>
					<td>您最喜欢去的地方是:</td>
					<td><label><input type="text" name="address"></label></td>
				</tr>
				<tr >
					<td colspan="2">
						<label><div algin="center">
							<input type="submit"  name="sunmit" value="提交">
						</div></label>
					</td>
				</tr>
			</table>		
		</form>	
	</div>
</body>
</html>