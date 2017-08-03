<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--[if lt IE 8]><script>window.location.href="${pageContext.request.contextPath}/error/index.jsp"</script><![endif]-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>下载页面</title>
		<link rel="Shortcut Icon" href="images/tubiao.ico">
		<link href="${pageContext.request.contextPath}/CSS/download.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/layer/layui.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/layer/layer.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/clipboard.min.js"></script>
	<script type="text/javascript">
			$(function(){
				var clipboard = new Clipboard('#url');
				var url=$("#lianjie").attr("value");   //获取下载链接
				var pw=$("#mima").attr("value");   //获取密码
				$("#lianjie").text("");
				$("#mima").text("");
				$('#url').on('click',function(){
					layer.open({
					  type: 2 //Page层类型
					  ,area: ['1200px', '600px']
					  ,title: '百度云下载'
					  ,shade: 0.6 //遮罩透明度
					  ,maxmin: true //允许全屏最小化
					  ,anim: 1 //0-6的动画形式，-1不开启
					  ,content: [url,false]
					});
					layer.confirm('提取密码：'+pw, {
					  btn: ['复制'] //按钮
					}, function(){
					  layer.msg('复制成功', {icon: 1});
					});
				});
			});
			
		</script>
	</head>
	
	<body onload="getSubject()">
		<c:forEach items="${Study_Play_DATA}" var="d">
		<p id="lianjie" hidden="hidden" value=${d.softUrl }></p>
		<p id="mima" hidden="hidden" value=${d.soft_pw }></p>
		<div class="shang">
			<div class="hang"><img id="imageUrl" class="tubiao" src="http://kcat-1251241286.cosgz.myqcloud.com/images/${d.softImage }" />
				<p id="name">${d.softName }</p>
			</div>
			<div style="clear:both;"></div>
			<button data-clipboard-text=${d.soft_pw } style="margin-top:20px;margin-left:60px;border-radius:5px;background-color:#d2d2d2;" id="url" class="layui-btn-small layui-btn-primary"
>获取▼</button>
			<div style="clear:both;"></div>
			<p id="description" class="jiesao">${d.soft_jianjie }
			</p>
		</div>
		<!--上部简介end-->

		<!--截图部分start-->
		<div class="main">
			<!-- 这里用div把img包起来，相对定位中的绝对定位，把zitu的图片居中在futu -->
			<div id="screen" style="width:943px; float:left;">
				<img class="futu" src="http://kcat-1251241286.cosgz.myqcloud.com/images/${d.soft_jietu }"></img>
			</div>
				<div class="jianjie">
					<p style="font-size: 14px;">信息</p>
					<hr />
					<span class="zi2">
						<p id="lb">类别：${d.softType }</p><br/>
						<p id="date">更新日期：${d.soft_date }</p><br/>
						<p id="version">版本：${d.soft_version }</p>
						<p>价格：免费</p>
						<p>家人共享：可使用</p><br/>
						<p>语言：印地文，印度尼西亚文，意大利语，日语，泰文，简体中文，繁体中文，英文，葡萄牙语，西班牙语，马来文</p><br/>
						
						<p>开发商：Tencent Mobile International Limited</p><br/>
						<p>© 2016 星诺工作室 K-Cat</p><br/>
					</span>
					<p>限4岁以上</p>
					<p class="zi2">
						<p>兼容性：</p>
						Windows 7或更高版本,32位处理器及以上处理器</p><br/>
	
					<p>更多请继续关注K-Cat</p>
				</div>
			
		</div>
		<div class="footer">
			<hr />
			<p>Copyright © 2016 K-Cat. All rights reserved. 仅供学习交流</p>
		</div>
		</c:forEach>
	</body>

</html>