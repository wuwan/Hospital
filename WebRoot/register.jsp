<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- css files -->
    <link href="css/styles.css" rel='stylesheet' type='text/css' media="all" />
    <!-- /css files -->
  </head>
  
<body>
<%String reslut=(String)session.getAttribute("RegisterReslut");%>
<input type="hidden" value=<%=reslut %> id="reslut">
<br>
<br>
<div class="log">
<center>
  <div class="content2">
		<h2>注册</h2>
		<form action="AddUser.action?mark=1" method="post">
			<input type="text" name="user.userName" placeholder="用户名" title="用户名不能为空"  required  autocomplete="off" >
			<input type="tel" name="user.userPhone"   placeholder="手机"  title="手机不能为空" required autocomplete="off">
			<input type="tel" max="150" min="1" name="user.userAge"   placeholder="年龄"  title="请输入年龄" required autocomplete="off">
			<input type="text" name="user.userSex"  list="url_lists"      placeholder="性别" title="性别不能为空" autocomplete="off" >
			<datalist id="url_lists"><option value="男">男</option><option value="女">女</datalist>
			<input type="password" name="user.passWord" placeholder="密码" title="密码不能为空"  required autocomplete="off">
			<input type="password" name="repsw" placeholder="确认密码" title="不能为空" required autocomplete="off">
			<input type="submit" class="register" value="注册">
		</form>
		<a href="login.jsp">已有账号？返回登录</a>
	</div>
	</center>
	<div class="clear"></div>
</div>
 <script type="text/javascript" src="frame/layui/layui.js"></script>
<script type="text/javascript">
    layui.use('layer', function() {
                     var $ = layui.jquery,
                        layer = layui.layer;
                    var marks=document.getElementById("reslut").value;
                    if(marks!="null")
                    { 
                        layer.msg(marks,{icon: 2}); 
                    }
          });
    </script>
  </body>
</html>
