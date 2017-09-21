<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>医生排班</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/styleuser.css" rel="stylesheet" />
	<link href="css/yidongduan.css" rel="stylesheet" />
	 <script type="text/javascript" src="js/topdate.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script language="javascript">
		function orders(){
			if(confirm("确定要预约该医生吗？")){
				return true;
			}else{
			return false;
			}
		}
</script>
  </head>
  <body>
  <% 
     Date date=new Date();
	 SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	 String nowDate=sdf.format(date);
	  //通过日历获取下一天日期  
	  String[] weeks = {"星期日","星期一","星期二","星期三","星期四","星期五","星期六"};  
	  int week_index;
      Calendar cal = Calendar.getInstance();  
      cal.setTime(sdf.parse(nowDate));  
      String[] nextData=new String[10];
      String[] w=new String[10];
      for(int i=1;i<=7;i++){  
          cal.add(Calendar.DAY_OF_YEAR, +1);  
          week_index = cal.get(Calendar.DAY_OF_WEEK) - 1;  
          nextData[i] = sdf.format(cal.getTime());  
          w[i]=weeks[week_index];
       }
       session.setAttribute("d1", nextData[1]);
       session.setAttribute("d2", nextData[2]);
       session.setAttribute("d3", nextData[3]);
       session.setAttribute("d4", nextData[4]);
       session.setAttribute("d5", nextData[5]);
       session.setAttribute("d6", nextData[6]);
   	   session.setAttribute("d7", nextData[7]);
  %>   
  <div id="ksorder_time">
	<div class="ksorder_time_title">
	    	<p class="ksorder_t_p">医生排班表</p>
		          <a href="index_user.jsp" class="callback_ks">返回主页</a>
		       </div>
    <div class="ksorder_time_center">
        <div class="ksorder_cen_l">
        	<div class="ksorder_cen_l_l">
        	 <a href="#" class="ksorder_btn_left"></a>
            		<ul>
                    <li>上午</li>
                    <li>下午</li>
                    <li>晚上</li>
                </ul>
            </div>
<div class="ksorder_cen_l_table">
  <div class="ksorder_cen_l_t_c" style="width: 659px;">
  <table border="0" cellpadding="0" cellspacing="0" id="tableid" onclick="orders();">
    <tbody>
        <tr>
                  	<th scope="col"><%out.print(w[1]); %><p><%out.print(nextData[1]); %></p></th>
                    <th scope="col"><%out.print(w[2]); %><p><%out.print(nextData[2]); %></p></th>
                    <th scope="col"><%out.print(w[3]); %><p><%out.print(nextData[3]); %></p></th>
                    <th scope="col"><%out.print(w[4]); %><p><%out.print(nextData[4]); %></p></th>
                    <th scope="col"><%out.print(w[5]); %><p><%out.print(nextData[5]); %></p></th>
                    <th scope="col"><%out.print(w[6]); %><p><%out.print(nextData[6]); %></p></th>
                    <th scope="col"><%out.print(w[7]); %><p><%out.print(nextData[7]); %></p></th>
        </tr>
        <c:forEach var="pb" items="${docpanbans }">
       
        <%if(w[1].equals("星期一")) {%>
            <tr>
                <c:if test="${pb.monam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.monam < 0}"><td></td></c:if>
                <c:if test="${pb.monam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'am'}&date=${pb.monam}">预约<br>剩余:${pb.monam}</a>
                 </td></c:if>
                
                <c:if test="${pb.tueam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tueam < 0}"><td></td></c:if>
			    <c:if test="${pb.tueam >0}"><td class="ksorder_kyy"> 
			     <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'am'}&date=${pb.tueam}">预约<br>剩余:${pb.tueam}</a>
			     </td></c:if>
               
                <c:if test="${pb.wenam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.wenam < 0}"><td></td></c:if>
                <c:if test="${pb.wenam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'am'}&date=${pb.wenam}">预约<br>剩余:${pb.wenam}</a>
                 </td></c:if>
                
                <c:if test="${pb.thuam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thuam < 0}"><td></td></c:if>
                <c:if test="${pb.thuam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'am'}&date=${pb.thuam}">预约<br>剩余:${pb.thuam}</a>
                 </td></c:if>
                
                <c:if test="${pb.friam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.friam < 0}"><td></td></c:if>
                <c:if test="${pb.friam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'am'}&date=${pb.friam}">预约<br>剩余:${pb.friam}</a>
                 </td></c:if>
               
                <c:if test="${pb.satam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.satam < 0}"><td></td></c:if>
                <c:if test="${pb.satam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'am'}&date=${pb.satam}">预约<br>剩余:${pb.satam}</a>
                 </td></c:if>
                
                <c:if test="${pb.sunam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sunam < 0}"><td></td></c:if>
                <c:if test="${pb.sunam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'am'}&date=${pb.sunam}">预约<br>剩余:${pb.sunam}</a>
                 </td></c:if>
            </tr>
            <tr> 
			    <c:if test="${pb.monpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.monpm < 0}"><td></td></c:if>
			    <c:if test="${pb.monpm >0}"><td class="ksorder_kyy"> 
			     <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'pm'}&date=${pb.monpm}">预约<br>剩余:${pb.monpm}</a>
			     </td></c:if>
                <c:if test="${pb.tuepm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tuepm < 0}"><td></td></c:if>
			    <c:if test="${pb.tuepm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'pm'}&date=${pb.tuepm}">预约<br>剩余:${pb.tuepm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.wenpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.wenpm < 0}"><td></td></c:if>
			    <c:if test="${pb.wenpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'pm'}&date=${pb.wenpm}">预约<br>剩余:${pb.wenpm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.thupm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thupm < 0}"><td></td></c:if>
			    <c:if test="${pb.thupm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'pm'}&date=${pb.thupm}">预约<br>剩余:${pb.thupm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.fripm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.fripm < 0}"><td></td></c:if>
			    <c:if test="${pb.fripm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'pm'}&date=${pb.fripm}">预约<br>剩余:${pb.fripm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.satpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.satpm < 0}"><td></td></c:if>
			    <c:if test="${pb.satpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'pm'}&date=${pb.satpm}">预约<br>剩余:${pb.satpm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.sunpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sunpm < 0}"><td></td></c:if>
			    <c:if test="${pb.sunpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'pm'}&date=${pb.sunpm}">预约<br>剩余:${pb.sunpm}</a>
			    </td></c:if>
            </tr>
		    <tr>
			    <c:if test="${pb.moneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.moneve < 0}"><td></td></c:if>
			    <c:if test="${pb.moneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'eve'}&date=${pb.moneve}">预约<br>剩余:${pb.moneve}</a>
			    </td></c:if>			
				<c:if test="${pb.tueeve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tueeve < 0}"><td></td></c:if>
			    <c:if test="${pb.tueeve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'eve'}&date=${pb.tueeve}">预约<br>剩余:${pb.tueeve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.weneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.weneve < 0}"><td></td></c:if>
			    <c:if test="${pb.weneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'eve'}&date=${pb.weneve}">预约<br>剩余:${pb.weneve}</a></td></c:if>
			    
			    <c:if test="${pb.thueve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thueve < 0}"><td></td></c:if>
			    <c:if test="${pb.thueve >0}"><td class="ksorder_kyy">
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'eve'}&date=${pb.thueve}"> 预约<br>剩余:${pb.thueve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.frieve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.frieve < 0}"><td></td></c:if>
			    <c:if test="${pb.frieve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'eve'}&date=${pb.frieve}">预约<br>剩余:${pb.frieve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.sateve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sateve < 0}"><td></td></c:if>
			    <c:if test="${pb.sateve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'eve'}&date=${pb.sateve}">预约<br>剩余:${pb.sateve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.suneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.suneve < 0}"><td></td></c:if>
			    <c:if test="${pb.suneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'eve'}&date=${pb.suneve}">预约<br>剩余:${pb.suneve}</a>
			    </td></c:if>   	
			</tr>
			
		<%} else if(w[1].equals("星期二")){%>
			<tr> 
			    
                <c:if test="${pb.tueam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tueam < 0}"><td></td></c:if>
			    <c:if test="${pb.tueam >0}"><td class="ksorder_kyy"> 
			     <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'am'}&date=${pb.tueam}">预约<br>剩余:${pb.tueam}</a>
			     </td></c:if>
               
                <c:if test="${pb.wenam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.wenam < 0}"><td></td></c:if>
                <c:if test="${pb.wenam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'am'}&date=${pb.wenam}">预约<br>剩余:${pb.wenam}</a>
                 </td></c:if>
                
                <c:if test="${pb.thuam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thuam < 0}"><td></td></c:if>
                <c:if test="${pb.thuam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'am'}&date=${pb.thuam}">预约<br>剩余:${pb.thuam}</a>
                 </td></c:if>
                
                <c:if test="${pb.friam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.friam < 0}"><td></td></c:if>
                <c:if test="${pb.friam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'am'}&date=${pb.friam}">预约<br>剩余:${pb.friam}</a>
                 </td></c:if>
               
                <c:if test="${pb.satam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.satam < 0}"><td></td></c:if>
                <c:if test="${pb.satam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'am'}&date=${pb.satam}">预约<br>剩余:${pb.satam}</a>
                 </td></c:if>
                
                <c:if test="${pb.sunam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sunam < 0}"><td></td></c:if>
                <c:if test="${pb.sunam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'am'}&date=${pb.sunam}">预约<br>剩余:${pb.sunam}</a>
                 </td></c:if>
                
                <c:if test="${pb.monam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.monam < 0}"><td></td></c:if>
                <c:if test="${pb.monam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'am'}&date=${pb.monam}">预约<br>剩余:${pb.monam}</a>
                 </td></c:if>
                
            </tr>
            <tr>

                <c:if test="${pb.tuepm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tuepm < 0}"><td></td></c:if>
			    <c:if test="${pb.tuepm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'pm'}&date=${pb.tuepm}">预约<br>剩余:${pb.tuepm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.wenpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.wenpm < 0}"><td></td></c:if>
			    <c:if test="${pb.wenpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'pm'}&date=${pb.wenpm}">预约<br>剩余:${pb.wenpm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.thupm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thupm < 0}"><td></td></c:if>
			    <c:if test="${pb.thupm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'pm'}&date=${pb.thupm}">预约<br>剩余:${pb.thupm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.fripm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.fripm < 0}"><td></td></c:if>
			    <c:if test="${pb.fripm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'pm'}&date=${pb.fripm}">预约<br>剩余:${pb.fripm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.satpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.satpm < 0}"><td></td></c:if>
			    <c:if test="${pb.satpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'pm'}&date=${pb.satpm}">预约<br>剩余:${pb.satpm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.sunpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sunpm < 0}"><td></td></c:if>
			    <c:if test="${pb.sunpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'pm'}&date=${pb.sunpm}">预约<br>剩余:${pb.sunpm}</a>
			    </td></c:if>
			    
			     <c:if test="${pb.monpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.monpm < 0}"><td></td></c:if>
			    <c:if test="${pb.monpm >0}"><td class="ksorder_kyy"> 
			     <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'pm'}&date=${pb.monpm}">预约<br>剩余:${pb.monpm}</a>
			     </td></c:if>
            </tr>
		    <tr>
              		
				<c:if test="${pb.tueeve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tueeve < 0}"><td></td></c:if>
			    <c:if test="${pb.tueeve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'eve'}&date=${pb.tueeve}">预约<br>剩余:${pb.tueeve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.weneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.weneve < 0}"><td></td></c:if>
			    <c:if test="${pb.weneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'eve'}&date=${pb.weneve}">预约<br>剩余:${pb.weneve}</a></td></c:if>
			    
			    <c:if test="${pb.thueve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thueve < 0}"><td></td></c:if>
			    <c:if test="${pb.thueve >0}"><td class="ksorder_kyy">
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'eve'}&date=${pb.thueve}"> 预约<br>剩余:${pb.thueve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.frieve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.frieve < 0}"><td></td></c:if>
			    <c:if test="${pb.frieve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'eve'}&date=${pb.frieve}">预约<br>剩余:${pb.frieve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.sateve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sateve < 0}"><td></td></c:if>
			    <c:if test="${pb.sateve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'eve'}&date=${pb.sateve}">预约<br>剩余:${pb.sateve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.suneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.suneve < 0}"><td></td></c:if>
			    <c:if test="${pb.suneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'eve'}&date=${pb.suneve}">预约<br>剩余:${pb.suneve}</a>
			    </td></c:if> 	
			    
			      <c:if test="${pb.moneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.moneve < 0}"><td></td></c:if>
			    <c:if test="${pb.moneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'eve'}&date=${pb.moneve}">预约<br>剩余:${pb.moneve}</a>
			    </td></c:if>			
			</tr>
		<%} else if(w[1].equals("星期三")){%>
		    <tr>       
               
               
                <c:if test="${pb.wenam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.wenam < 0}"><td></td></c:if>
                <c:if test="${pb.wenam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'am'}&date=${pb.wenam}">预约<br>剩余:${pb.wenam}</a>
                 </td></c:if>
                
                <c:if test="${pb.thuam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thuam < 0}"><td></td></c:if>
                <c:if test="${pb.thuam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'am'}&date=${pb.thuam}">预约<br>剩余:${pb.thuam}</a>
                 </td></c:if>
                
                <c:if test="${pb.friam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.friam < 0}"><td></td></c:if>
                <c:if test="${pb.friam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'am'}&date=${pb.friam}">预约<br>剩余:${pb.friam}</a>
                 </td></c:if>
               
                <c:if test="${pb.satam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.satam < 0}"><td></td></c:if>
                <c:if test="${pb.satam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'am'}&date=${pb.satam}">预约<br>剩余:${pb.satam}</a>
                 </td></c:if>
                
                <c:if test="${pb.sunam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sunam < 0}"><td></td></c:if>
                <c:if test="${pb.sunam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'am'}&date=${pb.sunam}">预约<br>剩余:${pb.sunam}</a>
                 </td></c:if>
                
                <c:if test="${pb.monam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.monam < 0}"><td></td></c:if>
                <c:if test="${pb.monam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'am'}&date=${pb.monam}">预约<br>剩余:${pb.monam}</a>
                 </td></c:if>
                <c:if test="${pb.tueam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tueam < 0}"><td></td></c:if>
			    <c:if test="${pb.tueam >0}"><td class="ksorder_kyy"> 
			     <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'am'}&date=${pb.tueam}">预约<br>剩余:${pb.tueam}</a>
			     </td></c:if>
               
            </tr>
            <tr>	    
			    
			    <c:if test="${pb.wenpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.wenpm < 0}"><td></td></c:if>
			    <c:if test="${pb.wenpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'pm'}&date=${pb.wenpm}">预约<br>剩余:${pb.wenpm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.thupm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thupm < 0}"><td></td></c:if>
			    <c:if test="${pb.thupm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'pm'}&date=${pb.thupm}">预约<br>剩余:${pb.thupm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.fripm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.fripm < 0}"><td></td></c:if>
			    <c:if test="${pb.fripm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'pm'}&date=${pb.fripm}">预约<br>剩余:${pb.fripm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.satpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.satpm < 0}"><td></td></c:if>
			    <c:if test="${pb.satpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'pm'}&date=${pb.satpm}">预约<br>剩余:${pb.satpm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.sunpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sunpm < 0}"><td></td></c:if>
			    <c:if test="${pb.sunpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'pm'}&date=${pb.sunpm}">预约<br>剩余:${pb.sunpm}</a>
			    </td></c:if>
			     <c:if test="${pb.monpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.monpm < 0}"><td></td></c:if>
			    <c:if test="${pb.monpm >0}"><td class="ksorder_kyy"> 
			     <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'pm'}&date=${pb.monpm}">预约<br>剩余:${pb.monpm}</a>
			     </td></c:if>
                <c:if test="${pb.tuepm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tuepm < 0}"><td></td></c:if>
			    <c:if test="${pb.tuepm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'pm'}&date=${pb.tuepm}">预约<br>剩余:${pb.tuepm}</a>
			    </td></c:if>
			    
			    
            </tr>
		    <tr>

			    <c:if test="${pb.weneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.weneve < 0}"><td></td></c:if>
			    <c:if test="${pb.weneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'eve'}&date=${pb.weneve}">预约<br>剩余:${pb.weneve}</a></td></c:if>
			    
			    <c:if test="${pb.thueve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thueve < 0}"><td></td></c:if>
			    <c:if test="${pb.thueve >0}"><td class="ksorder_kyy">
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'eve'}&date=${pb.thueve}"> 预约<br>剩余:${pb.thueve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.frieve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.frieve < 0}"><td></td></c:if>
			    <c:if test="${pb.frieve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'eve'}&date=${pb.frieve}">预约<br>剩余:${pb.frieve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.sateve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sateve < 0}"><td></td></c:if>
			    <c:if test="${pb.sateve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'eve'}&date=${pb.sateve}">预约<br>剩余:${pb.sateve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.suneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.suneve < 0}"><td></td></c:if>
			    <c:if test="${pb.suneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'eve'}&date=${pb.suneve}">预约<br>剩余:${pb.suneve}</a>
			    </td></c:if>   	
			    
			    	<c:if test="${pb.moneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.moneve < 0}"><td></td></c:if>
			    <c:if test="${pb.moneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'eve'}&date=${pb.moneve}">预约<br>剩余:${pb.moneve}</a>
			    </td></c:if>			
				<c:if test="${pb.tueeve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tueeve < 0}"><td></td></c:if>
			    <c:if test="${pb.tueeve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'eve'}&date=${pb.tueeve}">预约<br>剩余:${pb.tueeve}</a>
			    </td></c:if>
			    			    
			</tr>
		<%} else if(w[1].equals("星期四")){%>
		    <tr> 
                
                <c:if test="${pb.thuam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thuam < 0}"><td></td></c:if>
                <c:if test="${pb.thuam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'am'}&date=${pb.thuam}">预约<br>剩余:${pb.thuam}</a>
                 </td></c:if>
                
                <c:if test="${pb.friam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.friam < 0}"><td></td></c:if>
                <c:if test="${pb.friam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'am'}&date=${pb.friam}">预约<br>剩余:${pb.friam}</a>
                 </td></c:if>
               
                <c:if test="${pb.satam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.satam < 0}"><td></td></c:if>
                <c:if test="${pb.satam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'am'}&date=${pb.satam}">预约<br>剩余:${pb.satam}</a>
                 </td></c:if>
                
                <c:if test="${pb.sunam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sunam < 0}"><td></td></c:if>
                <c:if test="${pb.sunam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'am'}&date=${pb.sunam}">预约<br>剩余:${pb.sunam}</a>
                 </td></c:if>
                 <c:if test="${pb.monam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.monam < 0}"><td></td></c:if>
                <c:if test="${pb.monam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'am'}&date=${pb.monam}">预约<br>剩余:${pb.monam}</a>
                 </td></c:if>
                
                <c:if test="${pb.tueam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tueam < 0}"><td></td></c:if>
			    <c:if test="${pb.tueam >0}"><td class="ksorder_kyy"> 
			     <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'am'}&date=${pb.tueam}">预约<br>剩余:${pb.tueam}</a>
			     </td></c:if>
               
                <c:if test="${pb.wenam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.wenam < 0}"><td></td></c:if>
                <c:if test="${pb.wenam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'am'}&date=${pb.wenam}">预约<br>剩余:${pb.wenam}</a>
                 </td></c:if>
                
                
            </tr>
            <tr>
			 
			  
			    <c:if test="${pb.thupm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thupm < 0}"><td></td></c:if>
			    <c:if test="${pb.thupm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'pm'}&date=${pb.thupm}">预约<br>剩余:${pb.thupm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.fripm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.fripm < 0}"><td></td></c:if>
			    <c:if test="${pb.fripm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'pm'}&date=${pb.fripm}">预约<br>剩余:${pb.fripm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.satpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.satpm < 0}"><td></td></c:if>
			    <c:if test="${pb.satpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'pm'}&date=${pb.satpm}">预约<br>剩余:${pb.satpm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.sunpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sunpm < 0}"><td></td></c:if>
			    <c:if test="${pb.sunpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'pm'}&date=${pb.sunpm}">预约<br>剩余:${pb.sunpm}</a>
			    </td></c:if>
			     <c:if test="${pb.monpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.monpm < 0}"><td></td></c:if>
			    <c:if test="${pb.monpm >0}"><td class="ksorder_kyy"> 
			     <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'pm'}&date=${pb.monpm}">预约<br>剩余:${pb.monpm}</a>
			     </td></c:if>
                <c:if test="${pb.tuepm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tuepm < 0}"><td></td></c:if>
			    <c:if test="${pb.tuepm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'pm'}&date=${pb.tuepm}">预约<br>剩余:${pb.tuepm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.wenpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.wenpm < 0}"><td></td></c:if>
			    <c:if test="${pb.wenpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'pm'}&date=${pb.wenpm}">预约<br>剩余:${pb.wenpm}</a>
			    </td></c:if>
			    
         </tr>
		    <tr>
			    
			    <c:if test="${pb.thueve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thueve < 0}"><td></td></c:if>
			    <c:if test="${pb.thueve >0}"><td class="ksorder_kyy">
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'eve'}&date=${pb.thueve}"> 预约<br>剩余:${pb.thueve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.frieve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.frieve < 0}"><td></td></c:if>
			    <c:if test="${pb.frieve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'eve'}&date=${pb.frieve}">预约<br>剩余:${pb.frieve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.sateve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sateve < 0}"><td></td></c:if>
			    <c:if test="${pb.sateve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'eve'}&date=${pb.sateve}">预约<br>剩余:${pb.sateve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.suneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.suneve < 0}"><td></td></c:if>
			    <c:if test="${pb.suneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'eve'}&date=${pb.suneve}">预约<br>剩余:${pb.suneve}</a>
			    </td></c:if>   	
			    
			     <c:if test="${pb.moneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.moneve < 0}"><td></td></c:if>
			    <c:if test="${pb.moneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'eve'}&date=${pb.moneve}">预约<br>剩余:${pb.moneve}</a>
			    </td></c:if>			
				<c:if test="${pb.tueeve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tueeve < 0}"><td></td></c:if>
			    <c:if test="${pb.tueeve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'eve'}&date=${pb.tueeve}">预约<br>剩余:${pb.tueeve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.weneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.weneve < 0}"><td></td></c:if>
			    <c:if test="${pb.weneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'eve'}&date=${pb.weneve}">预约<br>剩余:${pb.weneve}</a></td></c:if>
			    
		    </tr>
		
		<%} else if(w[1].equals("星期五")){%>
		 <tr>   
                
                <c:if test="${pb.friam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.friam < 0}"><td></td></c:if>
                <c:if test="${pb.friam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'am'}&date=${pb.friam}">预约<br>剩余:${pb.friam}</a>
                 </td></c:if>
               
                <c:if test="${pb.satam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.satam < 0}"><td></td></c:if>
                <c:if test="${pb.satam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'am'}&date=${pb.satam}">预约<br>剩余:${pb.satam}</a>
                 </td></c:if>
                
                <c:if test="${pb.sunam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sunam < 0}"><td></td></c:if>
                <c:if test="${pb.sunam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'am'}&date=${pb.sunam}">预约<br>剩余:${pb.sunam}</a>
                 </td></c:if>
                <c:if test="${pb.monam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.monam < 0}"><td></td></c:if>
                <c:if test="${pb.monam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'am'}&date=${pb.monam}">预约<br>剩余:${pb.monam}</a>
                 </td></c:if>
                
                <c:if test="${pb.tueam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tueam < 0}"><td></td></c:if>
			    <c:if test="${pb.tueam >0}"><td class="ksorder_kyy"> 
			     <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'am'}&date=${pb.tueam}">预约<br>剩余:${pb.tueam}</a>
			     </td></c:if>
               
                <c:if test="${pb.wenam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.wenam < 0}"><td></td></c:if>
                <c:if test="${pb.wenam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'am'}&date=${pb.wenam}">预约<br>剩余:${pb.wenam}</a>
                 </td></c:if>
                
                <c:if test="${pb.thuam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thuam < 0}"><td></td></c:if>
                <c:if test="${pb.thuam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'am'}&date=${pb.thuam}">预约<br>剩余:${pb.thuam}</a>
                 </td></c:if>
                
         </tr>
         <tr> 
			   
			    
			    <c:if test="${pb.fripm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.fripm < 0}"><td></td></c:if>
			    <c:if test="${pb.fripm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'pm'}&date=${pb.fripm}">预约<br>剩余:${pb.fripm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.satpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.satpm < 0}"><td></td></c:if>
			    <c:if test="${pb.satpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'pm'}&date=${pb.satpm}">预约<br>剩余:${pb.satpm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.sunpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sunpm < 0}"><td></td></c:if>
			    <c:if test="${pb.sunpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'pm'}&date=${pb.sunpm}">预约<br>剩余:${pb.sunpm}</a>
			    </td></c:if>
			    
			     <c:if test="${pb.monpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.monpm < 0}"><td></td></c:if>
			    <c:if test="${pb.monpm >0}"><td class="ksorder_kyy"> 
			     <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'pm'}&date=${pb.monpm}">预约<br>剩余:${pb.monpm}</a>
			     </td></c:if>
                <c:if test="${pb.tuepm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tuepm < 0}"><td></td></c:if>
			    <c:if test="${pb.tuepm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'pm'}&date=${pb.tuepm}">预约<br>剩余:${pb.tuepm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.wenpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.wenpm < 0}"><td></td></c:if>
			    <c:if test="${pb.wenpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'pm'}&date=${pb.wenpm}">预约<br>剩余:${pb.wenpm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.thupm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thupm < 0}"><td></td></c:if>
			    <c:if test="${pb.thupm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'pm'}&date=${pb.thupm}">预约<br>剩余:${pb.thupm}</a>
			    </td></c:if>
         </tr>
		 <tr>
			   
			    
			    <c:if test="${pb.frieve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.frieve < 0}"><td></td></c:if>
			    <c:if test="${pb.frieve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'eve'}&date=${pb.frieve}">预约<br>剩余:${pb.frieve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.sateve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sateve < 0}"><td></td></c:if>
			    <c:if test="${pb.sateve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'eve'}&date=${pb.sateve}">预约<br>剩余:${pb.sateve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.suneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.suneve < 0}"><td></td></c:if>
			    <c:if test="${pb.suneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'eve'}&date=${pb.suneve}">预约<br>剩余:${pb.suneve}</a>
			    </td></c:if>   	
			    
			     <c:if test="${pb.moneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.moneve < 0}"><td></td></c:if>
			    <c:if test="${pb.moneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'eve'}&date=${pb.moneve}">预约<br>剩余:${pb.moneve}</a>
			    </td></c:if>			
				<c:if test="${pb.tueeve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tueeve < 0}"><td></td></c:if>
			    <c:if test="${pb.tueeve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'eve'}&date=${pb.tueeve}">预约<br>剩余:${pb.tueeve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.weneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.weneve < 0}"><td></td></c:if>
			    <c:if test="${pb.weneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'eve'}&date=${pb.weneve}">预约<br>剩余:${pb.weneve}</a></td></c:if>
			    
			    <c:if test="${pb.thueve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thueve < 0}"><td></td></c:if>
			    <c:if test="${pb.thueve >0}"><td class="ksorder_kyy">
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'eve'}&date=${pb.thueve}"> 预约<br>剩余:${pb.thueve}</a>
			    </td></c:if>
		</tr>
        <%} else if(w[1].equals("星期六")){%>
         <tr>  
                
                <c:if test="${pb.satam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.satam < 0}"><td></td></c:if>
                <c:if test="${pb.satam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'am'}&date=${pb.satam}">预约<br>剩余:${pb.satam}</a>
                 </td></c:if>
                
                <c:if test="${pb.sunam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sunam < 0}"><td></td></c:if>
                <c:if test="${pb.sunam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'am'}&date=${pb.sunam}">预约<br>剩余:${pb.sunam}</a>
                 </td></c:if>
                 
                 <c:if test="${pb.monam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.monam < 0}"><td></td></c:if>
                <c:if test="${pb.monam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'am'}&date=${pb.monam}">预约<br>剩余:${pb.monam}</a>
                 </td></c:if>
                
                <c:if test="${pb.tueam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tueam < 0}"><td></td></c:if>
			    <c:if test="${pb.tueam >0}"><td class="ksorder_kyy"> 
			     <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'am'}&date=${pb.tueam}">预约<br>剩余:${pb.tueam}</a>
			     </td></c:if>
               
                <c:if test="${pb.wenam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.wenam < 0}"><td></td></c:if>
                <c:if test="${pb.wenam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'am'}&date=${pb.wenam}">预约<br>剩余:${pb.wenam}</a>
                 </td></c:if>
                
                <c:if test="${pb.thuam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thuam < 0}"><td></td></c:if>
                <c:if test="${pb.thuam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'am'}&date=${pb.thuam}">预约<br>剩余:${pb.thuam}</a>
                 </td></c:if>
                
                <c:if test="${pb.friam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.friam < 0}"><td></td></c:if>
                <c:if test="${pb.friam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'am'}&date=${pb.friam}">预约<br>剩余:${pb.friam}</a>
                 </td></c:if>
               
         </tr>
         <tr>
			  
			    <c:if test="${pb.satpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.satpm < 0}"><td></td></c:if>
			    <c:if test="${pb.satpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'pm'}&date=${pb.satpm}">预约<br>剩余:${pb.satpm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.sunpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sunpm < 0}"><td></td></c:if>
			    <c:if test="${pb.sunpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'pm'}&date=${pb.sunpm}">预约<br>剩余:${pb.sunpm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.monpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.monpm < 0}"><td></td></c:if>
			    <c:if test="${pb.monpm >0}"><td class="ksorder_kyy"> 
			     <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'pm'}&date=${pb.monpm}">预约<br>剩余:${pb.monpm}</a>
			     </td></c:if>
                <c:if test="${pb.tuepm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tuepm < 0}"><td></td></c:if>
			    <c:if test="${pb.tuepm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'pm'}&date=${pb.tuepm}">预约<br>剩余:${pb.tuepm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.wenpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.wenpm < 0}"><td></td></c:if>
			    <c:if test="${pb.wenpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'pm'}&date=${pb.wenpm}">预约<br>剩余:${pb.wenpm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.thupm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thupm < 0}"><td></td></c:if>
			    <c:if test="${pb.thupm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'pm'}&date=${pb.thupm}">预约<br>剩余:${pb.thupm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.fripm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.fripm < 0}"><td></td></c:if>
			    <c:if test="${pb.fripm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'pm'}&date=${pb.fripm}">预约<br>剩余:${pb.fripm}</a>
			    </td></c:if>
			    
			    
         </tr>
		 <tr>
			  
			    <c:if test="${pb.sateve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sateve < 0}"><td></td></c:if>
			    <c:if test="${pb.sateve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'eve'}&date=${pb.sateve}">预约<br>剩余:${pb.sateve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.suneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.suneve < 0}"><td></td></c:if>
			    <c:if test="${pb.suneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'eve'}&date=${pb.suneve}">预约<br>剩余:${pb.suneve}</a>
			    </td></c:if>   	
			        <c:if test="${pb.moneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.moneve < 0}"><td></td></c:if>
			    <c:if test="${pb.moneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'eve'}&date=${pb.moneve}">预约<br>剩余:${pb.moneve}</a>
			    </td></c:if>			
				<c:if test="${pb.tueeve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tueeve < 0}"><td></td></c:if>
			    <c:if test="${pb.tueeve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'eve'}&date=${pb.tueeve}">预约<br>剩余:${pb.tueeve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.weneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.weneve < 0}"><td></td></c:if>
			    <c:if test="${pb.weneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'eve'}&date=${pb.weneve}">预约<br>剩余:${pb.weneve}</a></td></c:if>
			    
			    <c:if test="${pb.thueve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thueve < 0}"><td></td></c:if>
			    <c:if test="${pb.thueve >0}"><td class="ksorder_kyy">
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'eve'}&date=${pb.thueve}"> 预约<br>剩余:${pb.thueve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.frieve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.frieve < 0}"><td></td></c:if>
			    <c:if test="${pb.frieve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'eve'}&date=${pb.frieve}">预约<br>剩余:${pb.frieve}</a>
			    </td></c:if>
			    
		 </tr>
        <%} else if(w[1].equals("星期日")){%>
         <tr>  
               
                
                <c:if test="${pb.sunam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sunam < 0}"><td></td></c:if>
                <c:if test="${pb.sunam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'am'}&date=${pb.sunam}">预约<br>剩余:${pb.sunam}</a>
                 </td></c:if>
                 
                  <c:if test="${pb.monam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.monam < 0}"><td></td></c:if>
                <c:if test="${pb.monam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'am'}&date=${pb.monam}">预约<br>剩余:${pb.monam}</a>
                 </td></c:if>
                
                <c:if test="${pb.tueam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tueam < 0}"><td></td></c:if>
			    <c:if test="${pb.tueam >0}"><td class="ksorder_kyy"> 
			     <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'am'}&date=${pb.tueam}">预约<br>剩余:${pb.tueam}</a>
			     </td></c:if>
               
                <c:if test="${pb.wenam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.wenam < 0}"><td></td></c:if>
                <c:if test="${pb.wenam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'am'}&date=${pb.wenam}">预约<br>剩余:${pb.wenam}</a>
                 </td></c:if>
                
                <c:if test="${pb.thuam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thuam < 0}"><td></td></c:if>
                <c:if test="${pb.thuam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'am'}&date=${pb.thuam}">预约<br>剩余:${pb.thuam}</a>
                 </td></c:if>
                
                <c:if test="${pb.friam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.friam < 0}"><td></td></c:if>
                <c:if test="${pb.friam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'am'}&date=${pb.friam}">预约<br>剩余:${pb.friam}</a>
                 </td></c:if>
               
                <c:if test="${pb.satam == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.satam < 0}"><td></td></c:if>
                <c:if test="${pb.satam >0}"><td class="ksorder_kyy"> 
                 <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'am'}&date=${pb.satam}">预约<br>剩余:${pb.satam}</a>
                 </td></c:if>
                
         </tr>
        <tr>
			 
			    
			    <c:if test="${pb.sunpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sunpm < 0}"><td></td></c:if>
			    <c:if test="${pb.sunpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'pm'}&date=${pb.sunpm}">预约<br>剩余:${pb.sunpm}</a>
			    </td></c:if>
			    
			     <c:if test="${pb.monpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.monpm < 0}"><td></td></c:if>
			    <c:if test="${pb.monpm >0}"><td class="ksorder_kyy"> 
			     <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'pm'}&date=${pb.monpm}">预约<br>剩余:${pb.monpm}</a>
			     </td></c:if>
                <c:if test="${pb.tuepm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tuepm < 0}"><td></td></c:if>
			    <c:if test="${pb.tuepm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'pm'}&date=${pb.tuepm}">预约<br>剩余:${pb.tuepm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.wenpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.wenpm < 0}"><td></td></c:if>
			    <c:if test="${pb.wenpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'pm'}&date=${pb.wenpm}">预约<br>剩余:${pb.wenpm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.thupm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thupm < 0}"><td></td></c:if>
			    <c:if test="${pb.thupm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'pm'}&date=${pb.thupm}">预约<br>剩余:${pb.thupm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.fripm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.fripm < 0}"><td></td></c:if>
			    <c:if test="${pb.fripm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'pm'}&date=${pb.fripm}">预约<br>剩余:${pb.fripm}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.satpm == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.satpm < 0}"><td></td></c:if>
			    <c:if test="${pb.satpm >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'pm'}&date=${pb.satpm}">预约<br>剩余:${pb.satpm}</a>
			    </td></c:if>
			     
         </tr>

		<tr>		  
			    
			    <c:if test="${pb.suneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.suneve < 0}"><td></td></c:if>
			    <c:if test="${pb.suneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d1}&time=${'eve'}&date=${pb.suneve}">预约<br>剩余:${pb.suneve}</a>
			    </td></c:if>   	
			    
			      <c:if test="${pb.moneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.moneve < 0}"><td></td></c:if>
			    <c:if test="${pb.moneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d2}&time=${'eve'}&date=${pb.moneve}">预约<br>剩余:${pb.moneve}</a>
			    </td></c:if>			
				<c:if test="${pb.tueeve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.tueeve < 0}"><td></td></c:if>
			    <c:if test="${pb.tueeve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d3}&time=${'eve'}&date=${pb.tueeve}">预约<br>剩余:${pb.tueeve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.weneve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.weneve < 0}"><td></td></c:if>
			    <c:if test="${pb.weneve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d4}&time=${'eve'}&date=${pb.weneve}">预约<br>剩余:${pb.weneve}</a></td></c:if>
			    
			    <c:if test="${pb.thueve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.thueve < 0}"><td></td></c:if>
			    <c:if test="${pb.thueve >0}"><td class="ksorder_kyy">
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d5}&time=${'eve'}&date=${pb.thueve}"> 预约<br>剩余:${pb.thueve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.frieve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.frieve < 0}"><td></td></c:if>
			    <c:if test="${pb.frieve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d6}&time=${'eve'}&date=${pb.frieve}">预约<br>剩余:${pb.frieve}</a>
			    </td></c:if>
			    
			    <c:if test="${pb.sateve == 0}"><td class="ksorder_ym">约满</td></c:if><c:if test="${pb.sateve < 0}"><td></td></c:if>
			    <c:if test="${pb.sateve >0}"><td class="ksorder_kyy"> 
			    <a href="docpaiban_yuyue.action?param=0&num=${pb.docId}&day=${d7}&time=${'eve'}&date=${pb.sateve}">预约<br>剩余:${pb.sateve}</a>
			    </td></c:if>
			    
		</tr>
        
        <%} %>
			
	   </c:forEach>
        
    </tbody>
  </table>
  </div>
</div>
<div class="ksorder_cen_l_r"></div>
        </div>
        <div class="ksorder_cen_r">
            <div class="ksorder_cen_r_top">
                <h4>预约规则</h4>
                <ul>
                    <li><span>更新时间：</span>每日0：00更新</li>
                    <li><span>预约周期：</span>7天(次日起)
                   	</li>
                    <li><span>停挂时间：</span> 晚8：00停止次日预约挂号</li>
                </ul>
	            <dl>
	            	<dt>特殊规则</dt>
	                <dd><p>  ①首次预约患者,预约时必须填写“亲属姓名”用于建档备查，首次填写后无需再填写；<br>  ②预约成功的医保报销用户请首先确保为本院定点医保用户，首次来院就诊时需到窗口关联医保卡后，再到医院医保自助机取号就诊。预约成功的自费用户请在非医保自助机取号就医；<br>  ③使用身份证以外其它证件注册预约的患者，只能到窗口取号；<br>  ④本院【小儿科】只预约小于14周岁(不包含14周岁)的患儿；<br>  ⑤预约成功后，请患者于就诊当日携带患者本人的有效证件、银行卡、医保卡、及预约识别码到医院自助挂号机上进行取号（医保报销用户须在医保自助机取号，在非医保自助机取号为自费），如预约登记信息有误，则无法正常取号就诊;<br>  ⑥本院【口腔科】下的小儿牙科只对12周岁以下患儿预约。</p><p><br></p></dd>
	            </dl>
            </div>
        </div>
    </div>
    <div id="ksorder_djgh_doctor">
    	<div class="ksorder_djgh_dr1">
        </div>
    </div>
    <div id="ksorder_djgh_mrxg">
     	
    </div>
</div>
  </body>
</html>
