<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@ taglib prefix="s" uri="/struts-tags"%>  
<html>
<head>
<title>我的需求</title>
<meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
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
		        <th>姓名</th>
		        <th>性别</th>
		        <th>年龄</th>
		        <th>所属医院</th>
		        <th>所在部门</th>
		        <th>综合评分</th>
		        <th>职称</th>
		        <th>操 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作</th>
        </tr>
        <% int x=0;%>
        <tr>
        <s:iterator  value="page.dataList" >
                 <td><%x++; %><%=x%></td>
      			<td><s:property value="userName"></s:property></td>
                <td><s:property value="userSex"></s:property></td>
                <td><s:property value="userAge"></s:property></td>
                <td><s:property value="docBelongHos"></s:property></td>
                <td><s:property value="docBelongPart"></s:property></td>
                 <td><s:property value="docLevel"></s:property></td>
                <td><s:property value="docTitle"></s:property></td>
                <td>
                <a  href="tencent://message/?uin=<s:property value="userQq"></s:property>&Site=www.baidu.com&Menu=yes"><img
				border="0" SRC="http://wpa.qq.com/pa?p=1:200864103:7" alt="咨询医生">
				</a>
                </td>
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