<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="CSS/style.css">
</head>
<script language="javascript">
	function mycheck(){
		if(form1.username.value==""){
			alert("请输入用户名");
			form1.username.focus();
			return;
		}
		if(form1.PWD.value==""){
			alert("请输入密码");
			form1.PWD.focus();
			return;
		}
		if(form1.yanzheng.value==""){
			alert("请输入验证码！");
			form1.yanzheng.focus();
			return;
		}
		if(form1.yanzheng.value!= form1.verifycode2.value){
			alert("请输入正确的验证码");
			form1.yanzheng.focus();
			return;
		}
		form1.submit();
	}
</script>
<body>

	<form action="check.jsp" id="form1" name="form1" method="post">
		<table width="364" height="145" border="0" align="center"
			cellpadding="0" cellspacing="0">
			<tr>
				<td height="2" colspan="2"></td>
			</tr>
			<tr>
				<td height="2" colspan="2" valign="top"></td>
			</tr>
			<tr>
				<td width="54" height="22" valign="bottom"><span
					class="STYLE15">用户名:</span></td>
				<td width="310" valign="bottom"><input name="username"
					type="text" class="input2"
					onkeydown="if(event.keyCode==13){form1.PWD.focus();}"
					onmouseover="this.style.background='#F0DAF3';"
					onmouseout="this.style.background='#FFFFFF'">
				<!-- 设置用户名文本框并设置鼠标经过时的样式 --></td>
			</tr>
			<tr>
				<td height="23" colspan="2" valign="bottom"></td>
			</tr>
			<tr>
				<td height="34" colspan="2" valign="top" class="STYLE15">
					密&nbsp;&nbsp;码 
					<input type="password" name="PWD" class="input2"
					align="bottom"
					onkeydown="if(event.keyCode==13){form1.yanzheng.focus();}"
					onmouseover="this.style.background='#F0DAF3';"
					onmouseout="this.style.background='#FFFFFF'">
				<!--设置密码文本框  -->
				</td>
			</tr>
			<tr>
				<td height="21" colspan="2" valign="top" class="STYLE15"
					ondragstart="return false" onselectstart="return false">
					验证码: 
					<input name="yanzheng" type="text" class="input2"
					onkeydown="if(event.keyCode==13){form1.Submit.focus();}" size="8"
					align="bottom" onmouseover="this.style.background='#F0DAF3'"
					onmouseout="this.style.background='#FFFFFF'"> <!-- 设置验证码文本框，并设置鼠标经过样式 -->
					<%
						int itmethod1 = (int) ((((Math.random()) * 11)) - 1);
						int itmethod2 = (int) ((((Math.random()) * 11)) - 1);
						int itmethod3 = (int) ((((Math.random()) * 11)) - 1);
						int itmethod4 = (int) ((((Math.random()) * 11)) - 1);
						String intsum = itmethod1 + "" + itmethod2 + itmethod3 + itmethod4;
					%> 
					<input type="hidden" name="verifycode2" value="<%=intsum%>">
				<!-- 设置隐藏域用于进行验证比较 --> 
				<span class="STYLLE12"> 
				<font size="+3" color="#FF0000"> 
						<img alt="" src=num/<%=itmethod1%>.gif> 
						<img alt="" src=num/<%=itmethod2%>.gif> 
						<img alt="" src=num/<%=itmethod3%>.gif> 
						<img alt="" src=num/<%=itmethod4%>.gif>
					</font>
				</span>
				</td>
			</tr>
			<tr>
				<td colspan="2" valign="top">&nbsp;&nbsp;&nbsp; 
					<input name="Submit" type="button" class="submit1" value="登录"
					onclick="mycheck()">&nbsp; 
					<input name="Submit2" type="reset" class="submit1" value="重置">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>