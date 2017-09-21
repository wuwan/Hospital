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
<title></title>
<link rel="stylesheet"
	href="http://127.0.0.1:8080/${pageContext.request.contextPath}/frame/layui/css/layui.css">
<link rel="stylesheet"
	href="http://127.0.0.1:8080/${pageContext.request.contextPath}/css/style.css">
<link rel="icon"
	href="http://127.0.0.1:8080/${pageContext.request.contextPath}/image/code.png">
</head>
<body>
	<%String reslut=(String)request.getAttribute("change");%>
	<input type="hidden" value=<%=reslut %> id="reslut">
	<div class="my-btn-box">
		<table id="dateTable" class="layui-table">
			<thead>
				<tr>
					<th>角色编号</th>
					<th>角色名称</th>
					<th>角色描述</th>
					<th>对应权限</th>
					<th>权限分配</th>
				</tr>
				<s:iterator value="roleList">
					<tr>
						<td><s:property value="roleId" />
						</td>
						<td><s:property value="roleName" />
						</td>
						<td><s:property value="roleMiaoShu" />
						</td>
						<td><s:iterator value="privileges">
								<a href="javascript:;" style="color:red;"
									onclick="quanxian(<s:property value="name"/>);">
									<s:property value="name" />
								</a>
	    						&nbsp;&nbsp;
	    			</s:iterator></td>
						<td><a href="Doctor/changeqx.action?id=<s:property value="roleId" />"
							class="layui-btn layui-btn-small layui-btn-normal">分配权限</a>
						</td>
					</tr>
				</s:iterator>
				<tr></tr>
			</thead>
			<tbody></tbody>
		</table>
	</div>
	<script type="text/javascript"
		src="http://127.0.0.1:8080/${pageContext.request.contextPath}/frame/layui/layui.js"></script>
	<script type="text/javascript">
		layui.use('form', function()
        {
	        var form = layui.form();
	        var layer=layui.layer,$=layui.jquery;
	        var reslut=document.getElementById("reslut").value;
	        if(reslut!=null&&reslut!="null")
	        {
	        	layer.msg(reslut);
	        };
						});
	</script>
</body>
</html>
