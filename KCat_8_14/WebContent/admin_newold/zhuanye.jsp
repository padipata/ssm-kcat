<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
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
		<script src="../dist/crypto.js"></script>
		<script type="text/javascript" src="../dist/cos-js-sdk-v4.js"></script>
		<script type="text/javascript" src="../dist/sdk1.js"></script>
		<script type="text/javascript" src="../dist/sdk2.js"></script>
		<script type="text/javascript" src="../dist/sdk3.js"></script>
		<link rel="stylesheet" href="../dist/main.css">
   		<link rel="stylesheet" href="../dist/highlight.css">
   		
		
		<script type="text/javascript">
		$(function init(){
			
			var softName = $("#option_softName");
			softName.empty();
			softName.append("<option>选择软件</option>");
			$.ajaxSetup({async:false});
			var soft_size = 0;
		 	$.post("${pageContext.request.contextPath}/getAllSoftName.do",function(data){ //循环获得软件名字并添加到下拉选项
		 		soft_size = data.length;
		 		$.each(data,function(i,e){
		 			softName.append("<option>"+data[i].id+"-"+data[i].softName+"</option>");
				});
		 	});
		 	softName.append("<option>找不到对应的软件，我要上传</option>");
		 	
			
			var zhuanye = [["请选择专业","尚未选择学院"],["请选择专业","计算机应用技术","云计算","动漫设计与制作","电子商务","电子信息工程"],["请选择专业","工商企业管理","城市轨道交通运营管理","物流管理","社会工作","旅游英语"],["请选择专业","应用英语","财务管理","国际经济与贸易","会展策划与管理","市场营销","金融管理"],["请选择专业","电气自动化技术","模具设计与制造","机电一体化技术","汽车检测与维修技术","汽车技术服务与运营"],["请选择专业","艺术设计(影视动画设计与制作)","艺术设计(广告设计与制作应用)","产品造型设计","环境艺术设计"],["请选择专业","皮具设计","服装设计","音乐表演"]];
			var titleS = 0;
			$("#option_SoftType").change(function(){
				
			});
			
			$("#option_xueyuan").change(function(){
				var xueyuan_selected_index = $("#option_xueyuan").get(0).selectedIndex;
				var selDom = $("#option_zhuanye");
				selDom.empty();
				for(var i = 0;i < zhuanye[xueyuan_selected_index].length;i++){
					selDom.append("<option>"+zhuanye[xueyuan_selected_index][i]+"</option>");
				}
			});
			
			$("#option_zhuanye").change(function(){
				var option_zhuanye = 0;
				var xueyuan_selected_index = $("#option_xueyuan").get(0).selectedIndex;
				for(var i = 1; i < xueyuan_selected_index; i++){
					option_zhuanye += zhuanye[xueyuan_selected_index].length - 1;
				}
				option_zhuanye += $("#option_zhuanye").get(0).selectedIndex;
				alert(option_zhuanye);
			});
			
			$("#option_softName").change(function(){
				var selected_index = $("#option_softName").get(0).selectedIndex;
				if(selected_index == soft_size+1){
					$("#soft_upload").css("display","block");
				}else{
					$("#soft_upload").css("display","none");
				}
			});
			
			$("#submit").click(function(){
				var flag = true;
				var softUrl = "";
				var softName = $("#name").val();
				var option_softType = $("#option_SoftType").val();
				//option_zhuanye
				//ico_flag+" "+jpg_flag+" "+soft_flag   这是三个上传的成功状态，用于先判断成功再取值
				//time_name1  time_name2   time_name3         这是三个上传的名字，分别用时间来命名
				var option_softName = $("#option_softName").val();
				var softcontent = $("#content").val();
				//var videoName 这个是视频的名字
				check();
				if(flag){
					$.post("${pageContext.request.contextPath}/addStudySoft.do",{softName:softName,softType:option_softType,soft_to_titleS:option_zhuanye,softImage:time_name1,soft_jietu:time_name2,softUrl:time_name3, soft_jianjie, soft_video, soft_date, soft_version},function(data){
						if(data){
							layer.msg('修改成功', {icon: 1});
						}else{
							layer.msg('修改失败', {icon: 2});
						}
					});
				}
			});
			
			$("#name").focus(function(){
				error_cancel("name");
			});
			$("#option_SoftType").change(function(){
				error_cancel("option_SoftType");
			});
			$("#option_xueyuan").change(function(){
				error_cancel("option_xueyuan");
			});
			$("#option_zhuanye").change(function(){
				error_cancel("option_zhuanye");
			});
			$("#option_softName").change(function(){
				error_cancel("option_softName");
			});
			$("#content").focus(function(){
				error_cancel("content");
			});
			
			
		});
		
		function check(){
			if( $("#name").val().length == 0){
				error("name");
				flag = false;
			}
			if($("#option_SoftType").prop('selectedIndex') == 0){
				error("option_SoftType");
				flag = false;
			}
			if($("#option_xueyuan").prop('selectedIndex') == 0){
				error("option_xueyuan");
				flag = false;
			}
			if($("#option_zhuanye").prop('selectedIndex') == 0){
				error("option_zhuanye");
				flag = false;
			}
			if(ico_flag == false){
				error("result1");
				flag = false;
			}
			if(jpg_flag == false){
				error("result2");
				flag = false;
			}
			if($("#option_softName").prop('selectedIndex') == 0){
				error("option_softName");
				flag = false;
			}else if($("#option_softName").prop('selectedIndex') == document.getElementById("option_softName").options.length-1){
				if(soft_flag == false){
					error("result3");
					flag = false;
				}
			}
			if($("#content").val().length == 0){
				error("content");
				flag = false;
			}
			if(videoName == ""){
				error("pickfiles");
				flag = false;
			}
			
			
		}
		
		function error(elements){
			$("#"+elements+"").css("outline",0);
			$("#"+elements+"").css("border","1px solid #f95d5d");
			$("#"+elements+"").css("box-shadow","0px 0px 10px 0px #f95d5d");
		};
		
		function error_cancel(elements){
			$("#"+elements+"").css("outline","");
			$("#"+elements+"").css("border","");
			$("#"+elements+"").css("box-shadow","");
		};
		
			
		</script>
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
		            <li><a href="index.jsp"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;后台首页</a></li>
		            <li><a href="user_list.jsp"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;用户管理</a></li>
		            <li class="active"><a href="zhuanye.jsp"><span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;内容管理</a></li>
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


	<div class="container">
			<div class="row">
<!--用户列表小导航s-->
				<div class="col-md-2">
					<div class="sidebar-menu">
					    <a href="#userMeun" class="nav-header menu-first collapsed" data-toggle="collapse"><i class="icon-user-md icon-large"></i> 用户管理</a>
					    <ul id="userMeun" class="nav nav-list collapse menu-second">
					        <li><a href="#"><i class="icon-user"></i> 增加用户</a></li>
					        <li><a href="#"><i class="icon-edit"></i> 修改用户</a></li>
					        <li><a href="#"><i class="icon-trash"></i> 删除用户</a></li>
					        <li><a href="#"><i class="icon-list"></i> 用户列表</a></li>
					 
					    </ul>
					    <a href="#articleMenu" class="nav-header menu-first collapsed" data-toggle="collapse"><i class="icon-book icon-large"></i> 文章管理</a>
					    <ul id="articleMenu" class="nav nav-list collapse menu-second">
					        <li><a href="#"><i class="icon-pencil"></i> 添加文章</a></li>
					        <li><a href="#"><i class="icon-list-alt"></i> 文章列表</a></li>
					    </ul>
					</div>
					
				</div>
<!--用户列表小导航e-->

<!--用户列表内容s-->
				<div class="col-md-10">
					<div class="page-header">
						<h1>专业软件</h1>
					</div>
<!--上传专业软件内容s-->			
					<form action="#" class="user_search" style="height: 1100px;">
						<div class="form-group">
							<label for="name">名称</label>
							<input type="text" id="name" class="form-control" placeholder="请输入软件名称" />
						</div>
						<div class="row">
							<div role="presentation" class="dropdown col-md-4">
								<select id="option_SoftType" class="form-control">
								  <option>请选择软件类型</option>
								  <option>办公</option>
								  <option>工具</option>
								  <option>图形</option>
								  <option>开发</option>
								</select>
							</div>
							<div role="presentation" class="dropdown col-md-4">
								<select id="option_xueyuan" class="form-control">
								  <option>请选择学院</option>
								  <option>信息工程学院</option>
								  <option>管理学院</option>
								  <option>商贸学院</option>
								  <option>机电工程学院</option>
								  <option>创意与设计学院</option>
								  <option>服装艺术学院</option>
								</select>
							</div>
							<div role="presentation" class="dropdown col-md-4">
								<select id="option_zhuanye" class="form-control">
								  <option>请选择专业</option>
								  <option>尚未选择学院</option>
								</select>
							</div>
							
						</div>
						
						<div class="form-group">
							<label for="name">图标上传</label>
							<div class="col-md-12"><img src="#" id="uploadFile_img1" class="img-rounded mar_b15" style="width: 100px; height: 100px;"/></div>
							<div class="col-md-10"><input disabled="true" type="text" id="result1" class="form-control" placeholder="请选择要上传的图片" /></div>
							
							<div class="col-md-2">
							<form id="form1">
						        <input id="js-file1" type="file" style="display:none;"/>
						    </form>
							<div class="row">
						    	<button id="uploadFile1" type="button" class="btn btn-default">选择图标并上传</button>
						    </div>
						</div>
						<div class="form-group">
							<label for="name">大图上传</label>
							<div class="col-md-12"><img src="#" id="uploadFile_img2" class="img-rounded mar_b15" style="width: 100px; height: 100px;"/></div>
							<div class="col-md-10"><input disabled="true" type="text" id="result2" class="form-control" placeholder="请选择要上传的图片" /></div>
							
							<div class="col-md-2">
							<form id="form2">
						        <input id="js-file2" type="file" style="display:none;"/>
						    </form>
						    <div class="row">
						    	<button id="uploadFile2" type="button" class="btn btn-default">选择大图并上传</button>
						    </div>
						</div>
						<div class="form-group">
							<label for="name">选择软件或上传</label>
							<div class="col-md-12"></div>
							
							<div class="row">
								<div role="presentation" class="dropdown col-md-4">
									<select id="option_softName" class="form-control">
									  <option>正在加载</option>
									</select>
								</div>
								
							</div>
							
							<div style="display:none; margin-top:10px;" id="soft_upload">
								<div class="col-md-10">
								<input disabled="true" type="text" id="softName" class="form-control" placeholder="请输入软件名字" />
								<input disabled="true" type="text" id="result3" class="form-control" placeholder="请选择要上传的软件" /></div>
								<div class="col-md-2">
								<form id="form3">
							        <input id="js-file3" type="file" style="display:none;"/>
							    </form>
							    <div class="row">
							    	<button id="uploadFile3" type="button" class="btn btn-default">选择软件并上传</button>
						    	</div>
							</div>
							
						    
						</div>
						<div class="form-group">
							<label for="content">描述内容</label>
							<textarea class="form-control" rows="5" cols="10" placeholder="请输入软件简介" id="content"></textarea>
						</div>
						<div class="form-group">
							<label for="content">视频上传</label>
							<div class="row" style="margin-top: 10px;">
			                    <input type="hidden" id="domain" value="http://op86rjyxw.bkt.clouddn.com/">
			                    <input type="hidden" id="uptoken_url" value="uptoken">
			                    
			                    <div class="col-md-12">
			                        <div id="container" style="position: relative;">
			                            <a class="btn btn-default btn-lg " id="pickfiles" href="http://jssdk.demo.qiniu.io/#" style="position: relative; z-index: 1;">
			                                <i class="glyphicon glyphicon-plus"></i>
			                                <span>选择视频</span>
			                            </a>
			                        <div id="html5_1aj3rtennnga1n5h927gjn8343_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 0px; left: 0px; width: 171px; height: 46px; overflow: hidden; z-index: 0;"><input id="html5_1aj3rtennnga1n5h927gjn8343" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept=""></div></div>
			                    </div>
			                    <div style="display:none" id="success" class="col-md-12">
			                        <div class="alert-success" style="border-radius: 10px;">视频上传完毕</div>
			                    </div>
			                    <div class="col-md-12 ">
			                        <table class="table table-striped table-hover text-left" style="margin-top:40px;display:none">
			                            <thead>
			                              <tr>
			                                <th class="col-md-4">视频名称</th>
			                                <th class="col-md-2">大小</th>
			                                <th class="col-md-6">详细信息</th>
			                              </tr>
			                            </thead>
			                            <tbody id="fsUploadProgress">
			                            </tbody>
			                        </table>
			                    </div>
			                </div>
						</div>
			                
						<button type="button" class="btn btn-default col-md-12 mar_t15" id="submit">提交</button>
					</form>		


<!--上传专业软件内容e-->		
					

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
	<script type="text/javascript" src="../dist/jquery.min.js"></script>
	<script type="text/javascript" src="../dist/bootstrap.min.js"></script>
	<script type="text/javascript" src="../dist/moxie.js"></script>
	<script type="text/javascript" src="../dist/plupload.dev.js"></script>
	<script type="text/javascript" src="../dist/zh_CN.js"></script>
	<script type="text/javascript" src="../dist/ui.js"></script>
	<script type="text/javascript" src="../dist/qiniu.js"></script>
	<script type="text/javascript" src="../dist/highlight.js"></script>
	<script type="text/javascript" src="../dist/main.js"></script>

	</body>
</html>




