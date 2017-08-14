<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if lt IE 8]><script>window.location.href="${pageContext.request.contextPath}/error/index.jsp"</script><![endif]-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>K-Cat</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="Shortcut Icon" href="http://kcat-1251241286.cosgz.myqcloud.com/images/index/tubiao.ico">
<script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery.min.1.7.1.js"></script>
<script type="text/javascript">
	jQuery(function($) {
		$('#nav').onePageNav({
	    begin: function() {
		  	console.log('start');
	    },
	    end: function() {
		  console.log('stop');
	    },
		scrollOffset: 30
	  });
	});
</script> 



</head>

<body>
<!-- nav开始 -->
<%@ include file="../visitor/pageheader_top.jsp" %>

	<ul id="nav" class="topnav l">
      <li class="current"><a href="#section-1" style="display:none"></a></li>
      <li><a class="juli" href="#section-2">专业软件</a></li>
      <li><a href="#section-3">娱乐软件</a></li>
      <li><a href="#section-4">作业辅助</a></li>
      <li><a href="#section-5">帮帮帮</a></li>
      <li><a href="#section-6">校园电话</a></li>
	  <!-- <li><a href="${pageContext.request.contextPath}/visitor/about.jsp">关于我们</a></li> -->
    </ul>
    
<%@ include file="../visitor/pageheader_bottom.jsp" %>
<!-- nav结束 -->

	

<div id="container">
  <div id="section-1" class="section"></div>
  <div id="section-2" class="section">
    <div class="wp">
      <div class="tuwen">
        <div class="tuwennr">
          <h2 class="title">专业软件</h2>
          <p class="info">在为找不到软件感到烦恼？　/　在为软件自带病毒感到畏惧？<br>
            <br>
            这里有你需要的一切课程专业软件，如果你是小白，鼠标轻轻一点，从此告别病毒，如果你是大神，鼠标轻击，告别许多烦恼。<br>
            <br>
            科猫，只为更懂你。</p>
          <p class="btnbar"><a class="btn-buy" href="${pageContext.request.contextPath}/zhuanyeruanjian.do" target="_parent"><span class="paddingW"></span>点击进入&gt;&gt;</a></p>
        </div>
      </div>
    </div>
  </div>
  <div id="section-3" class="section">
    <div class="wp">
      <div class="tuwen">
        <div class="tuwennr r">
          <h2 class="title">娱乐软件</h2>
          <p class="info">视频收费让你感到不爽？　/　游戏太难让你无从下手？<br>
            <br>
            各种游戏的破解软件，更加丰富的视频资源软件，电脑登录忘记密码？老毛桃一键装机无脑破解。 这里总有一款可以帮到你的。<br>
            <br>
            科猫，只为更懂你。</p>
          <p class="btnbar"><a class="btn-buy" href="${pageContext.request.contextPath}/yuleruanjian.do" target="_parent"><span class="paddingW"></span>点击进入&gt;&gt;</a></p>
        </div>
      </div>
    </div>
  </div>
  <div id="section-4" class="section">
    <div class="wp">
      <div class="tuwen">
        <div class="tuwennr">
          <h2 class="title">作业辅助</h2>
          <p class="info">在为明天的PPT感到迷茫？<br>
            <br>
            这里有海量的PPT模板素材，小白一秒变大神。<br>
            <br>
            科猫，只为更懂你。</p>
          <p class="btnbar"><a class="btn-buy" href="${pageContext.request.contextPath}/getHomework.do" target="_parent"><span class="paddingW"></span>点击进入&gt;&gt;</a></p>
        </div>
      </div>
    </div>
  </div>
  <div id="section-5" class="section">
    <div class="wp">
      <div class="tuwen">
        <div class="tuwennr r">
          <h2 class="title">帮帮帮</h2>
          <p class="info">电脑又自启了？　/　网线连不上？<br>
            <br>
            Photoshop，Dreamweaver，JAVA。。。来到帮帮帮，请各位专业老师免费教学，更多配套资源供你学习。 <br>
            <br>
            科猫，只为更懂你。</p>
          <p class="btnbar"><a class="btn-buy" href="${pageContext.request.contextPath}/bang.do" target="_parent"><span class="paddingW"></span>点击进入&gt;&gt;</a></p>
        </div>
      </div>
    </div>
  </div>
  <div id="section-6" class="section">
    <div class="wp">
      <div class="tuwen">
        <div class="tuwennr">
          <h2 class="title">校园电话</h2>
          <p class="info">周末懒得出去吃饭？　/　找不到快递电话？<br>
            <br>
            不用再问人，不用再百度，这里把周围的一切电话尽收囊中，只有你想找的，没有你找不到的。<br>
            <br>
            科猫，只为更懂你。</p>
          <p class="btnbar"><a class="btn-buy" href="${pageContext.request.contextPath}/getTel.do" target="_parent"><span class="paddingW"></span>点击进入&gt;&gt;</a></p>
        </div>
      </div>
    </div>
  </div>
  <!--footer部分-->
  <div style="height: 230px; background: #454545">
  	<div style="width: 1280px; height: 170px; margin: 0 auto; padding: 30px 0 30px 0">
  		<div style="width: 170px; height: 170px; float: left;"><img src="${pageContext.request.contextPath}/images/erweima.jpg"/></div>
  		<div style="width: 170px; height: 150px; margin-top: 11px; float: left; padding: 55px 0 0 20px; color: #fff ">
  			<ul>
  				<li>QQ群：201028865</li>
  				<li>扫一扫关注最新消息</li>
  			</ul>
  		</div>
  		<div style="width: 60px; height: 170px; float: left;  border-left: 1px solid #666; "></div>
  		<div style="width: 700px; height: 170px; float: left;" >
  			<div style="width: 700px; height: 140px; margin:0 auto; float: left;" >
  				<div style="width: 350px; height: 140px; float: left;">
  					<div style="color: #fff; margin-bottom: 5px;">在线客服</div>
  					<div style="color: #999; margin-bottom: 5px;">工作时间：9：30 - 18：30（节假日休息）</div>
  					<div style="color: #999; margin-bottom: 5px;">客服电话：xxxxxxxx</div>
  					<div style="color: #999; margin-bottom: 5px;">E-mail：1208984024@qq.com</div>
  				</div>
  				<div style="width: 150px; height: 140px; float: left;">
  					<div style="color: #fff; margin-bottom: 5px;">关于我们</div>
  					<div style="color: #999; margin-bottom: 5px;">关于K-Cat科猫网</div>
  					<div style="color: #999; margin-bottom: 5px;">网站说明</div>
  					<div style="color: #999; margin-bottom: 5px;">版权隐私说明</div>
  				</div>
  				<div style="width: 200px; height: 140px; float: left;">
  					<img style="float: right;" src="${pageContext.request.contextPath}/images/logo2.png">
  				</div>
  			</div>
  			<div style="height:40px; width:700px; color: #999; line-height: 40px;">网站仅供学习交流 Copyright © 2017 K-Cat科猫网  inc. </div>
  		</div>
  	</div>
  </div>
  <!--footer END-->
  
  
</div>
</body>
</html>