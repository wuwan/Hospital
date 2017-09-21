<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
   <head>
    <base href="<%=basePath%>">
    <title></title>
 <link rel="stylesheet" href="../plugins/layui/css/layui.css" media="all">
  </head>
   <body>
   <script src="/plugins/layui/layui.js"></script>

<script>
layui.use('layim', function(layim){
  //先来个客服模式压压精
  layim.config({
    brief: false //是否简约模式（如果true则不显示主面板）
  }).chat({
    name: '客服姐姐'
    ,type: 'friend'
    ,avatar: 'http://tp1.sinaimg.cn/5619439268/180/40030060651/1'
    ,id: -2
  });
});
</script>
   </body>
</html>
