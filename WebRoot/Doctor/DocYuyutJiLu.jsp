<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@ taglib prefix="s" uri="/struts-tags"%>  
<html>
<head>
<title>预约记录</title>
<meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
         <link rel="stylesheet" href="http://127.0.0.1:8080/${pageContext.request.contextPath}/css/page.css" media="all" />
         <link rel="stylesheet" href="http://127.0.0.1:8080/${pageContext.request.contextPath}/frame/layui/css/layui.css">
        <link rel="stylesheet" href="http://127.0.0.1:8080/${pageContext.request.contextPath}/css/style.css">
        <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
</head>
<body>
<%String reslut=(String)request.getAttribute("reslut"); %>
<input type="hidden" value=<%=reslut %> id="reslut">
<input type="hidden" value='<s:property value="page.totalPage"/>' id="totalPage" >
 <input type="hidden" value='<s:property value="page.currentPage"/>' id="currentPage" >
            <fieldset class="layui-elem-field">
                <div class="layui-field-box layui-form">
                    <table class="layui-table admin-table">
                        <thead>
              <tr>
		        <th>编号</th>
		        <th>患者姓名</th>
		        <th>预约日期</th>
		        <th>时&nbsp;间&nbsp;段</th>
		        <th>预约提示</th>
        </tr>
        <% int x=0;%>
        <tr>
        <s:iterator  value="orders" >
                 <td><%x++; %><%=x%></td>
      			<td><s:property value="userName"></s:property></td>
                <td><s:property value="date"></s:property></td>
                <td><s:property value="time"></s:property></td>
                <td><s:property value="type"></s:property></td>
                <tr></tr>
         </s:iterator>
         </tr>
    </tbody>
  </table>
       </div>
        <div id="page"></div>
                        </fieldset>
</body>
</html>