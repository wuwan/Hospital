<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>分配角色</title>
<link rel="stylesheet"
	href="http://127.0.0.1:8080/${pageContext.request.contextPath}/frame/layui/css/layui.css">
<link rel="stylesheet"
	href="http://127.0.0.1:8080/${pageContext.request.contextPath}/css/style.css">
<link rel="icon"
	href="http://127.0.0.1:8080/${pageContext.request.contextPath}/image/code.png">
</head>
<body>
	<form class="layui-form" action="Doctor/changerole.action" method="post">
	<br><br>
	<div class="layui-form-item" align="center">
	<label class="layui-form-label">已有角色</label>
		<s:iterator value="roleList" >
					<input type="checkbox"  
					title="<s:property value="role.roleName"/>"
					value='<s:property value="roleId"/>' checked="checked" >
		</s:iterator>
	</div>
	<br><br>
		<div class="layui-form-item" align="center">
	    <label class="layui-form-label">所有角色</label>
			<s:iterator value="alroleList" >
					<input type="checkbox" name="usersrole"
					title="<s:property value="roleName"/>"
					value='<s:property value="roleId"/>'>
			</s:iterator>
		</div>
		<input type="hidden" value='<s:property value="ids"/>'name="id">
		<br><br><br><br>
		<div class="layui-form-item" align="center">
				<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
		</div>
	</form>
	<script type="text/javascript"
		src="http://127.0.0.1:8080/${pageContext.request.contextPath}/frame/layui/layui.js"></script>
	<script type="text/javascript">
		layui.use('form', function()
        {
	        var form = layui.form();
	        var layer=layui.layer,$=layui.jquery;
						});
	</script>
</body>
</html>
