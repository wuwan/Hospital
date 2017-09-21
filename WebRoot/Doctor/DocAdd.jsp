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
    <title>添加医生信息</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
    <link rel="stylesheet" href="http://127.0.0.1:8080/${pageContext.request.contextPath}/frame/layui/css/layui.css">
    <link rel="stylesheet" href="http://127.0.0.1:8080/${pageContext.request.contextPath}/css/style.css">
    <link rel="icon" href="http://127.0.0.1:8080/${pageContext.request.contextPath}/image/code.png">
  </head>
  
  <body>
  <%String reslut=(String)session.getAttribute("Reslut"); %>
  <input type="hidden" value=<%=reslut %> id="reslut">
  <div  align="center">
  <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>添加医生信息</legend>
 </fieldset>
 </div>
 <form action="AddUser.action?mark=2"  method="post"  class="layui-form" >
  <div align="center">
    <table width="55%" height="600" border="0" >
      <tr>
        <td width="75" height="40"><div align="left">  <label class="layui-form-label">医生姓名</label></div></td>
        <td width="75%" height="40">
            <input type="text" name="user.userName" lay-verify="title" autocomplete="off" placeholder="6~20位用户名" class="layui-input">
      </tr>
      <tr>
        <td width="75" height="40"><div class="layui-form-label">医生年龄</div></td>
        <td height="40"><div align="left"> <input type="number" min="18" max="100"  name="user.userAge" lay-verify="number" autocomplete="off" class="layui-input"></div></td>
      </tr>
      <tr>
        <td width="75" height="40"><div class="layui-form-label">医生QQ</div></td>
        <td height="40"><div align="left"> <input type="number"   name="user.userQq" lay-verify="number" autocomplete="off" class="layui-input"></div></td>
      </tr>
      <tr>
        <td width="75" height="40"><div class="layui-form-label">医生职称</div></td>
        <td height="40"><div align="left"> <input type="text"   name="user.docTitle"  autocomplete="off"  class="layui-input"></div></td>
      </tr>
      <tr>
        <td width="75" height="40"><div align="left" class="layui-form-label">电话号码</div></td>
        <td height="40"><div align="left">
                    <input type="tel" name="user.userPhone" lay-verify="phone" autocomplete="off" class="layui-input">
        </div></td>
      </tr>
      <tr>
        <td height="40"><div align="left" class="layui-form-label">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 码</div></td>
        <td height="40">
        <div class="layui-form-item">
            <input type="password" name="user.passWord" id="psw" lay-verify="pass" placeholder="6~12位密码" autocomplete="off" class="layui-input">
        </div>
        </td>
      </tr>
      <tr>
        <td height="40"><div class="layui-form-label">确认密码</div></td>
        <td height="40">
        <div class="layui-form-item">
            <input type="password"  id="psw1"  lay-verify="pass" placeholder="确认密码" autocomplete="off" class="layui-input">
        </div>
        </td>
      </tr>
      <tr>
        <td width="75" height="40"><div align="left" class="layui-form-label">所在医院</div></td>
        <td height="40"><div align="left">
         <select name="user.docBelongHos" lay-filter="aihao" class="layui-input">
                <option value="汉东省人民医院">汉东省人民医院</option>
            </select>
        </div>
        </td>
      </tr>
      <tr>
        <td width="75" height="40"><div align="left" class="layui-form-label">所属部门</div></td>
        <td height="40"><div align="left">
          <select name="user.docBelongPart" lay-filter="aihao" class="layui-input">
                 <s:iterator value="parts">
                <option value='<s:property value="partName"/>'><s:property value="partName"/></option>
                </s:iterator>
            </select>
        </div></td>
      </tr>
      <tr>
        <td width="75" height="40"><div align="left" class="layui-form-label">所属科室</div></td>
        <td height="40"><div align="left">
          <select name="user.department.name" lay-filter="aihao" class="layui-input">
			 <s:iterator value="departments">
                <option value='<s:property value="name"/>'><s:property value="name"/></option>
                </s:iterator>
         </select>
        </div></td>
      </tr>
      <tr>
        <td width="75" height="40"><div class="layui-form-label">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 别</div></td>
        <td height="40">
        <div class="layui-input-block">
            <input type="radio" name="user.userSex" value="男" title="男" checked="">
            <input type="radio" name="user.userSex" value="女" title="女">
        </div>
        </td>
      </tr>
      <tr>
        <td height="40" colspan="2">
         <div class="layui-form-item">
            <div align="left">
              <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
         </div>
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
                ,laydate = layui.laydate;

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length < 3){
                    return '用户名过短';
                }
                else if(value.length >20)
                {
                 	return '用户名过长';
                }
            }
            ,pass: [/(.+){6,12}$/, '密码必须6到12位']
        });
        //监听提交
//         form.on('submit(demo1)', function(data){
//             layer.alert(JSON.stringify(data.field), {
//                 title: '最终的提交信息'
//             });
//             return false;
//         });
		var reslut=document.getElementById("reslut").value;
		if(reslut!="null")
		{
				layer.msg(reslut);
		}
    });
    </script>
  </body>
</html>
