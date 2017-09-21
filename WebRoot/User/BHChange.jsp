<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!user.docTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>医生个人信息</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<link rel="stylesheet"
	href="http://127.0.0.1:8080/${pageContext.request.contextPath}/frame/layui/css/layui.css">
<link rel="stylesheet"
	href="http://127.0.0.1:8080/${pageContext.request.contextPath}/css/style.css">
<link rel="icon"
	href="http://127.0.0.1:8080/${pageContext.request.contextPath}/image/code.png">
</head>
<body>
	<div align="center">
		<form action="ChangeUser.action?ids=<s:property value="ids"/>"
			method="post">
			<table width="80%" border="1" height="500" class="table">
				<tr>
					<td width="20%" height="40">姓名</td>
					<td width="80%"><input type="text"
						value='<s:property value="user.userName"  />' name="user.userName"
						class="layui-input"></td>
				</tr>
				<tr>
					<td height="40">性别</td>
					<td><select name="user.userSex" class="layui-input">
					<s:if  test="user.userSex== 男 " >
							<option value="男">男</option>
							<option value="女">女</option>
					</s:if>
					<s:else>
							<option value="女" >女</option>
							<option value="男" >男</option>
					</s:else>
					</select>
					</td>
				</tr>
				<tr>
					<td height="40">年龄</td>
					<td><input type="number"
						value='<s:property  value="user.userAge" />' name="user.userAge"
						class="layui-input" max="65" min="18"></td>
				</tr>
				<tr>
					<td height="40">手机号</td>
					<td><input type="tel"
						value='<s:property  value="user.userPhone" />'
						name="user.userPhone" class="layui-input"></td>
				</tr>
				<tr>
					<td height="40" colspan="2">
						<div class="layui-form-item">
							<div align="left">
								<button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
								&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
								<button type="reset" class="layui-btn layui-btn-primary">恢复</button>
							</div>
						</div>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
