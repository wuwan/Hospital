<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>首页 ·医院预约平台后台管理 </title>
    <link rel="stylesheet" href="http://127.0.0.1:8080/${pageContext.request.contextPath}/frame/layui/css/layui.css">
    <link rel="stylesheet" href="http://127.0.0.1:8080/${pageContext.request.contextPath}/css/style.css">
    <link rel="icon" href="http://127.0.0.1:8080/${pageContext.request.contextPath}/image/code.png">
</head>
<body>

<!-- admin -->
<div class="layui-layout layui-layout-admin"> <!-- 添加skin-1类可手动修改主题为纯白，添加skin-2类可手动修改主题为蓝白 -->
    <!-- header -->
    <div class="layui-header my-header">
        <ul class="layui-nav" lay-filter="side-left"><li class="layui-layout layui-layout-admin">&nbsp; &nbsp; <dl>
                                      今天是  <script>
                                            var weekDayLabels = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
                                            var now = new Date();
                                            var year = now.getFullYear();
                                            var month = now.getMonth() + 1;
                                            var day = now.getDate()
                                            var currentime = year + "年" + month + "月" + day + "日 " + weekDayLabels[now.getDay()]
                                            document.write(currentime);
                 </script>
        </dl></li></ul>
          <ul class="layui-nav my-header-user-nav" lay-filter="side-right">
              <li class="layui-nav-item">
                  <a class="name" href="javascript:;"><i class="layui-icon">&#xe629;</i>主题</a>
                  <dl class="layui-nav-child">
                    <dd data-skin="0"><a href="javascript:;">默认</a></dd>
                    <dd data-skin="1"><a href="javascript:;">纯白</a></dd>
                    <dd data-skin="2"><a href="javascript:;">蓝白</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a class="name" href="javascript:;"><img src="image/code.png" alt="logo"><%=(String)session.getAttribute("loginuser") %></a>
                <dl class="layui-nav-child">
              		  <dd><a href="javascript:;" id="MyMessage" ><i class="layui-icon">&#xe621;</i>个人信息</a></dd>
              	<dd>
					<a href="javascript:;" id="logout"><i class="layui-icon" aria-hidden="true"></i> 注销</a>
			    </dd>
                </dl>
            </li>
        </ul>
    </div>
    <!-- side -->
    <div class="layui-side my-side">
        <div class="layui-side-scroll">
            <ul class="layui-nav layui-nav-tree" lay-filter="side">
                <li class="layui-nav-item layui-nav-itemed"><!-- 去除 layui-nav-itemed 即可关闭展开 -->
                    <a href="javascript:;"><i class="layui-icon">&#xe620;</i>菜单栏</a>
                    <dl class="layui-nav-child">
                    <s:iterator value="set">
                        <dd class="layui-nav-item"><a href="javascript:;" href-url='<s:property value="url"/>'><i class="layui-icon">&#xe621;</i><s:property value="name"/></a></dd>
                   </s:iterator>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
    
    <!-- body -->
    <div class="layui-body my-body">
        <div class="layui-tab layui-tab-card my-tab" lay-filter="card">
            <ul class="layui-tab-title">
                <li class="layui-this" lay-id="0"><span>系统配置</span></li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <iplugins id="iplugins" src="demo/welcome.html" pluginsborder="1"></iplugins>
                </div>
            </div>
        </div>
    </div>
    <!-- footer -->
    <div class="layui-footer my-footer">
        <p>&nbsp;&nbsp;&nbsp;&nbsp;<a href="" target="_blank">预约平台后台管理系统v1.1.0</a></p>
        <p>2017 ? copyright 石家庄铁道大学</p>
    </div>
</div>
<script type="text/javascript" src="frame/layui/layui.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script>
				layui.use('layer', function() {
					var $ = layui.jquery,
						layer = layui.layer;
					$('#logout').on('click', function()
					 {
						layer.open({
						  title:'提示',
						  content: '真的要退出系统么？'
						  ,btn: ['是的', '我再想想']
						  ,btn1: function(index, layero){
						    window.location="login.jsp";
						  }
						  ,btn2: function(index, layero){
							return;
						  }
							});
						});
						
						$('#MyMessage').on('click', function()
                     {
                        layer.open({
                             title: '个人信息',
                             maxmin: true,
                             type:2,
                            content: 'UserMessage.action',
                            area: ['650px', '600px']
                            });
                        });
				});
			</script>
		
  </body>
</html>
