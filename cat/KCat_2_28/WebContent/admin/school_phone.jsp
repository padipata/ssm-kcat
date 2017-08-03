<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">   <!--中文语言-->
	<head>
		<meta charset="UTF-8">   
		<meta http-equiv="x-ua-compatible" content="IE=Edge"> <!--IE8标准渲染模式-->
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
		<title>K-Cat后台管理</title>
<!-- 引入 Bootstrap -->
		<link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
		<script src="https://code.jquery.com/jquery.js"></script>
<!-- 包括所有已编译的插件 -->
		<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="css/bootstrap-maizi.css" /> <!-- 覆盖原生样式-->
	</head>
	
<body>
	<!--导航s-->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<!--小屏幕按钮-->
				<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
		            <span class="sr-only">切换导航</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		        </button>
				<!--logo-->
				<a class="navbar-brand" href="index.jsp">K-Cat Admin</a>
			</div>

			<!-- 导航内容-->
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li>
						<a href="index.jsp"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;后台首页</a>
					</li>
					<li>
						<a href="user_list.jsp"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;用户管理</a>
					</li>
					<li class="active">
						<a href="zhuanye.jsp"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;内容管理</a>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">

					<li class="dropdown">
						<!--修改div为li-->
						<a type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							admin
							<span class="caret"></span>
						</a>
						<!-- 修改button为a -->
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li>
								<a href="index.jsp"><span class="glyphicon glyphicon-screenshot"></span>&nbsp;&nbsp;前台首页</a>
							</li>
							<li>
								<a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;个人主页</a>
							</li>
							<li>
								<a href="#"><span class="glyphicon glyphicon-asterisk"></span>&nbsp;&nbsp;个人设置</a>
							</li>
							<li>
								<a href="#"><span class="glyphicon glyphicon-credit-card"></span>&nbsp;&nbsp;账户中心</a>
							</li>
							<li>
								<a href="#"><span class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;我的收藏</a>
							</li>
						</ul>
					</li>

					<li>
						<a href="#bbs"><span class="glyphicon glyphicon-off"></span>&nbsp;&nbsp;退出</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!--导航e-->

	<div class="container">
		<div class="row">
			<!--用户列表小导航s-->
			<div class="col-md-2">
				<div class="list-group">
					<a href="zhuanye.jsp" class="list-group-item">专业软件</a>
					<a href="bang.jsp" class="list-group-item">帮帮帮</a>
					<a href="content_post.jsp" class="list-group-item  active">校园电话</a>
					<a href="aboutMe.jsp" class="list-group-item">关于我们</a>

				</div>
			</div>
			<!--用户列表小导航e-->

			<!--用户列表内容s-->
			<div class="col-md-10">
				<div class="page-header">
					<h1>专业软件</h1>
				</div>
				<ul class="nav nav-tabs">
					<li>
						<a href="zhuanye.jsp">专业软件</a>
					</li>
					<li>
						<a href="bang.jsp">帮帮帮</a>
					</li>
					<li class="active">
						<a href="content_post.jsp">校园电话</a>
					</li>
					<li>
						<a href="aboutMe.jsp">关于我们</a>
					</li>
				</ul>

				<!--上传校园电话内容s-->
				<form action="#" class="user_search" style="height: 470px;">
					<div class="form-group">
						<label for="name">名称</label>
						<input type="text" id="name" class="form-control" placeholder="请输入商家名称" />
					</div>
					<div class="form-group">
						<label for="name">链接地址</label>
						<input type="text" id="name" class="form-control" placeholder="请输入课程链接地址" />
					</div>
					<div class="form-group">
						<label for="name">电话</label>
						<input type="text" id="name" class="form-control" placeholder="请输入商家电话" />
					</div>
					<div class="form-group">
						<label for="name">图片上传</label>
						<div class="col-md-12"><img src="#" class="img-rounded mar_b15" style="width: 100px; height: 100px;" /></div>
						<div class="col-md-10"><input type="text" id="name" class="form-control" placeholder="请选择要上传的图片" /></div>
						<div class="col-md-2"><button type="submit" class="btn btn-default">上传</button></div>
					</div>

					<button type="submit" class="btn btn-default col-md-12 mar_t15">提交</button>
					
				</form>

				<!--上传校园电话内容e-->

			</div>
		</div>
	</div>
	
	<!--脚部s-->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<p>
						网站仅供学习交流&nbsp;&nbsp;Copyright&nbsp;&nbsp;©&nbsp;&nbsp;2017&nbsp;K-Cat科猫网&nbsp;inc.
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!--脚部e-->

</body>
</html>




