<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!user.docTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
    <base href="<%=basePath%>">
    <title>医生个人信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
    <link rel="stylesheet" href="http://127.0.0.1:8080/${pageContext.request.contextPath}/frame/layui/css/layui.css">
    <link rel="stylesheet" href="http://127.0.0.1:8080/${pageContext.request.contextPath}/css/style.css">
    <link rel="icon" href="http://127.0.0.1:8080/${pageContext.request.contextPath}/image/code.png">
  </head>
<body>
  <div align="center">
  <table width="80%" border="0" height="500" class="table">
  <tr>
    <td width="20%" height="40">姓名</td>
    <td width="80%">
      <input type="text" value='<s:property value="user.userName"  />' class="layui-input" readonly >
      </td>
  </tr>
  <tr>
    <td height="40">性别</td>
    <td><input type="text" value='<s:property  value="user.userSex" />'   class="layui-input"  readonly></td>
  </tr>
  <tr>
    <td height="40">年龄</td>
    <td><input type="number"  value='<s:property  value="user.userAge" />'     class="layui-input" readonly></td>
  </tr>
  <tr>
    <td height="40">所属医院</td>
    <td><s:if test="user.docBelongHos!=null"><input type="text" value='<s:property value=" user.docBelongHos" />' class="layui-input" readonly></s:if>
    <s:else><input type="text" value="暂无信息" class="layui-input" readonly></s:else>
    </td>
  </tr>
  <tr>
    <td height="40">所在部门</td>
    <td><s:if test="user.docBelongPart != null"><input type="text" value='<s:property  value=" user.docBelongPart"  />' class="layui-input" readonly></s:if>
     <s:else><input type="text" value="暂无信息" class="layui-input" readonly></s:else>
    </td>
  </tr>
  <tr>
    <td height="40">所在科室</td>
    <td><s:if test="department.name !=null"><input type="text"   value='<s:property value=" department.name"  />'  class="layui-input" readonly></s:if>
   <s:else><input type="text" value="暂无信息" class="layui-input" readonly></s:else>
    </td>
  </tr>
  <tr>
    <td height="40">目前职称</td>
    <td><s:if test="user.docTitle!=null"><input type="text"   value='<s:property value=" user.docTitle" />'   class="layui-input" readonly></s:if>
    <s:else><input type="text" value="暂无信息" class="layui-input" readonly></s:else>
    </td>
  </tr>
  <tr>
    <td height="40">用户评级</td>
    <td><s:if test="user.docLevel !=null"><input type="text"   value='<s:property value=" user.docLevel"   />' class="layui-input" readonly></s:if>
    <s:else><input type="text" value="1" class="layui-input" readonly></s:else>
    </td>
  </tr>
</table>
</div>
</body>
</html>
