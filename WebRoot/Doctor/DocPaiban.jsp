<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>修改医生排班</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
    <link rel="stylesheet" href="http://127.0.0.1:8080/${pageContext.request.contextPath}/frame/layui/css/layui.css">
    <link rel="stylesheet" href="http://127.0.0.1:8080/${pageContext.request.contextPath}/css/style.css">
    <link rel="icon" href="http://127.0.0.1:8080/${pageContext.request.contextPath}/image/code.png">
  </head>
  
  <body  class="body">
  <div  align="center">
  <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>医生排班信息</legend>
 </fieldset>
 </div>
<%String FindPaiBan=(String)session.getAttribute("FindPaiBan"); %>
<input type="hidden" value=<%=FindPaiBan %> id="mark">
 <form action="Doctor/ChangPaiBan.action?id=<s:property value="idint"/> "  method="post"  class="layui-form" >
  <div align="center">
    <table  border="2" height="400" class="layui-table">
      <tr>
        <th>周\时段</th>
        <th>上午</th>
        <th>下午</th>
        <th>晚上</th>
      </tr>
      <tr>
        <th>周一</th>
         <td>
	         <s:if  test=" docpaiban.monam>0&&docpaiban.monam<=4 "><input type="checkbox"  value="4" name="docpaiban.monam" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
	         <s:else><input type="checkbox"  value="4" name="docpaiban.monam"  lay-skin="switch"   lay-text="在岗|休息"  ></s:else>
         </td>
          <td>
             <s:if  test="docpaiban.monpm>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.monpm" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
        	 <s:else><input type="checkbox"  value="4" name="docpaiban.monpm" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
        </td>
         <td>
	         <s:if  test="docpaiban.moneve>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.moneve" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
	         <s:else><input type="checkbox"  value="4" name="docpaiban.moneve" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
        </td>
      </tr>
      
      <tr>
        <th>周二</th>
             <td>
	         <s:if  test="docpaiban.tueam>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.tueam" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
	         <s:else><input type="checkbox"  value="4" name="docpaiban.tueam" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
         </td>
          <td>
             <s:if  test="docpaiban.tuepm>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.tuepm" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
        	 <s:else><input type="checkbox"  value="4" name="docpaiban.tuepm" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
        </td>
         <td>
	         <s:if  test="docpaiban.tueeve>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.tueeve" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
	         <s:else><input type="checkbox"  value="4" name="docpaiban.tueeve" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
        </td>
      </tr>
       
 <tr>
 
 
        <th>周三</th>
             <td>
	         <s:if  test="docpaiban.wenam>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.wenam" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
	         <s:else><input type="checkbox"  value="4" name="docpaiban.wenam" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
         </td>
          <td>
             <s:if  test="docpaiban.wenpm>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.wenpm" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
        	 <s:else><input type="checkbox"  value="4" name="docpaiban.wenpm" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
        </td>
         <td>
	         <s:if  test="docpaiban.weneve>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.weneve" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
	         <s:else><input type="checkbox"  value="4" name="docpaiban.weneve" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
        </td>
      </tr>
      
      
      
           <tr>
        <th>周四</th>
             <td>
	         <s:if  test="docpaiban.thuam>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.thuam" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
	         <s:else><input type="checkbox"  value="4" name="docpaiban.thuam" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
         </td>
          <td>
             <s:if  test="docpaiban.thupm>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.thupm" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
        	 <s:else><input type="checkbox"  value="4" name="docpaiban.thupm" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
        </td>
         <td>
	         <s:if  test="docpaiban.thueve>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.thueve" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
	         <s:else><input type="checkbox"  value="4" name="docpaiban.thueve" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
        </td>
      </tr>
          <tr>
          
          
          
          
        <th>周五</th>
             <td>
	         <s:if  test="docpaiban.friam>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.friam" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
	         <s:else><input type="checkbox"  value="4" name="docpaiban.friam" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
         </td>
          <td>
             <s:if  test="docpaiban.fripm>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.fripm" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
        	 <s:else><input type="checkbox"  value="4" name="docpaiban.fripm" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
        </td>
         <td>
	         <s:if  test="docpaiban.frieve>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.frieve" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
	         <s:else><input type="checkbox"  value="4" name="docpaiban.frieve" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
        </td>
      </tr>
      
      
      
      
          <tr>
        <th>周六</th>
             <td>
	         <s:if  test="docpaiban.satam>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.satam" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
	         <s:else><input type="checkbox"  value="4" name="docpaiban.satam" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
         </td>
          <td>
             <s:if  test="docpaiban.satpm>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.satpm" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
        	 <s:else><input type="checkbox"  value="4" name="docpaiban.satpm" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
        </td>
         <td>
	         <s:if  test="docpaiban.sateve>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.sateve" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
	         <s:else><input type="checkbox"  value="4" name="docpaiban.sateve" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
        </td>
      </tr>
      
      
      
      
          <tr>
        <th>周日</th>
             <td>
	         <s:if  test="docpaiban.sunam>0&&docpaiban.monam<=4"><input type="checkbox"  value="4"  value="4"  name="docpaiban.sunam" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
	         <s:else><input type="checkbox"  value="4" name="docpaiban.sunam" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
         </td>
          <td>
             <s:if  test="docpaiban.sunpm>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.sunpm" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
        	 <s:else><input type="checkbox"  value="4" name="docpaiban.sunpm" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
        </td>
         <td>
	         <s:if  test="docpaiban.suneve>0&&docpaiban.monam<=4"><input type="checkbox"  value="4" name="docpaiban.suneve" lay-skin="switch"  lay-text="在岗|休息"   checked></s:if>
	         <s:else><input type="checkbox"  value="4" name="docpaiban.suneve" lay-skin="switch"  lay-text="在岗|休息"  ></s:else>
        </td>
      </tr>
      
      <tr>
        <td colspan="4">
        <div class="layui-input-block">
	            <a href="javascript:;" class="layui-btn"  onclick="Change();">修改排班</a>
	            <button class="layui-btn layui-btn-disabled"  lay-submit="" lay-filter="demo1" disabled  id="subnow">立即提交</button>
       	  </div>
        </td>
      </tr>
    </table>
  </div>
  </form>
    <script type="text/javascript" src="http://127.0.0.1:8080/${pageContext.request.contextPath}/js/Zidingyi.js"></script>
    <script src="http://127.0.0.1:8080/${pageContext.request.contextPath}/frame/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript">
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form()
                ,layer = layui.layer
                ,layedit = layui.layedit
                ,laydate = layui.laydate
                ,$=layui.jquery;
         $("input").attr('disabled',true);
         var mark=document.getElementById("mark").value;
         if(mark!="数据更新成功！")
         {
         	layer.msg(mark);
         }
        window.Change=function()
        {
        		$('#subnow').removeClass("layui-btn-disabled");
                $('#subnow').attr('disabled',false);
                $("input").removeAttr("disabled");
        	return false;
        };        

});
    </script>
  </body>
</html>
