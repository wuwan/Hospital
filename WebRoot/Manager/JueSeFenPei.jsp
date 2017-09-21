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
<title>用户--角色分配</title>
<link rel="stylesheet"
	href="http://127.0.0.1:8080/${pageContext.request.contextPath}/frame/layui/css/layui.css">
<link rel="stylesheet"
	href="http://127.0.0.1:8080/${pageContext.request.contextPath}/css/style.css">
<link rel="icon"
	href="http://127.0.0.1:8080/${pageContext.request.contextPath}/image/code.png">
</head>
<body>
	<%
		String reslut = (String) request.getAttribute("change");
		System.out.print(reslut);
	%>
	<input type="hidden" value=<%=reslut%> id="result">
	<div class="my-btn-box">
		<table id="dateTable" class="layui-table">
			<thead>
				<tr>
					<th>用户编号</th>
					<th>用 户 名</th>
					<th>用户性别</th>
					<th>用户年龄</th>
					<th>对应角色</th>
					<th>角色分配</th>
				</tr>
				<s:iterator value="alluserList">
					<tr>
						<td><s:property value="id" />
						</td>
						<td><s:property value="userName" />
						</td>
						<td><s:property value="userSex" />
						</td>
						<td><s:property value="userAge" />
						</td>
						<td><s:iterator value="roleUsers">
								<a href="javascript:;" style="color:blue;"
									onclick="quanxian(<s:property value="role.roleName"/>);"><s:property
										value="role.roleName" />
								</a>
	    						&nbsp;&nbsp;
	    			</s:iterator></td>
						<td><a
							href="Doctor/Findrole.action?id=<s:property value="id" />"
							class="layui-btn layui-btn-small layui-btn-normal">分配角色</a>
						</td>
					</tr>
				</s:iterator>
				<tr></tr>
			</thead>
			<tbody></tbody>
		</table>
	</div>
	<div class="beg-table-paged"></div>
	<script type="text/javascript"
		src="http://127.0.0.1:8080/${pageContext.request.contextPath}/frame/layui/layui.js"></script>
	<script type="text/javascript">
  
   layui.use('layer', function() {
          	 var $ = layui.jquery,
         	 layer = layui.layer;
         	 var result=document.getElementById("result").value;
         	 if(result!=null&&result!="null")
         	 {
         	 	layer.msg(result);
         	 };
			 });
  </script>
</body>
</html>
