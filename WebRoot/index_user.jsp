<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>医院预约平台</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<title>医院标题</title>
    <meta name="Keywords" content="医院标题,人民医院,省医,山西人民医院,咨询, 留言, 山西医院, 寻医问药" />
    <meta name="Description" content="医院标题位于山西省太原市，建院于1906年，是一家三级甲等综合医院。医院秉承“患者至上，员工为本”的服务理念，弘扬“仁爱、博学、严谨、卓越”的医院精神，坚持“人民医院为人民”的办院宗旨，造就了一支业务精湛、医德高尚、纪律严明、作风过硬的职工队伍，树立了社会满意、患者信赖的良好形象。先后获得全国精神文明建设先进单位、全国文明单位、全国卫生系统先进集体、全国医院文化建设先进单位等多项荣誉称号。" />
    <meta name="robots" content="All" />
<meta http-equiv="mobile-agent" content="format=html5;url=http://m.hnsrmyy.net/" />
<noscript><meta http-equiv="refresh" content="0; url=/noscript.htm" /></noscript>
<!--[if lt IE 7]><meta http-equiv="refresh" content="0; url=/YouLose.htm" /><![endif]-->
<meta name="Author" content="miraclevision technical team,kunyi" />
 
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="css/normalize.css" type="text/css" />
<link rel="stylesheet" href="css/indexuser.css" type="text/css" />
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
             <li class="first"><a href="communicate.jsp">在线留言</a></li>
             <li><a href="javascript:;" onClick="Kunyi.AddFavorite(window.location,document.title)">加入收藏</a>
             </li>
      </ul>
   <div style="float:right;">
         <a href="">登录</a>|
         <a href="">注册</a>
   </div>
  
 </div>
 </div>
<div class="BaseMark logoBase"><a href="index_user.jsp"><img src="images/logo.jpg" class="load" width="227" height="47" /></a>
<div class="searchBase"><div class="itemBase"><div class="divType" data-state="0">全站内容</div><ul><li data-id="1">全站内容</li><li data-id="2">医生查找</li><li data-id="3">新闻动态</li></ul> </div>
<form method="get" action="Search.html" onSubmit="return Kunyi.CheckSearchForm()">
<input type="hidden" id="Type" name="Type" value="1" />
<input type="text" name="SearchWords" placeholder="请输入您要查找内容的关键字"  value="" autocomplete="off" onFocus="Kunyi.cls(event)" onBlur="Kunyi.res(event)"  maxlength="28" id="SearchWords" />
<input type="submit" value="搜索" class="boxsub animated" />
</form></div></div></header><nav>
<div class="navBase">
    <div class="quickMenuBase" data-type="1">
    <div class="quickMenu01">快捷菜单</div>
    <div class="quickMenu02 animated"></div>
    <div class="quickMenus">
<!-- -------------侧边栏-------------------- -->
 <ul class="firstUl">
<!-- -------------就医指南-------------------- -->
<li class="first"><a href="jiuzhen.jsp" class="firstA"><em>就诊指南</em><i class="style01"></i><span></span></a>
<div class="QMSub QMSubMenus">
<ul>
    <li>
        <a href="jiuzhen.html" title="就诊流程">就诊流程<span>进入</span></a>
    </li>
    <li>
        <a href="Office.jsp" title="科室导航">科室导航<span>进入</span></a>
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
        <a href="index_user.jsp" onclick='return confirm("15227106562",function(){window.location="index_user.jsp"});' title="电话查询">电话查询<span>进入</span></a>
     </li>
     <li>
        <a href="index_user.jsp" onclick='return confirm("15227106562",function(){window.location="index_user.jsp"});' title="信息查询">信息查询<span>进入</span></a>
      </li>
</ul>
<div class="clear"></div>
</div>
</li>
<!-- -----------------------预约挂号------------------------------ -->

<li class="first"><a href="NewsDetail-449.html" target="_blank" class="firstA"><em>预约挂号</em><i class="style02"></i><span></span></a><div class="QMSub QMSubMenus">
<ul>
    <li><a href="index_user.jsp" onclick='return confirm("15227106562",function(){window.location="index_user.jsp"});'>电话预约<span>进入</span></a></li>
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
<h5><a href="Alldoctor.action">按医生姓名首字母查找</a></h5>
</div>
<div class="clear"></div>
<div class="DList"></div>
</div>
</li>

<!-- ------------------------------专科介绍----------------------------------------- -->
<li class="first"><a href="Office.jsp" class="firstA"><em>专科介绍</em><i class="style05"></i><span></span></a><div id="QMOffices" class="QMSub QMSubList"></div></li>

<!-- ------------------------------新闻动态----------------------------------------- -->

<li class="first"><a href="Office-9.html" class="firstA"><em>新闻动态</em><i class="style06"></i><span></span></a>
</li>
<!-- -------------------------------在线咨询------------------------------------------ -->
<li class="first last">
    <a target=blank href=tencent://message/?uin=294362243&Site=www.ik38.com&Menu=yes>
    <div style="text-align:center; padding-top:10px;">
       <img border="0" SRC=http://wpa.qq.com/pa?p=3:294362243:3 alt="点击联系"   height="30" width="100" >
       </div>
    </a>
   <i class="style07"></i><span></span></a></li>
</ul>
</div>
</div>
<!-- -------------------侧边栏结束---------------------------- -->

<!-- --------------------标题栏------------------------------ -->

<div class="nav Inav">
  <ul>
        <li class="PMenu"><a href="index_user.jsp" class="PAMenu">首页</a></li>       
        <!-- 就医指南 -->
        <li class="PMenu"><img src="images/ico_014.png" class="animated" width="15" height="8" />
		<a href="jiuzhen.jsp" id="Nav_AMenu0" class="PAMenu" title="就诊指南">就诊指南</a> </li>
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

<section class="bannerBase BaseMark">
<div class="Banners">
<ul class="AnimUl">
<li><a href="http://www.hnsrmyy.net/NewsDetail-8464.html" title="院党委举行学习党的十八届六中全会精神和 省十次党代会精神专题辅导"><img src="uploadfiles/thumb/2016072719385074.JPG"  alt="院党委举行学习党的十八届六中全会精神和 省十次党代会精神专题辅导" /></a></li>

<li><a href="http://www.hnsrmyy.net/NewsDetail-8476.html" title="2016山西省眼科医师大会开启眼科发展新篇章"><img src="uploadfiles/thumb/201607271939462.jpg"  alt="2016山西省眼科医师大会开启眼科发展新篇章" /></a></li>

<li><a href="http://www.hnsrmyy.net/NewsDetail-8470.html" title="立足中原 开放合作
“直通梅奥国际诊疗中心中原中心”启动"><img src="uploadfiles/thumb/2016072719555688.jpg"  alt="立足中原 开放合作
“直通梅奥国际诊疗中心中原中心”启动" /></a></li>

<li><a href="http://www.hnsrmyy.net/NewsDetail-8468.html" title="山西省医院自媒体联盟成立了！"><img src="uploadfiles/thumb/2016072719393541.jpg"  alt="山西省医院自媒体联盟成立了！" /></a></li>

<li><a href="http://www.hnsrmyy.net/NewsDetail-8472.html" title="“爱心传递 防治出生缺陷”公益行活动走进山西"><img src="uploadfiles/thumb/2016072720014091.jpg"  alt="“爱心传递 防治出生缺陷”公益行活动走进山西" /></a></li>

 

 

 

 

<li><a href="http://www.hnsrmyy.net/NewsDetail-7944.html" title="我院空中救护成功转运首位重症患者—首个“中国紧急救援山西航空救援基地”落户省医"><img src="uploadfiles/thumb/2016072719395872.JPG"  alt="我院空中救护成功转运首位重症患者—首个“中国紧急救援山西航空救援基地”落户省医" /></a></li>

<li><a href="javascript:void(0)" title=""><img src="uploadfiles/thumb/2016090608460311.jpg"  alt="" /></a></li>
</ul>
<div class="tools">
<a href="javascript:void(0)" class="prev"><img alt="上一幅" src="images/btn_prev01.png" width="34" height="34" /></a>
<a href="javascript:void(0)" class="next"><img alt="下一幅" src="images/btn_next01.png" width="34" height="34" /></a>
<div class="text" id="BannerInfo"></div>
<ul class="ulMark">
<li class="animated"></li>
<li class="animated"></li>
<li class="animated"></li>
<li class="animated"></li>
<li class="animated"></li>
<li class="animated"></li> 
</ul>
<div class="clear"></div>
<div id="BannerSwitch" class="animated" data-type="0" data-right="0">
<img src="images/ico_027.png" width="5" height="7" class="animated" ><span>隐藏</span>
</div>
</div>
</div>
</section>

<section class="NewsBase BaseMark">
<div class="tools"><a href="http://www.o2omed.com.cn/" target="_blank"><img src="images/ico_001.gif" class="load" width="52" height="52" /><em>互联智慧分诊平台</em></a><a href="96195.html"><img src="images/ico_002.gif" class="load" width="52" height="52" /><em><span>96195</span> 综合平台</em></a>
<a href="Hospital.html"><img alt="" src="images/ico_003.gif" class="load" width="52" height="52" /><em>名医馆</em></a><a href="DrugsInfo.html" class="last"><img src="images/ico_004.gif" class="load" width="52" height="52" /><em>信息查询</em></a>
</div>

<div class="noticeBase">
<div class="notice notice01"><a href="news.html" class="more">更多</a>
<div class="title"><em>最新公告</em><span>Latest Announcement</span></div>
<div class="first"><a href="NewsDetail-8528.html" id="ANoticeFirst" target="_blank" title="关于征集阜外华中心血管病医院院徽的公告"><img src="pic/pic_005.jpg" class="load" width="126" height="76" /></a>
<div><span>2017-01-09</span><a href='NewsDetail-8528.html' title='关于征集阜外华中心血管病医院院徽的公告' target='_blank'>关于征集阜外华中心血管病医院院徽的公告</a>
</div>
<div class="clear"></div>
</div>
<ul><li><span>2017-01-06</span> <a target="_blank"  href="NewsDetail-8513.html" title="2017年1月14日（周六）、1月15日（周日）出诊医师排班表">2017年1月14日（周六）、1月15日（周日）出诊医师排班表</a></li><li><span>2017-01-05</span> <a target="_blank"  href="NewsDetail-8512.html" title="医院标题2017年人才招聘面试通知">医院标题2017年人才招聘面试通知</a></li><li><span>2017-01-04</span> <a target="_blank"  href="NewsDetail-8511.html" title="关于我院2017年人才招聘面试工作 提前举行的通知">关于我院2017年人才招聘面试工作 提前举行的通知</a></li>
</ul>
</div>


<div class="notice notice02">
<a href="news.html" class="more">更多</a>
<div class="title"><em>省医快讯</em><span>Hospital News</span></div>
<div class="first"><a href="NewsDetail-8479.html" id="ANewsFirst" target="_blank" title="互联智慧疼痛医联体全面启动"><img src="pic/pic_005.jpg" class="load" width="126" height="76" /></a>
<div><span>2016-12-29</span><a href='NewsDetail-8479.html' title='互联智慧疼痛医联体全面启动' target='_blank'>互联智慧疼痛医联体全面启动</a>
</div>
<div class="clear"></div>
</div>
<ul><li><span>2016-12-29</span> <a target="_blank"  href="NewsDetail-8478.html" title="豫医联盟医院标题分会成立">豫医联盟医院标题分会成立</a></li><li><span>2016-12-29</span> <a target="_blank"  href="NewsDetail-8477.html" title="2016年肺癌多学科综合治疗论坛 暨山西省肺癌规范化治疗学习班顺利召开">2016年肺癌多学科综合治疗论坛 暨山西省肺癌规范化治疗学习班顺利召开</a></li><li><span>2016-12-29</span> <a target="_blank"  href="NewsDetail-8476.html" title="2016山西省眼科医师大会开启眼科发展新篇章">2016山西省眼科医师大会开启眼科发展新篇章</a></li>
</ul>
</div>
</div>
<div class="clear"></div>
</section>

<section class="doctorsBase BaseMark">
<div class="toolsBase">
<div class="title"><em>专家介绍</em>  <span>Expert Introduction</span></div>
<div class="tools"><a href="javascript:;" class="ASwitch" id="DSearchSwitch">快速查找</a>
<form action="doctorQuery.action" method="post" class="search">
<input type="text" style="height: 30px;font-size: 16px" name="queryText"  value="${searchText }" placeholder="请输入医生名字" maxlength="28" />
<input class="btn" style="width: 30px;" type="submit" value="查找" />
</form>
<a href="javascript:;" class="Aprev"></a>
<a href="javascript:;" class="Anext"></a>
</div>
<div class="clear"></div>
</div>
<div class="contents">
<ul data-num="0">

<li><a href="ys.jsp" title="医生姓名" target="_blank" class="img"><img alt="姓名" title="姓名" src="pic/201603221527067.png" width="120" height="162" /></a>
  <a href="ys.jsp" title="医生姓名" target="_blank" class="name">姓名</a>
<a href="keshi.html" title="所在医院" target="_blank" class="office">所在医院医院</a>
<a href="ys.jsp" title="姓名" target="_blank" class="post">主任医师  研究生导师</a>
<a href="ys.jsp" title="姓名" target="_blank" class="btn more">详细</a>
<a href="#" target="_blank" class="btn date">预约</a></li>

<li><a href="ys.jsp" title="医生姓名" target="_blank" class="img"><img alt="姓名" title="姓名" src="pic/201603221527067.png" width="120" height="162" /></a>
  <a href="ys.jsp" title="医生姓名" target="_blank" class="name">姓名</a>
<a href="keshi.html" title="所在医院" target="_blank" class="office">所在医院医院</a>
<a href="ys.jsp" title="姓名" target="_blank" class="post">主任医师  研究生导师</a>
<a href="ys.jsp" title="姓名" target="_blank" class="btn more">详细</a>
<a href="#" target="_blank" class="btn date">预约</a></li>
<li><a href="ys.jsp" title="医生姓名" target="_blank" class="img"><img alt="姓名" title="姓名" src="pic/201603221527067.png" width="120" height="162" /></a>
  <a href="ys.jsp" title="医生姓名" target="_blank" class="name">姓名</a>
<a href="keshi.html" title="所在医院" target="_blank" class="office">所在医院医院</a>
<a href="ys.jsp" title="姓名" target="_blank" class="post">主任医师  研究生导师</a>
<a href="ys.jsp" title="姓名" target="_blank" class="btn more">详细</a>
<a href="#" target="_blank" class="btn date">预约</a></li>
<li><a href="ys.jsp" title="医生姓名" target="_blank" class="img"><img alt="姓名" title="姓名" src="pic/201603221527067.png" width="120" height="162" /></a>
  <a href="ys.jsp" title="医生姓名" target="_blank" class="name">姓名</a>
<a href="keshi.html" title="所在医院" target="_blank" class="office">所在医院医院</a>
<a href="ys.jsp" title="姓名" target="_blank" class="post">主任医师  研究生导师</a>
<a href="ys.jsp" title="姓名" target="_blank" class="btn more">详细</a>
<a href="#" target="_blank" class="btn date">预约</a></li>
<li><a href="ys.jsp" title="医生姓名" target="_blank" class="img"><img alt="姓名" title="姓名" src="pic/201603221527067.png" width="120" height="162" /></a>
  <a href="ys.jsp" title="医生姓名" target="_blank" class="name">姓名</a>
<a href="keshi.html" title="所在医院" target="_blank" class="office">所在医院医院</a>
<a href="ys.jsp" title="姓名" target="_blank" class="post">主任医师  研究生导师</a>
<a href="ys.jsp" title="姓名" target="_blank" class="btn more">详细</a>
<a href="#" target="_blank" class="btn date">预约</a></li>
<li><a href="ys.jsp" title="医生姓名" target="_blank" class="img"><img alt="姓名" title="姓名" src="pic/201603221527067.png" width="120" height="162" /></a>
  <a href="ys.jsp" title="医生姓名" target="_blank" class="name">姓名</a>
<a href="keshi.html" title="所在医院" target="_blank" class="office">所在医院医院</a>
<a href="ys.jsp" title="姓名" target="_blank" class="post">主任医师  研究生导师</a>
<a href="ys.jsp" title="姓名" target="_blank" class="btn more">详细</a>
<a href="#" target="_blank" class="btn date">预约</a></li>
<li><a href="ys.jsp" title="医生姓名" target="_blank" class="img"><img alt="姓名" title="姓名" src="pic/201603221527067.png" width="120" height="162" /></a>
  <a href="ys.jsp" title="医生姓名" target="_blank" class="name">姓名</a>
<a href="keshi.html" title="所在医院" target="_blank" class="office">所在医院医院</a>
<a href="ys.jsp" title="姓名" target="_blank" class="post">主任医师  研究生导师</a>
<a href="ys.jsp" title="姓名" target="_blank" class="btn more">详细</a>
<a href="#" target="_blank" class="btn date">预约</a></li>
<li><a href="ys.jsp" title="医生姓名" target="_blank" class="img"><img alt="姓名" title="姓名" src="pic/201603221527067.png" width="120" height="162" /></a>
  <a href="ys.jsp" title="医生姓名" target="_blank" class="name">姓名</a>
<a href="keshi.html" title="所在医院" target="_blank" class="office">所在医院医院</a>
<a href="ys.jsp" title="姓名" target="_blank" class="post">主任医师  研究生导师</a>
<a href="ys.jsp" title="姓名" target="_blank" class="btn more">详细</a>
<a href="#" target="_blank" class="btn date">预约</a></li>
<li><a href="ys.jsp" title="医生姓名" target="_blank" class="img"><img alt="姓名" title="姓名" src="pic/201603221527067.png" width="120" height="162" /></a>
  <a href="ys.jsp" title="医生姓名" target="_blank" class="name">姓名</a>
<a href="keshi.html" title="所在医院" target="_blank" class="office">所在医院医院</a>
<a href="ys.jsp" title="姓名" target="_blank" class="post">主任医师  研究生导师</a>
<a href="ys.jsp" title="姓名" target="_blank" class="btn more">详细</a>
<a href="#" target="_blank" class="btn date">预约</a></li>
<div class="hackR"></div>
<div class="hackL"></div>
</div>
</section>

<section class="officesBase BaseMark">
<div class="toolsBase">
<div class="title"><em>重点专科</em>  <span>Key Specialty</span></div>
<div class="tools">
<a href="javascript:;" class="Aprev"></a>
<a href="javascript:;" class="Anext"></a>
</div>
<div class="clear"></div>
</div>
<div class="contents">
 <ul data-num="0">
 <li><i class="ico01"></i>
 <div class="img animated"><img alt="呼吸内科" src="pic/pic_007.png" width="80" height="80" /></div>
 <a href="ddoctorQuery.action?param=0&deptID=1" title="呼吸内科" class="office">呼吸内科</a>
 <p>我科始建于上世纪70年代初，目前为卫生部国家重点专科建设项目单位，山西省重点……</p>
 <a href="ddoctorQuery.action?param=0&deptID=1" title="呼吸内科" class="btn more">查看详细</a>
 <a href="ys.jsp" title="呼吸内科医生" class="btn doctor">科室专家</a></li>
 
 <li><i class="ico01"></i>
 <div class="img animated"><img alt="神经内科" src="pic/pic_009.png" width="80" height="80" /></div>
 <a href="ddoctorQuery.action?param=0&deptID=2" title="神经内科" class="office">神经内科</a>
 <p>医院标题神经内科始建于1954年，经过半个多世纪的发展，目前已发展为全……</p>
 <a href="ddoctorQuery.action?param=0&deptID=2" title="神经内科" class="btn more">查看详细</a>
 <a href="ys.jsp" title="神经内科医生" class="btn doctor">科室专家</a></li>
 
 <li><i class="ico01"></i>
 <div class="img animated"><img alt="内分泌科" src="pic/pic_008.png" width="80" height="80" /></div>
 <a href="ddoctorQuery.action?param=0&deptID=3" title="内分泌科" class="office">内分泌科</a>
 <p>医院标题内分泌代谢科，是国家重点专科、山西省重点专科、山西省糖尿病防治……</p>
 <a href="ddoctorQuery.action?param=0&deptID=3" title="内分泌科" class="btn more">查看详细</a>
 <a href="ys.jsp" title="内分泌科医生" class="btn doctor">科室专家</a></li>
 
 <li><i class="ico01"></i>
 <div class="img animated"><img alt="神经内科康馨病房" src="pic/pic_012.png" width="80" height="80" /></div>
 <a href="ddoctorQuery.action?param=0&deptID=4" title="神经内科康馨病房" class="office">神经内科康馨病房</a>
 <p>医院标题神经内科康馨病房为国家临床重点专科神经内科干部保健病房，成立于……</p>
 <a href="ddoctorQuery.action?param=0&deptID=4" title="神经内科康馨病房" class="btn more">查看详细</a>
 <a href="ys.jsp" title="神经内科康馨病房医生" class="btn doctor">科室专家</a></li>
 
 <li><i class="ico01"></i>
 <div class="img animated"><img alt="心内科" src="pic/pic_010.png" width="80" height="80" /></div>
 <a href="ddoctorQuery.action?param=0&deptID=5" title="心内科" class="office">心内科</a>
 <p>医院标题心血管内科是国家级临床重点专科、山西临床重点专科、山西省心血管……</p>
 <a href="ddoctorQuery.action?param=0&deptID=5" title="心内科" class="btn more">查看详细</a>
 <a href="ys.jsp" title="心内科医生" class="btn doctor">科室专家</a></li>
 </ul>
<div class="hackR"></div>
<div class="hackL"></div>
</div>
<div class="hiddenLineR"></div><div class="hiddenLineL"></div>
<div class="OFastSearch">
    <div class="OFContent">
      <div class="OListBase"></div>
    </div>
</div>
</section>

<section class="othersBase BaseMark">
   <div class="left">
      <div class="img"><ul class="Anim"><li><img src="pic/pic_011.jpg" width="290" height="185" /><div>巩义市施救1</div></li><li><img src="pic/pic_011b.jpg" width="290" height="185" /><div>巩义市施救2</div></li><li><img src="pic/pic_011.jpg" width="290" height="185" /><div>巩义市施救3</div></li></ul>
      <ul class="index"><li class="animated"></li><li class="animated"></li><li class="animated"></li></ul>
      </div>
      <div class="content">
      <h3>空中救援</h3>
      <p>首个 “中国紧急救援山西航空救援基地” 落户医院标题 ，最快30分钟内施救。</p>
      <label>快速施救</label>
      <label>空中转院</label>
      <label>抢险救灾</label>
      <a href="NewsList-116.html" title="空中救援" target="_blank">MORE</a>
      </div><div class="clear"></div>
   </div>
   <div class="right">
   <a href="NewsList-10.html" title="新业务新技术">
   <img src="images/ico_039a.png" width="32" height="32" />
   <img src="images/ico_039b.png" width="32" height="32" class="second animated"/>   
   <em class="animated">新业务新技术</em>
   <span class="animated">了解我院最新科研技术发布与介</span>
   <b class="animated">MORE</b>
   </a>   
   <a href="History.html">
   <img src="images/ico_041a.png" width="32" height="32" />
   <img src="images/ico_041b.png" width="32" height="32" class="second animated"/>
   <em class="animated">院史馆</em>
<span class="animated">励精图治，厚德济生，省医百年展陈</span>
<b class="animated">MORE</b>
   </a><a href="NewsList-75.html" title="媒体看省医"><img src="images/ico_042a.png" width="32" height="32" />
   <img src="images/ico_042b.png" width="32" height="32" class="second animated"/>
   <em class="animated">媒体看省医</em>
<span class="animated">我院与社会媒体合作，服务于患者</span>
<b class="animated">MORE</b>
   </a><a href="news.html" title="服务动态"><img src="images/ico_043a.png" width="32" height="32" />
   <img src="images/ico_043b.png" width="32" height="32" class="second animated"/>
   <em class="animated">服务动态</em>
<span class="animated">了解我院服务宗旨的最新动态介绍</span>
<b class="animated">MORE</b>
   </a>
   </div>
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

<div class="BottomHidden"></div>
<div class="DWeibo"> <a href="javascript:;" class="weibo" title="新浪微博">新浪官方微博</a><a href="javascript:;" class="tencent" title="腾讯微博">腾讯官方微博</a><div class="clear"></div></div>
 
<div class="websiteInfo">
    <div class="info">主办单位：医院标题  &nbsp; &nbsp;综合服务电话：120&nbsp;&nbsp; &nbsp;急救中心电话：120 &nbsp; 传真：120 &nbsp; 地 址：地址地址地址 &nbsp;<br/> 版权所有：医院标题  </div>
<ul><li class="first"><a href="jianjie.html" target="_blank">关于我们</a></li><li><a href="Declaration.html" target="_blank">法律声明</a></li><li><a href="SiteMap.html" target="_blank">网站地图</a></li><li><a href="Article-57.html" target="_blank">联系我们</a></li><li><a href="Complain.html" target="_blank">院长(信访)信箱</a></li></ul>
  <div class="clear"></div>
  <p> &copy;2015-<script language="javascript" type="text/javascript">document.write(new Date().getFullYear());</script>. All Rights Reserved. <a href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank" >备案号0000001 </a></a></p>
   <select id="ddlLinks">
   <option value="0"><span>友情链接</span> HYPERLINK</option> <option value="http://www.chinapop.gov.cn/">中华人民共和国卫生和计划生育委员会</option>
   </select>
</div>
</footer><div id="Footer_CodeDiv"><script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F4a1d36386e8734a5fd29acec9114818d' type='text/javascript'%3E%3C/script%3E"));
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fafd2ae44e23648da4e8a81a7b1349be4' type='text/javascript'%3E%3C/script%3E"));
</script></div><script language="javascript" type="text/javascript" src="js/Kunyi.Common.js"></script>
<script language="javascript" type="text/javascript" src="js/Kunyi.Index.js"></script>
</body>
</html>
