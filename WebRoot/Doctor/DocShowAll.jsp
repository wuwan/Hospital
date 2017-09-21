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
		        <th>姓名</th>
		        <th>性别</th>
		        <th>年龄</th>
		        <th>所属医院</th>
		        <th>所在部门</th>
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
                <td><s:property value="docTitle"></s:property></td>
                <td>
                <button  class=" layui-btn layui-btn-small"  onclick="watch(<s:property value="id"/>);" >排班信息</button>
                <a  href="UserMessage.action?id=<s:property value="id"/>&from='2'" class="layui-btn layui-btn-small layui-btn-normal"  >修改信息</a>
                <button  class="layui-btn  layui-btn-small layui-btn-danger"  onclick="del(this,<s:property value="id"/>);" >删除</button>
                </td>
                <tr></tr>
         </s:iterator>
         </tr>
    </tbody>
  </table>
       </div>
        <div id="page"></div>
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
           var totalPage=document.getElementById("totalPage").value;
           var reslut=document.getElementById("reslut").value;
           var currentPage=document.getElementById("currentPage").value;
           if(reslut!=null&&reslut!="null")
           {
           		layer.msg(reslut);
           }
			           laypage({
										  cont: 'page' , //容器。值支持id名、原生dom对象，jquery对象,
										  pages:  totalPage, //总页数
										  skin: 'yahei', //加载内置皮肤，也可以直接赋值16进制颜色值，如:#c00
										  skip: true, //是否开启跳页
										  groups: 3 ,//连续显示分页数
										  curr: currentPage,//当前页
										  jump:''
					});
					window.watch=function(id)
					{
						layer.open({
                              title: '排班信息管理',
                             maxmin: true,
                             type:2,
                            content: 'Doctor/FindPaiban.action?id='+id,
                            area: ['650px', '400px']
                         
                            });
					};
					
			   window.del=function(obj,id)
             {
                    
                 layer.confirm("确定要移除该医生？", {icon:3} ,function(index)
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