<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@ taglib prefix="s" uri="/struts-tags"%>  
<html>
<head>
<title>病患管理</title>
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
            <fieldset class="layui-elem-field">
                <div class="layui-field-box layui-form">
                    <table class="layui-table admin-table">
                        <thead>
              <tr>
		        <th>编号</th>
		        <th>姓名</th>
		        <th>性别</th>
		        <th>年龄</th>
		        <th>操 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作</th>
        </tr>
        <% int x=0;%>
        <tr>
        <s:iterator  value="page.dataList" >
                 <td><%x++; %><%=x%></td>
      			<td><s:property value="userName"></s:property></td>
                <td><s:property value="userSex"></s:property></td>
                <td><s:property value="userAge"></s:property></td>
                <td>
                <a  href="UserMessage.action?id=<s:property value="id"/>&from=1" class="layui-btn layui-btn-small layui-btn-normal"  >修改信息</a>
                <button  class="layui-btn  layui-btn-small layui-btn-danger"  onclick="del(this,<s:property value="id"/>);" >删除</button>
                </td>
                <tr></tr>
         </s:iterator>
         </tr>
    </tbody>
  </table>
       </div>
                        </fieldset>
   <div class="beg-table-paged"></div>
     <script type="text/javascript" src="http://127.0.0.1:8080/${pageContext.request.contextPath}/js/table-tool.js"></script>
 <script type="text/javascript" src="http://127.0.0.1:8080/${pageContext.request.contextPath}/frame/layui/layui.js"></script>
 <script type="text/javascript" src="http://127.0.0.1:8080/${pageContext.request.contextPath}/frame/layui/lay/modules/laypage.js"></script>
	<script type="text/javascript">
   layui.use(['laypage','layer'], function() {
           var layer = layui.layer;
           var  $=layui.jquery;
           var laypage=layui.laypage;
           var reslut=document.getElementById("reslut").value;
           if(reslut!=null&&reslut!="null")
           {
           		layer.msg(reslut);
           }
					
			   window.del=function(obj,id)
             {
                    
                 layer.confirm("确定要移除该病人？", {icon:3} ,function(index)
                 {
                     $.ajax({ 
                                         type:"POST",
                                         url: "Doctor/DelDoc.action?id="+id+"",
                                         async:false,
                                          contentType: "application/json; charset=utf-8",
                                         scriptCharset:'UTF-8',
                                        error : function(XMLHttpRequest, textStatus, errorThrown)
                                        {
                                             layer.alert("删除失败"+errorThrown,{icon: 2});
                                         },
                                         success: function()
                                         {
                                            layer.closeAll();
                                            layer.msg(' 删除成功！' , {icon: 1});
                                            $(obj).parents("tr").remove();
                                         }
                                   });
                 });
             };
        
		});     
</script> 
</body>
</html>