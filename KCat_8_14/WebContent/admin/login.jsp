<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">   <!--中文语言-->
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="/favicon.ico" >
<link rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<link href="static/h-ui.admin/css/login.css" type="text/css" rel="stylesheet"> 
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<!--/meta 作为公共模版分离出去-->

<title>KCat-Admin</title>
</head>
<body> 
	<div class="login">
	    <div class="message">KCat科猫网-后台管理系统</div>
	    <div id="darkbannerwrap"></div>
	    
	    <form action="" method="post" class="form form-horizontal" id="form-member-add">
			<input name="action" value="login" type="hidden">
			<div class="row cl">
				<div class="formControls col-xs-8 col-sm-9">
					<input style="width:300px" type="text" class="input-text" value="" placeholder="账号" id="userName" name="userName">
				</div>
			</div>
			<hr class="hr15">
			<div class="row cl">
				<div class="formControls col-xs-8 col-sm-9">
					<input style="width:300px" type="password" class="input-text" value="" placeholder="密码" id="password" name="password">
				</div>
			</div>
			<hr class="hr15">
			<input value="登录" style="width:100%;" type="submit">
			<hr class="hr20">
		</form>
	</div>
	
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本--> 
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript">
$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});

	$("#form-member-add").validate({
		rules:{
			userName:{
				required:true,
			},
			password:{
				required:true,
			},
		},
		onkeyup:false,
		focusCleanup:true,
		success:"valid",
		submitHandler:function(form){
			$.post("${pageContext.request.contextPath}/admin_login.do",{userName:$("#userName").val(),userPwd:$("#password").val()},function(data){
				if(data){
					layer.msg('登录成功',{time: 1000, icon: 1},function(){
						window.location="${pageContext.request.contextPath}/admin/index.jsp";
					});
				}else{
					layer.msg('登录失败，请检查账号和密码',{time: 1000, icon: 2},function(){
					});
				}
			});
		}
	});
});
</script> 
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>