<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--[if lt IE 8]><script>window.location.href="${pageContext.request.contextPath}/error/index.jsp"</script><![endif]-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>帮帮帮</title>
<link rel="Shortcut Icon" href="${pageContext.request.contextPath}/images/tubiao.ico">

<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/bang.css" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery.js"></script>
       	<script type="text/javascript" src="${pageContext.request.contextPath}/layer/layer.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/clipboard.min.js"></script>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/bang.js"></script>
 --%>
<script type="text/javascript">
$(function(){
	$.ajaxSetup({async:false});
	var html="";

	$.post("${pageContext.request.contextPath}/getTitle.do",function(data){  //循环标题
		$.each(data,function(i,e){	
			html+="<div class='shang'><p style='padding-top:60px;' class='xiahua' id='ac"+data[i].id+"'>"+data[i].titleName+"</p><hr/></div><div class='xiaall'>";
			$.post("${pageContext.request.contextPath}/getBang.do",{'videoType':data[i].id},function(data_2){   //循环标题内容
				$.each(data_2,function(j,f){
					html+="<a class='xia'><img style='width:240px; height:135px;' src='http://kcat-1251241286.cosgz.myqcloud.com/images/" + data_2[j].videoImage + "' /><strong>"+ data_2[j].videoName +"</strong><p>"+ data_2[j].videoExplain +"</p><p class='lianjie' hidden='hidden' value='"+data_2[j].videoUrl+"'></p></a>";
					/* 这里将div改成a标签包着 */
				});
			});
			html+="</div><div class='clean'></div> ";
		});
		$(".main").append(html);

	});
});
$(function(){
	$('.xia').on('click',function(){
		var lianjie=$(this).find(".lianjie").attr("value");
		layer.open({
		  type: 2 //Page层类型
		  ,area: ['1280px', '550px']
		  ,title: 'KCat-帮帮帮'
		  ,shade: 0.6 //遮罩透明度
		  ,maxmin: true //允许全屏最小化
		  ,anim: 1 //0-6的动画形式，-1不开启
		  ,content: [lianjie,false]
		});
	});
});
</script>

<script type="text/javascript"> 
jQuery(document).ready(function($){ 
$('.active_1').click(function(){$('html,body').animate({scrollTop:$('#ac1').offset().top}, 800);}); 
$('.active_2').click(function(){$('html,body').animate({scrollTop:$('#ac2').offset().top}, 800);});  
$('.active_3').click(function(){$('html,body').animate({scrollTop:$('#ac3').offset().top}, 800);}); 
$('.active_4').click(function(){$('html,body').animate({scrollTop:$('#ac4').offset().top}, 800);});
$('.active_5').click(function(){$('html,body').animate({scrollTop:$('#ac5').offset().top}, 800);});
}); 
jQuery(document).ready(function($){ 
$('.top_img').click(function(){$('html,body').animate({scrollTop: '0px'}, 800);});}) 
</script> 


</head>

<body>
<!--导航部分-->
	<%@ include file="../visitor/pageheader_top.jsp" %>
	<%@ include file="../visitor/pageheader_centenr.jsp" %>
	<%@ include file="../visitor/pageheader_bottom.jsp" %>
<!--导航部分end-->

<!--专业栏start-->
    <div class="nav_b">
        <ul>
           <!--  <li><a style="cursor:pointer; width:400px; cursor:default"></a></li> -->
            <li><a style="cursor:pointer" class="active_1">计算机应用</a></li>
            <li><a style="cursor:pointer" class="active_2">云计算</a></li>
            <li><a style="cursor:pointer" class="active_3">电子商务</a></li>
            <li><a style="cursor:pointer" class="active_3">电子信息工程</a></li>
            <li><a style="cursor:pointer" class="active_4">动漫设计与制作</a></li>
        </ul>
    </div>

<!--轮播内容:暂时为空-->


<!--主体部分start-->
<div class="main"></div>


<!--尾部内容-->


</body>
</html>