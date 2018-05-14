<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ page import="java.util.Date" %>
    <%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>使用文件包含include指令</title>
</head>
<body style="margin: 0px;">
//重定向页面
<%
//对应的获取参数是request.getAttribute(arg0)
request.setAttribute("id", "123456");

%>

<jsp:forward page="login.jsp">
<jsp:param value="yizhengsheng" name="name" /> 

</jsp:forward>





	<%@ include file="top.jsp"%>
	<%!
	/*声明全局变量和全局方法,生命周期为整个jsp页面	
	*该注释源码中不可见
	*/
	/**
	*该注释源码中不可见
	*/
		int count=0;
		int count(){
			return count++;
		}
	%>
		
	
	<%
				String table="";
				for(int i=1;i<10;i++){
					for(int j=1;j<10;j++){
						if(j<=i){
							int temp=i*j;
							table+=""+i+"*"+j+"="+temp+"&nbsp;&nbsp;&nbsp;&nbsp;";
						}
						
					}
					table+="<br/>";
				}
		%>
	<table width="2000" height="600" cellspacing="0" cellpadding="0">
		<tr>
			<td>&nbsp;<%=count() %></td>
			<%--這是源碼中看不到的注釋  --%>
	
			<!-- 该注释源码中可见 -->
			
			<!--动态注释<%=new Date()%>  -->
			<td>
				<%
				//该注释源码中也是不可见的
					String manager = "mr";
				%> 管理员:<%=manager%><br /> <%="管理员:" + manager%><br /> <%=5 + 6%><br />
				<%
					String url = "test1.png";
				%> <img alt="" src="../images/<%=url%>"></img>

			</td>
			<td>		
				<%=table %>
			</td>
		</tr>
		
	</table>
</body>
</html>






