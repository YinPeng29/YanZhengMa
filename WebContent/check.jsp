<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name=request.getParameter("username");
	String password = request.getParameter("PWD");
	String message;
	if(name.equals("root")&&(password.equals("root"))){
		message = "可以登录系统";
	}
	
	else{
		message = "用户名或密码错误";
	}
%>
<script language="javascript">
	alert("<%=message%>")
	window.location.href='index.jsp';
</script>
</body>
</html>