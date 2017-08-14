<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html lang="zh-CN">   <!--中文语言-->
	<head>
		<meta charset="UTF-8">   
		<meta http-equiv="x-ua-compatible" content="IE=Edge"> <!--IE8标准渲染模式-->
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
		<title>K-Cat后台管理</title>	
<!-- 包括所有已编译的插件 -->
		<script type="text/javascript" src="../dist/jquery.min.js"></script>
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="css/bootstrap-maizi.css" /> <!-- 覆盖原生样式-->
		<script src="js/Chart.js"></script>
		<script src="js/script.js"></script>
		
	</head>
	
	<body>
<!--导航s-->
		<nav class="navbar navbar-default navbar-fixed-top">
		    <div class="container">
		    <div class="navbar-header">
	<!--小屏幕按钮-->
		        <button class="navbar-toggle" data-toggle="collapse"
		                data-target=".navbar-collapse">
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
		            <li class="active"><a href="index.jsp"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;后台首页</a></li>
		            <li><a href="user_list.jsp"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;用户管理</a></li>
		            <li><a href="zhuanye.jsp"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;内容管理</a></li>
		        </ul>
		        <ul class="nav navbar-nav navbar-right">
		            
					<li class="dropdown">  <!--修改div为li-->
						<a type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					    admin
					    		<span class="caret"></span>
					    </a>  <!-- 修改button为a -->
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
		            
		            <li><a href="#bbs"><span class="glyphicon glyphicon-off"></span>&nbsp;&nbsp;退出</a></li>
		        </ul>
		    </div>
		    </div>
		</nav>
<!--导航e-->

		<div class="container">			<!--警告框放在栅格系统中-->
			<div class="row">


<!--留言板s-->
				<div class="col-md-12">
					<div class="panel panel-default">
						<!--添加一个面板-->
						<div class="panel-heading">团队留言板</div>
						<div class="panel-body">
							<div class="col-md-7">
								<div class="media well"> <!-- well为边框-->
									<div class="media-left">
										<a href="#">
											<img class="media-object ph64" src="images/a.png" alt="卓大哥">
										</a>
									</div>
									<div class="media-body">
										<h4 class="media-heading">卓大哥</h4>
										技术大哥，今晚请把网站程序升级一下哈，现在的系统有漏洞，安全起见！
									</div>
								</div>
							
								<div class="media well">  <!--well为边框-->
									<div class="media-body text-right">
										<h4 class="media-heading">技术王</h4>
										收到，今晚凌晨2点准时升级！	
									</div>
									<div class="media-right">
										<a href="#">
											<img class="media-object ph64" src="images/i.png" alt="卓大哥">
										</a>
									</div>
								</div>
							
								<div class="media well">
									<div class="media-body text-right">
										<h4 class="media-heading">技术王</h4>
										你先在站点发布一下通知哈！	
									</div>
									<div class="media-right">
										<a href="#">
											<img class="media-object ph64" src="images/i.png" alt="卓大哥">
										</a>
									</div>
								</div>
							
								<div class="media well">
									<div class="media-left">
										<a href="#">
											<img class="media-object ph64" src="images/a.png" alt="卓大哥">
										</a>
									</div>
									<div class="media-body">
										<h4 class="media-heading">卓大哥</h4>
										好嘞。
									</div>
								</div>
							</div>
							
							<div class="col-md-5">
								<form action="#">
									<div class="form-group">
										<label for="text1">输入留言内容</label>
										<textarea class="form-control" id="text1" rows="5" cols="10" placeholder="请输入留言内容"></textarea>
										<button type="submit" class="btn btn-default mar_t15">留言</button>
									</div>
								</form>
								<div class="panel panel-default">
									<!--添加一个面板-->
									<div class="panel-heading">团队联系手册</div>
									<div class="panel-body">
										<ul class="list-group">
											<li class="list-group-item">站长(李小龙)：<span class="glyphicon glyphicon-phone"></span>&nbsp;&nbsp;13134848615</li>
											<li class="list-group-item">技术(大牛哥)：<span class="glyphicon glyphicon-phone"></span>&nbsp;&nbsp;13456127694</li>
											<li class="list-group-item">推广(张二哥)：<span class="glyphicon glyphicon-phone"></span>&nbsp;&nbsp;13457815482</li>
											<li class="list-group-item">客服(王女士)：<span class="glyphicon glyphicon-phone"></span>&nbsp;&nbsp;13134567782&nbsp;&nbsp;<span class="glyphicon glyphicon-phone-alt"></span>&nbsp;&nbsp;028-888888</li>

										</ul>	
									</div>
								</div>
							</div>
						</div>	
					</div>		
				</div>
<!--留言板e-->

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




