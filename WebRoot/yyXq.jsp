<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>预约单</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/styleuser.css" rel="stylesheet" />
<link href="css/ss.css" rel="stylesheet" />
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="css/normalize.css" type="text/css" />
<link rel="stylesheet" href="css/index.css" type="text/css" />
         <link rel="stylesheet" href="http://127.0.0.1:8080/${pageContext.request.contextPath}/css/page.css" media="all" />
         <link rel="stylesheet" href="http://127.0.0.1:8080/${pageContext.request.contextPath}/frame/layui/css/layui.css">
        <link rel="stylesheet" href="http://127.0.0.1:8080/${pageContext.request.contextPath}/css/style.css">
        <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
</head>

<body>
	<header>
	<div class="topHidden"></div>
	<div class="toolBase">
		<div class="BaseMark">
			<ul>
				<li class="first"><a href="Message.html">在线留言</a>
				</li>
				<li><a href="javascript:;"
					onClick="Kunyi.AddFavorite(window.location,document.title)">加入收藏</a>
				</li>
			</ul>
			<div style="float:right;">
				<a href="">登录</a>| <a href="">注册</a>
			</div>

		</div>
	</div>
	<div class="BaseMark logoBase">
		<a href="index.jsp"><img src="images/logo.jpg" class="load"
			width="227" height="47" />
		</a>
		<div class="searchBase">
			<div class="itemBase">
				<div class="divType" data-state="0">全站内容</div>
				<ul>
					<li data-id="1">全站内容</li>
					<li data-id="2">医生查找</li>
					<li data-id="3">新闻动态</li>
				</ul>
			</div>
			<form method="get" action="Search.html"
				onSubmit="return Kunyi.CheckSearchForm()">
				<input type="hidden" id="Type" name="Type" value="1" /> <input
					type="text" name="SearchWords" placeholder="请输入您要查找内容的关键字" value=""
					autocomplete="off" onFocus="Kunyi.cls(event)"
					onBlur="Kunyi.res(event)" maxlength="28" id="SearchWords" /> <input
					type="submit" value="搜索" class="boxsub animated" />
			</form>
		</div>
	</div>
	</header>

	<br>
	<br>

	<!-- ------------------------预约单--------------------- -->

	<div>
		<div class="left">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>欢迎用户</span>
		</div>
		<div class="grzx_right" align="center">
			<div class="grzx_right_top">
				<div class="grzx_right_t_p1">
					<p>我的预约</p>
				</div>
				<div class="grzx_right_t_p2">
					<p>
						已过期：<span>0</span>次
					</p>
					<p>
						爽约：<span>0</span>次
					</p>
					<p>
						停诊：<span>0</span>次
					</p>
				</div>
			</div>

			<div class="stay-list-left">
				<form action="#" id="submitForm">
					<div class="sea-div sea-div3">
						<table>
							<tr>
								<td><select class="sea-select" name="orderType">
										<option value="-1">全部</option>
										<option value="1">待就诊</option>
										<option value="2">已取消</option>
										<option value="3">已过期</option>
										<option value="64">爽约</option>
										<option value="3840">停诊</option>
								</select></td>
								<td><p>就诊时间：</p>
								</td>
								<td><input type="text">
								</td>
								<td>
									<p>到</p></td>
								<td><input type="text">
								</td>
								<td><input type="hidden" name="page" value="0">
								</td>
								<td><input type="submit" class="search-but" value="搜 索">
								</td>
							</tr>
						</table>
					</div>
				</form>
			</div>
			<br>
			<div class="grzx_right_content" id="row_01">
				<table>
					<thead>
						<tr>
							<th scope="col">预约单编号</th>
							<th scope="col">医生编号</th>
							<th scope="col">预约日期</th>
							<th scope="col">预约时间段</th>
							<th scope="col">温馨提示</th>
							<th scope="col">操作</th>
						</tr>
					</thead>
					<c:forEach var="order" items="${ors}">
						<tr>
							<td width="200">${order.id}</td>
							<td width="200">${order.docId}</td>
							<td width="200">${order.date}</td>
							<td width="200">${order.time}</td>
							<td width="200">${order.type}</td>
							<td width="200">
								<a class="layui-btn  layui-btn-small layui-btn-danger" href="javascript:;"
									onclick="deletes(this,${order.id});">取消预约</a></td>
						</tr>
					</c:forEach>
				</table>
				<a href="index_user.jsp">返回首页</a>
			</div>
			<input id="orderId" type="hidden" value="">
			<div id="yiyuan_list_rq">
				<p></p>
				<input name="p_currentlyPage" type="hidden" value="0"> <input
					name="p_totalPage" type="hidden" value="0">
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-1.7.js"></script>
	<script type="text/javascript"
		src="http://127.0.0.1:8080/${pageContext.request.contextPath}/frame/layui/layui.js"></script>
<script type="text/javascript">
   layui.use(['laypage','layer'], function() {
           var layer = layui.layer;
           var  $=layui.jquery;
           var laypage=layui.laypage;
			  	window.deletes=function(obj,id)
             {
                    
                 layer.confirm("确定取消该预约？", {icon:3} ,function(index)
                 {
                     $.ajax({ 
                                         type:"POST",
                                         url: "docpaiban_cancel.action?id="+id+"",
                                         async:false,
                                          contentType: "application/json; charset=utf-8",
                                         scriptCharset:'UTF-8',
                                        error : function(XMLHttpRequest, textStatus, errorThrown)
                                        {
                                             layer.alert("预约取消失败",{icon: 2});
                                         },
                                         success: function()
                                         {
                                            layer.closeAll();
                                            layer.msg(' 预约取消成功！' , {icon: 1});
                                            $(obj).parents("tr").remove();
                                         }
                                   });
                 });
             };		
		});     
</script> 
</body>
</html>
