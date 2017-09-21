<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jiuzhen.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<title>My JSP 'jiuzhen.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<noscript><meta http-equiv="refresh" content="0; url=/noscript.htm" /></noscript>
	<link rel="icon" href="favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="css/normalize.css" type="text/css" />
    <link rel="stylesheet" href="css/secondary.css" type="text/css" />
    <!--[if lt IE 9]><script language="javascript" type="text/javascript" src="js/Kunyi.Respond.min.js" ></script><![endif]-->
    <script language="javascript" type="text/javascript" src="js/KunyiHTML5.min.js"></script>
    <script language="javascript" type="text/javascript" src="js/Kunyilibrary.js"></script>

  </head>
  
  <body>
   <script language="javascript" type="text/javascript" src="js/Kunyi.Init.js"></script><header>
   <div class="topHidden"></div>
   <div class="toolBase">
   <div class="BaseMark">
      <ul>
             <li class="first"><a href="Message.html">在线留言</a></li>
             <li><a href="javascript:;" onClick="Kunyi.AddFavorite(window.location,document.title)">加入收藏</a>
             </li>
      </ul>
   <div style="float:right;">
         <a href="">登录</a>|
         <a href="">注册</a>
   </div>
  
 </div>
 </div>
 <div class="BaseMark logoBase"><a href="Index.jsp"><img src="images/logo.jpg" class="load" width="227" height="47" /></a>
<div class="searchBase"><div class="itemBase"><div class="divType" data-state="0">全站内容</div><ul><li data-id="1">全站内容</li><li data-id="2">医生查找</li><li data-id="3">新闻动态</li></ul> </div>
<form method="get" action="Search.html" onSubmit="return Kunyi.CheckSearchForm()">
<input type="hidden" id="Type" name="Type" value="1" />
<input type="text" name="SearchWords" placeholder="请输入您要查找内容的关键字"  value="" autocomplete="off" onFocus="Kunyi.cls(event)" onBlur="Kunyi.res(event)"  maxlength="28" id="SearchWords" />
<input type="submit" value="搜索" class="boxsub animated" />
</form></div></div></header><nav>
<div class="navBase">
    <div class="quickMenuBase" data-type="0">
    <div class="quickMenu03"><img src="images/ico_013.png" width="16" height="16" /> <em>快捷菜单</em></div>
    <div class="quickMenus"><!-- -------------侧边栏-------------------- -->
 <ul class="firstUl">
 <!-- -------------就医指南-------------------- -->
<li class="first"><a href="jiuzhen.jsp" class="firstA"><em>就诊指南</em><i class="style01"></i><span></span></a>
<div class="QMSub QMSubMenus">
<ul>
    <li>
        <a href="jiuzhen.html" title="就诊流程">就诊流程<span>进入</span></a>
    </li>
    <li>
        <a href="keshi.html" title="科室导航">科室导航<span>进入</span></a>
    </li>
    <li>
        <a href="chuzhen.html" title="出诊安排">出诊安排<span>进入</span></a>
    </li>
    <li>
        <a href="ArticleList-56.html" title="住院指南">住院指南<span>进入</span></a>
    </li>
    <li>
        <a href="ArticleList-10.html" title="医保服务">医保服务<span>进入</span></a>
    </li>
</ul>
<ul>
     <li>
        <a href="Telephone.html" title="电话查询">电话查询<span>进入</span></a>
     </li>
     <li>
        <a href="Article-65.html" title="信息查询">信息查询<span>进入</span></a>
      </li>
</ul>
<div class="clear"></div>
</div>
</li>
<!-- -----------------------预约挂号------------------------------ -->

<li class="first"><a href="NewsDetail-449.html" target="_blank" class="firstA"><em>预约挂号</em><i class="style02"></i><span></span></a><div class="QMSub QMSubMenus">
<ul>
    <li><a href="NewsDetail-449.html" >电话预约<span>进入</span></a></li>
    <li><a href="NewsDetail-449.html" >网站预约<span>进入</span></a></li>
    <li><a href="NewsDetail-449.html" >手机APP预约<span>进入</span></a></li>
    <li><a href="NewsDetail-449.html">现场预约<span>进入</span></a></li>
</ul>
<div class="clear"></div>
</div>
</li>

<!-- ---------------------------出诊安排------------------------------------ -->
<li class="first"><a href="chuzhen.html" class="firstA"><em>出诊安排</em><i class="style03"></i><span></span></a>
<div class="QMSub QMSubMenus">
<ul>
     <li><a href="DutyTime-1.html" title="内科临床医学部" >内科临床医学部<span>进入</span></a></li>
     <li><a href="DutyTime-2.html" title="外科临床医学部" >外科临床医学部<span>进入</span></a></li>
     <li><a href="DutyTime-10.html" title="妇儿临床医学部" >妇儿临床医学部<span>进入</span></a></li>
     <li><a href="DutyTime-13.html" title="心血管病医院" >心血管病医院<span>进入</span></a></li>
     <li><a href="DutyTime-6.html" title="综合临床医学部" >综合临床医学部<span>进入</span></a></li>
     <li><a href="DutyTime-4.html" title="门诊部" >门诊部<span>进入</span></a></li>
     </ul>
<ul>
     <li><a href="DutyTime-7.html" title="山西省立眼科医院" >山西省立眼科医院<span>进入</span></a></li>
     <li><a href="NoticeList-4.html">停诊信息<span>进入</span></a></li>
</ul>
<div class="clear"></div>
</div>
</li>

<!-- ---------------------------专家介绍------------------------------------- -->
<li class="first"><a href="keshi.html" class="firstA"><em>专家介绍</em><i class="style04"></i><span></span></a>
<div class="QMSub QMSubList">
<div class="IndexWords">
<h5>按医生姓名首字母查找</h5><ul><li>A</li><li>B</li><li>C</li><li>D</li><li>E</li><li>F</li><li>G</li><li>H</li><li>I</li><li>J</li><li>K</li><li>L</li><li>M</li><li>N</li><li>O</li><li>P</li><li>Q</li><li>R</li><li>S</li><li>T</li><li>U</li><li>V</li><li>W</li><li>X</li><li>Y</li><li>Z</li></ul>
</div>
<div class="clear"></div>
<div class="DList"></div>
</div>
</li>

<!-- ------------------------------专科介绍----------------------------------------- -->
<li class="first"><a href="keshi.html" class="firstA"><em>专科介绍</em><i class="style05"></i><span></span></a><div id="QMOffices" class="QMSub QMSubList"></div></li>

<!-- ------------------------------新闻动态----------------------------------------- -->

<li class="first"><a href="Office-9.html" class="firstA"><em>新闻动态</em><i class="style06"></i><span></span></a>
</li>
<!-- -------------------------------在线咨询------------------------------------------ -->
<li class="first last"><a href="ArticleList-10.html" class="firstA"><em>在线咨询</em><i class="style07"></i><span></span></a></li>
</ul>
</div>
</div>
<!-- -------------------侧边栏结束---------------------------- -->
<!-- ------------------------------标题栏 -->
<div class="nav Inav">
        <ul><li class="PMenu"><a href="index_user.jsp" class="PAMenu">首页</a></li>
        <li class="PMenu current"><img src="images/ico_014.png" class="animated" width="15" height="8" /><a href="jiuzhen.jsp" id="Nav_AMenu0" class="PAMenu" title="就诊指南">就诊指南</a>  
    </li>
        <li class="PMenu"><img src="images/ico_014.png" class="animated" width="15" height="8" /><a href="jianjie.jsp" id="Nav_AMenu1" class="PAMenu" title="医院概况">医院概况</a> </li>
        <li class="PMenu"><img src="images/ico_014.png" class="animated" width="15" height="8" /><a href="kexue.jsp" id="Nav_AMenu2" class="PAMenu" title="科学研究">科学研究</a> </li>
        <li class="PMenu"><img src="images/ico_014.png" class="animated" width="15" height="8" /><a href="#" id="Nav_AMenu3" class="PAMenu" title="医学教育">医学教育</a>
        </li>
        <li class="PMenu"><img src="images/ico_014.png" class="animated" width="15" height="8" /><a href="#" id="Nav_AMenu4" class="PAMenu" title="健康管理">健康管理</a>
        </li>
        <li class="PMenu"><img src="images/ico_014.png" class="animated" width="15" height="8" /><a href="news.jsp" id="Nav_AMenu5" class="PAMenu" title="新闻动态">新闻动态</a>
        </li>
        <li class="PMenu"><img src="images/ico_014.png" class="animated" width="15" height="8" /><a href="#" id="Nav_AMenu6" class="PAMenu" title="护理园地">护理园地</a>     
        </li>
        <li class="PMenu"><a href="#" id="Nav_AMenu7" class="PAMenu" title="党群工作">党群工作</a></li>
        <li class="PMenu"><a href="javascript:;" id="Nav_AMenu8" class="PAMenu">云医院</a></li>
   </ul>
  </div>
</div>
</nav>
<section class="BaseMark">
	<div class="bread">您所在的位置<span><a href="index.html">首页</a><a href="jiuzhen.html">就诊指南</a>就诊流程</span></div>
    <div class="baseLeft">
    	<div class="title title05_52">就诊指南</div>
        <div class="newsMenu">       
<ul><li class="first active"><a href="jiuzhen.html" title="就诊流程"><em>就诊流程</em></a></li>
        <li><a href="Office.jsp" title="科室导航"><em>科室导航</em></a></li>
        <li><a href="chuzhen.html" title="出诊安排"><em>出诊安排</em></a></li>
        <li><a href="ArticleList-56.html" title="住院指南"><em>住院指南</em></a></li>
        <li><a href="Telephone.html" title="电话查询"><em>电话查询</em></a></li>
        <li><a href="Article-65.html" title="信息查询"><em>信息查询</em></a></li>
        <li class="second"><a href="Article-65.html" title="医疗服务价格查询">医疗服务价格查询</a></li>
        <li class="second"><a href="CheckupsInfo.html" title="检验结果查询">检验结果查询</a></li>   
            </ul>
        </div>
        <div class="tools"><a href="http://www.o2omed.com.cn/" target="_blank"><img src="images/ico_001.gif" width="52" height="52"><em>互联智慧分诊平台</em></a><a style="margin-right:0;" href="96195.html"><img src="images/ico_002.gif" width="52" height="52"><em><span>96195</span> 综合平台</em></a><a href="Hospital.html"><img src="images/ico_003.gif" width="52" height="52"><em>名医馆</em></a><a style="margin-right:0;" href="DrugsInfo.html" class="last"><img src="images/ico_004.gif" width="52" height="52"><em>信息查询</em></a><div class="clear"></div></div>
    </div>
    <div class="baseRight">
    	<div class="title01">就诊流程</div>
        <div class="announce">
        	<ul>
<li><a href="NewsDetail-448.html" title="门诊就诊流程" target="_blank">门诊就诊流程</a></li>

<li><a href="NewsDetail-449.html" title="医院标题预约挂号" target="_blank">医院标题预约挂号</a></li>

<li><a href="NewsDetail-453.html" title="急诊就诊流程" target="_blank">急诊就诊流程</a></li>

<li><a href="NewsDetail-451.html" title="门诊就医指南" target="_blank">门诊就医指南</a></li>

<li><a href="NewsDetail-450.html" title="健康行卡介绍" target="_blank">健康行卡介绍</a></li>

<li><a href="NewsDetail-7684.html" title="综合服务" target="_blank">综合服务</a></li>

<li><a href="NewsDetail-457.html" title="省医“健康行”卡流程常见问题解答" target="_blank">省医“健康行”卡流程常见问题解答</a></li>

<li><a href="NewsDetail-456.html" title="简易门诊介绍" target="_blank">简易门诊介绍</a></li>

<li><a href="NewsDetail-3763.html" title="患者投诉指南" target="_blank">患者投诉指南</a></li>

<li><a href="NewsDetail-461.html" title="检验标本采集流程" target="_blank">检验标本采集流程</a></li>

<li><a href="NewsDetail-460.html" title="病理检查流程" target="_blank">病理检查流程</a></li>

<li><a href="NewsDetail-458.html" title="影像中心检查流程" target="_blank">影像中心检查流程</a></li>

            </ul>
        </div> 
        <div class="clear"></div>  


    </div>
    <div class="clear"></div>
</section><div class="BottomHidden"></div>
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

<div class="BottomHidden"></div>
<div class="DWeibo"> <a href="javascript:;" class="weibo" title="新浪微博">新浪官方微博</a><a href="javascript:;" class="tencent" title="腾讯微博">腾讯官方微博</a><div class="clear"></div></div>
<div class="urlHidden">  </div>
<div class="websiteInfo">
  <div class="info">主办单位：医院标题  &nbsp; &nbsp;综合服务电话：120&nbsp;&nbsp; &nbsp;急救中心电话：120 &nbsp; 传真：120 &nbsp; 地 址：地址地址地址 &nbsp;<br/> 版权所有：医院标题 &nbsp; </div>
  <ul><li class="first"><a href="jianjie.html" target="_blank">关于我们</a></li><li><a href="Declaration.html" target="_blank">法律声明</a></li><li><a href="SiteMap.html" target="_blank">网站地图</a></li><li><a href="Article-57.html" target="_blank">联系我们</a></li><li><a href="Complain.html" target="_blank">院长(信访)信箱</a></li></ul>
  <div class="clear"></div>
  <p> &copy;2015-<script language="javascript" type="text/javascript">document.write(new Date().getFullYear());</script>. All Rights Reserved. <a href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank" >备案号0000001 </a></p>
   <select id="ddlLinks">
   <option value="0"><span>友情链接</span> HYPERLINK</option> <option value="http://www.chinapop.gov.cn/">中华人民共和国卫生和计划生育委员会</option>
   </select>
</div>
</footer><div id="Footer_CodeDiv"><script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F4a1d36386e8734a5fd29acec9114818d' type='text/javascript'%3E%3C/script%3E"));
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fafd2ae44e23648da4e8a81a7b1349be4' type='text/javascript'%3E%3C/script%3E"));
</script></div><script language="javascript" type="text/javascript" src="js/Kunyi.Common.js"></script><script language="javascript" type="text/javascript" src="js/Kunyi.Secondary.js"></script>
</body>
</html>
