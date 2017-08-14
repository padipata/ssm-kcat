<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--[if lt IE 8]><script>window.location.href="${pageContext.request.contextPath}/error/index.jsp"</script><![endif]-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head id="Head1">
    <meta http-equiv="Content-Language" content="zh">
    <link rel="shortcut icon"  type="/image/x-icon">
    <link rel="stylesheet">
    <meta name="description" content="校园电话 kemao 科猫">
    <title>校园电话</title>
    <link rel="Shortcut Icon" href="images/xydh/tubiao.ico">
    <link rel="stylesheet" rev="stylesheet" href="style/xiaoyuandianhua.css" type="text/css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery.js"></script>
     
    
</head>
<body>

<!--导航部分-->
	<%@ include file="../visitor/pageheader_top.jsp" %>
	<%@ include file="../visitor/pageheader_centenr.jsp" %>
	<%@ include file="../visitor/pageheader_bottom.jsp" %>
<!--导航部分end-->

<!-- 校园电话开始 -->

  <div class="container w960">
      <div class="r-middle-3">
        <h2 style="color:black">校园电话</h2>
<c:set value="0" var="a"/><!-- 定义一个变量a，初次赋值为0 -->
<c:forEach items="${Tel_DATA}" var="d">
<c:if test="${d.cid > a}"><!-- 判断cid的值比a大才执行，为了实现分类名字只输出一次 -->
		<div style="clear:both;"></div>
        <strong><a>${d.category }</a></strong>
        <div class="hotline_list_main clearfix">
        <c:set value="${d.cid}" var="a" /><!-- 输完一次分类名就把当前的cid赋值给a -->
        </c:if>
        
          <!-- box begin -->
          <div class="hotline_list_box ">
            <div class="hotline_list_logo"> <img style="width:148px; height:55px;" src="http://kcat-1251241286.cosgz.myqcloud.com/images/xydh/${d.images }"> </div>
            <div class="hotline_list_text">
              <p class="hotline_list_shopname">${d.name }</p>
              <div class="hotline_tels ">
                <p class="hotline_list_shopnumber"> <img alt="" src="http://kcat-1251241286.cosgz.myqcloud.com/images/xydh/ico_tel_phone.gif"> ${d.tel } </p>
              </div>
            </div>
          </div>
          <!-- box end --> 
          </c:forEach>  
     </div>  
    </div>
   </div>
<!-- 校园电话结束 -->

<!--尾部部分start-->

<!--尾部部分end-->
</body>
</html>