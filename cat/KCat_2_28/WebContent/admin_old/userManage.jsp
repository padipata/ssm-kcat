<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理页面</title>
</head>
<script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/demo.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>

<script type="text/javascript">
$(function(){

 	$.ajaxSetup({async:false});
	var html="";
	$.post("${pageContext.request.contextPath}/back/getPartUser.do",function(data){  //循环标题
		$.each(data,function(i,e){	
			html+="<tr><td>"+(i+1)+"</td><td>"+data[i].userName+"</td><td>"+data[i].userPwd+"</td><td>"+data[i].email+"</td><td>"+data[i].sex+"</td><td>"+data[i].birthday+"</td><td>"+data[i].date+"</td><td><input type='button' value='修改' class='modify' lang='"+data[i].id+"'/></td><td><input type='button' value='删除' class='delete' lang='"+data[i].id+"'/></td></tr>";
		});
		$("#content").append(html); 
	});
	$(".delete").click(function(){
		var flag=confirm("是否删除这个教室信息");
		if(!flag){
			return;
		}
		$.post("${pageContext.request.contextPath}/back/deleteUser.do",{"id":this.lang},function(){   //为了提示框，不用直接调用.do链接的方式
			location.reload();   //重新刷新页面
		});
	});	
	$(".modify").click(function(){
		$.post("${pageContext.request.contextPath}/back/findUserById.do",{"id":this.lang},function(data){
			 $("#w [name='id']").val(data.id);
		     $("#w [name='userName']").val(data.userName);
		     $("#w [name='userPwd']").val(data.userPwd);
		     $("#w [name='email']").val(data.email);
		     $("#w [name='sex']").val(data.sex);
		     $("#w [name='birthday']").val(data.birthday);
		     $("#w [name='date']").val(data.date);
		} );		
		$('#w').window('open');
	});
	$("#save").click(function(){
		$.post("${pageContext.request.contextPath}/back/modifyUser.do",
				{"id":$("#w [name='id']").val(),
				 "userName":$("#w [name='userName']").val(),
				 "userPwd":$("#w [name='userPwd']").val(),
				 "email":$("#w [name='email']").val(),
				 "sex":$("#w [name='sex']").val(),
				 "birthday":$("#w [name='birthday']").val(),
				 "date":$("#w [name='date']").val()
				},function(){
					alert("代码执行完毕，即将关闭窗口");
		});
		$('#w').window('close');   //关闭窗口,需要编写在外面
		location.reload();    //刷新页面
	});
	
});
</script>


<body>


<div>
<!-- 弹出修改窗口 -->
	<div id="w" class="easyui-window" title="Modal Window" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width:500px;height:200px;padding:10px;">
		用户名称:<input type="text" name="userName"/> <br/>
		<input type="hidden" name="id"/>
		用户密码:<input type="text" name="userPwd"/><br/>
		e-mail:<input type="text" name="email"/><br/>
		性别:<input type="text" name="sex"/><br/>
		生日:<input type="text" name="birthday"/><br/>
		注册日期：<input type="text" name="date"/><br/>
		<s:token></s:token>
		<input type="button" id="save" value="修改"/>
	</div>
<!-- 弹出窗口结束 -->

	<form>
		<table id="content">
			<tr><td>序号</td><td>用户名</td><td>密码</td><td>e-mail</td><td>性别</td><td>生日</td><td>注册日期</td><td>修改</td><td>删除</td></tr>
		</table>
	</form>
</div>






	
</body>
</html>