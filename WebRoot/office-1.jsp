<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="renderer" content="webkit" /><meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>呼吸内科 - 科室导航 - 呼吸内科</title>
<meta name="Keywords" content="医院标题,人民医院,省医,山西人民医院,咨询, 留言, 山西医院, 寻医问药" />
<meta name="Description" content="医院标题位于山西省太原市，建院于1906年，是一家三级甲等综合医院。医院秉承“患者至上，员工为本”的服务理念，弘扬“仁爱、博学、严谨、卓越”的医院精神，坚持“人民医院为人民”的办院宗旨，造就了一支业务精湛、医德高尚、纪律严明、作风过硬的职工队伍，树立了社会满意、患者信赖的良好形象。先后获得全国精神文明建设先进单位、全国文明单位、全国卫生系统先进集体、全国医院文化建设先进单位等多项荣誉称号。" />
<meta name="robots" content="All" />

<noscript><meta http-equiv="refresh" content="0; url=/noscript.htm" /></noscript>
<!--[if lt IE 7]><meta http-equiv="refresh" content="0; url=/YouLose.htm" /><![endif]-->
 
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="css/normalize.css" type="text/css" />
<link rel="stylesheet" href="css/secondary.css" type="text/css" />
<link rel="stylesheet" href="css/indexuser.css" type="text/css" />
<!--[if lt IE 9]><script language="javascript" type="text/javascript" src="js/Kunyi.Respond.min.js" ></script><![endif]-->

<script language="javascript" type="text/javascript" src="js/KunyiHTML5.min.js"></script>
<script language="javascript" type="text/javascript" src="js/Kunyilibrary.js"></script>
</head>
<body>
<script language="javascript" type="text/javascript" src="js/Kunyi.Init.js"></script><header><div class="topHidden"></div>
<div class="toolBase"><div class="BaseMark"><ul><li class="first"><a href="SiteMap.html">在线留言</a></li><li><a href="javascript:;" onclick="Kunyi.AddFavorite(window.location,document.title)">加入收藏</a></li></ul>
 <div class="language">选择语言</div><div class="langBtn animated"><i class="flag"></i>中文<i class="downBtn"></i>
   <a href="javasript:;"><img src="images/ico_003.png" class="animated" width="13" height="13" />English</a>
 </div></div></div>
<div class="BaseMark logoBase"><a href="Index.html"><img src="images/logo.jpg" class="load" width="227" height="47" /></a>
<div class="searchBase"><div class="itemBase"><div class="divType" data-state="0">全站内容</div><ul><li data-id="1">全站内容</li><li data-id="2">医生查找</li><li data-id="3">新闻动态</li></ul> </div>
<form method="get" action="Search.html" onsubmit="return Kunyi.CheckSearchForm()">
<input type="hidden" id="Type" name="Type" value="1" />
<input type="text" name="SearchWords" placeholder="请输入您要查找内容的关键字"  value="" autocomplete="off" onfocus="Kunyi.cls(event)" onblur="Kunyi.res(event)"  maxlength="28" id="SearchWords" />
<input type="submit" value="搜索" class="boxsub animated" />
</form></div></div></header>
<nav><div class="navBase">
    <div class="nav Snav">
        
<ul>
   
    <li class="PMenu"><a href="index_user.jsp" id="Nav_AMenu8" class="PAMenu">首页</a></li>
    <li class="PMenu"><a href="jiuzhen.jsp" id="Nav_AMenu8" class="PAMenu">就诊指南</a></li>
    <li class="PMenu"><a href="jianjie.jsp" id="Nav_AMenu8" class="PAMenu">医院概况</a></li>
    <li class="PMenu"><a href="kexue.jsp" id="Nav_AMenu8" class="PAMenu">科学研究</a></li>
    <li class="PMenu"><a href="#" id="Nav_AMenu8" class="PAMenu">医学教育</a></li>
    <li class="PMenu"><a href="#" id="Nav_AMenu8" class="PAMenu">健康管理</a></li>
    <li class="PMenu"><a href="new.jsp" id="Nav_AMenu8" class="PAMenu">新闻动态</a></li>
    <li class="PMenu"><a href="#" id="Nav_AMenu8" class="PAMenu">护理园地</a></li>
    <li class="PMenu"><a href="#" id="Nav_AMenu7" class="PAMenu" title="党群工作">党群工作</a></li>
    <li class="PMenu"><a href="#" id="Nav_AMenu8" class="PAMenu">云医院</a></li>
</ul>

    </div>
    </div>
</nav>

<section class="BaseMark" >
	<div class="bread">您所在的位置<span><a href="index.html">首页</a>><a href="ArticleList-54.html">就诊指南</a><a href="DepartmentNav.html">科室导航</a> <a href="office-1.jsp">科室</a></span></div>
   
</section>
     <div class="clear"></div>

<div class="clear"></div>
<section class="doctorsBase BaseMark">
<!-- 快速查找 -->
<div class="toolsBase">
<div class="title"><em>专家介绍</em>  <span>Expert Introduction</span></div>
<div class="tools">
 <form action="doctorQuery.action" method="post">
		<table align="center">
			<tr>
				<td style="vertical-align: middle;">医生名称：
					<input type="text" style="width: 200px;height: 30px;font-size: 16px" name="queryText"  value="${searchText }"/>
					<input type="submit" value="查询" style="width: 100px;height: 30px;font-size: 16px"/>
				</td>
			</tr>
		</table>
	</form>
</div>
<div class="clear"></div>
</div>

<div class="contents">
<!--  -->
	
<center>	
	<table id="exampletable">
	<thead>
		<tr>
		    <th>医生编号</th>
		    <th>医生名称</th>
			<th>医生性别</th>
			<th>医生年龄</th>
			<th>医生联系方式</th>
			<th>操作</th>
		</tr>
	</thead>
		
		<c:forEach var="list" items="${users }">
			<tr align="center"  height="24px">
			    <td width="100">${list.id}</td>
				<td width="100">${list.userName}</td>
				<td width="100">${list.userSex}</td>
				<td width="100">${list.userAge}</td>
				<td width="100">${list.userPhone}</td>
				<td width="120">
					<a href="docpaiban_doQuery.action?param=0&num=${list.id}&name=${list.userName}">预约</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	</center>

<!--  -->

<div class="hackR"></div><div class="hackL"></div>
</div>
    <div class="clear"></div>
    <div class="clear"></div>
</section>
<div class="BottomHidden"></div>
<div id="QRBase">
<div class="BaseMark">
    <div class="QRBase">
    <div class="QRList"><ul><li><div><img src="pic/pic_QR01.jpg" width="75" height="75"/><label>医院标题APP</label></div></li>
      <li><div><img src="pic/pic_QR02.jpg" width="75" height="75"/><label>健康之路APP</label></div></li>
      <li><div><img src="pic/pic_QR03.jpg" width="75" height="75"/><label>挂号网APP</label></div></li>
      <li><div><img src="pic/pic_QR04.jpg" width="75" height="75"/><label>山西省预约挂号平台Androi客户端</label></div></li>
      <li><div><img src="pic/pic_QR05.jpg" width="75" height="75"/><label>山西省预约挂号平台IOS客户端</label></div></li>
      <li><div><img src="pic/pic_QR06.jpg" width="75" height="75"/><label>山西预约挂号平台微信号</label></div></li>
      <li><div><img src="pic/pic_QR07.jpg" width="75" height="75"/><label>健康之路微信公众号</label></div></li>
      <li><div><img src="pic/pic_QR08.jpg" width="75" height="75"/><label>名医网微信公众号</label></div></li>
      <li><div><img src="pic/pic_QR09.jpg" width="75" height="75"/><label>挂号网微信公众号</label></div></li></ul><div class="clear"></div>
    </div><button class="QRClose animated">关闭</button>
    <div class="BottomHidden"></div></div>
    </div>
</div>
<footer><img src="images/ico_036.png" width="35" class="load" height="18" id="QRMark" />
<div class="menusBase">
<div class="BaseMark">
 <dl><dt><img src="images/ico_006.jpg" class="load" width="36" height="34" /><em>门诊服务</em><span>outpatient services</span></dt>
 <dd><a href="NewsDetail-449.html" title="预约流程" target="_blank">预约流程</a></dd><dd><a href="NewsDetail-448.html" title="门诊须知" target="_blank">门诊须知</a></dd><dd><a href="Article-57.html" title="院内导航" target="_blank">院内导航</a></dd></dl>
 <dl><dt><img src="images/ico_008.jpg" class="load" width="36" height="34" /><em>住院服务</em><span>hospitalized services</span></dt>
 <dd><a href="Article-56.html" title="住院须知" target="_blank">住院须知</a></dd><dd><a href="NewsDetail-461.html" title="检查须知" target="_blank">检查须知</a></dd><dd><a href="Article-56.html" title="住院清单" target="_blank">住院清单</a></dd></dl>
 <dl><dt><img src="images/ico_009.jpg" class="load" width="36" height="34" /><em>体检服务</em><span>examination services</span></dt>
 <dd><a href="NewsDetail-461.html" title="体检须知" target="_blank">体检须知</a></dd><dd><a href="NewsDetail-7684.html" title="体检套餐查询" target="_blank">体检套餐查询</a></dd><dd><a href="CheckupsInfo.html" title="体检报告查询" target="_blank">体检报告查询</a></dd></dl>
 <div class="QRBtn"><img src="images/tempQR.jpg" class="load" width="85" height="85" /> <span>扫描关注官方微信号</span> <a href="javascript:void(0)" id="BtnQRMore">更多二维码</a></div>
 
 <div class="newsPaper">
 <div class="npTitle"><img src="images/ico_010.jpg" class="load" width="28" height="39" /><em>省医院报</em><span>内部资料 仅供阅读</span></div>
     <div class="DChange"><select class="DYear"  id="ddlYears" ><option value="0">年份</option>
<option value="2017">2017年</option>
<option value="2016">2016年</option>
<option value="2015">2015年</option>
<option value="2014">2014年</option></select>
      <select class="DTime"  id="ddlTimes">
        <option value="0">期数</option>
      </select></div>
      <input class="newsPaperBtn animated" name="btnGoNewsPaper" id="btnGoNewsPaper" value="阅览"  type="button" />
      <div class="clear"></div>
</div><div class="clear"></div>
 </div>
</div>

</footer><div id="Footer_CodeDiv"><script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F4a1d36386e8734a5fd29acec9114818d' type='text/javascript'%3E%3C/script%3E"));
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fafd2ae44e23648da4e8a81a7b1349be4' type='text/javascript'%3E%3C/script%3E"));
</script></div><script language="javascript" type="text/javascript" src="js/Kunyi.Common.js"></script><script language="javascript" type="text/javascript" src="js/Kunyi.Secondary.js"></script>
</body>
</html>