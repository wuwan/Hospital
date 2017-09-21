<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- css files -->
    <link href="css/styles.css" rel='stylesheet' type='text/css' media="all" />
    <!-- /css files -->
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  </head>
  
<body>
<%String reslut=(String)session.getAttribute("LoginReslut"); 
%>
<input type="hidden" value=<%=reslut %> id="reslut">
<h1>医院预约平台</h1>
<div class="log">
<center>
	<div class="content1">
		<h2>登录</h2>
		<form action="Login.action" method="post">
				<input type="text" name="user.userName" placeholder="用户名" required>
				<input type="password" name="user.passWord" placeholder="请输入密码" required>
			<div class="button-row">
				<input type="submit" class="sign-in"  value="登录">
				<a href="register.jsp" class="reset" >用户注册</a>
				<div class="clear">  </div>
			</div>
		</form>
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
                        layer.msg(marks,{icon: 4}); 
                    }
          });
    </script>
</body>
</html>
