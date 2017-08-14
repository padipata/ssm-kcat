<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
	<link href="${pageContext.request.contextPath}/CSS/style.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/CSS/nav.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/base/jquery.ui.css"/>
	<script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery.cookie.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery.ui.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery.form.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery.validate.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery.scrollTo.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery.nav.js"></script>
	
	
	
	<script type="text/javascript">
		$(function () {
			
			$('#keyword').keyup(function(){
					var xhr=null;  
		              if(xhr){  
		                  xhr.abort();//如果存在ajax的请求，就放弃请求  
		              }  
		            var inputText= $.trim(this.value);
		            if(inputText!=""){//检测键盘输入的内容是否为空，为空就不发出请求  
		            	xhr=$.ajax({  
			                type: 'POST',  
			                url: '${pageContext.request.contextPath}/getStudySoft_id.do',
			                cache:false,//不从浏览器缓存中加载请求信息  
			                data: {
			                	'data' : "%" + inputText + "%"//发送的数据  
			                },
			                dataType: 'json',//返回数据  
			                success: function (json) {  
			                    if (json.length != 0) {//检测返回的结果是否为空
			                        var lists = "<ul>";  
			                        $.each(json, function () {  
			                        	lists += "<a href='${pageContext.request.contextPath}/getStudySoft_All.do?num=" + this.id + "' target='_blank' ><li class='inputText'>"+ this.softName +"</li></a>";
				                    });  
			                        lists+="</ul>";  
			  
			                        $("#searchBox").html(lists).show();//将搜索到的结果展示出来  

			                        $(".inputText").mouseenter(function(){
			                            $("#keyword").val($(this).text());
			                            $(this).css({
			                            	background:'#d5d5d5'
			                            });
			                        }).mouseleave(function() {
			                        	$(this).css({
			                            	background:'#ffffff'
			                            });
									}).click(function() {
			                        	$("#keyword").val($(this).text());//点击某个li就会获取当前的值 ，并隐藏  
			                            $("#searchBox").hide();
									})   
			                    } else {  
			                        $("#searchBox").hide();  
			                    }  
			                }  
			  
			            });    
		            }else{  
		            	$("#searchBox").hide();//没有查询结果就隐藏搜索框
		            }  
				});
			
				$("#keyword").blur(function(){//输入框失去焦点的时候就隐藏搜索框   
		            $("#searchBox").slideUp("slow");
		        });
			
			$('#member , #logout').hide();		//先隐藏掉登录用户名和退出用户
			
			if ($.cookie('user')) {	
				$('#member, #logout').show();
				$('#reg_a, #login_a').hide();
				$('#member').html($.cookie('user'));
			} else{
				$('#member, #logout').hide();
				$('#reg_a, #login_a').show();
			}
			
			$('#logout').click(function () {		//点击退出时刷新页面
				$.removeCookie('user');
				location.reload();
			});
			
			//表单验证时的加载动画
			$('#loading').dialog({
				autoOpen : false,
				modal : true,
				closeOnEscape : false,
				resizable : false,
				draggable : false,
				width : 180,
				height : 50,
			}).parent().parent().find('.ui-widget-header').hide();		//将弹出框的头样式去掉
			
			$('#reg').dialog({			//用户注册弹出框
				title : 'K-Cat 用户注册',
				width : 600,
				height : 450,
				show : true,
				hide : true,
				resizable : false,
				modal : true,
				closeText : '关闭',
				autoOpen : false,
				//提交按钮
				buttons : {
					'提交' : function () {
						$(this).submit();
					},
					'取消':function(){
						$(this).dialog('close');
					}
				}
			}).buttonset().validate({
			
				submitHandler : function (form) {
					$(form).ajaxSubmit({
						url : "${pageContext.request.contextPath}/addUser.do",
						type : 'POST',
						async : false,
						beforeSubmit : function (formData, jqForm, options) {
							$('#loading').dialog('open');
							$('#reg').dialog('widget').find('button').eq(1).button('disable');
						},
						success : function (responseText, statusText) {
							if (responseText) {
								$('#reg').dialog('widget').find('button').eq(1).button('enable');
								$('#loading').css('background', 'url(${pageContext.request.contextPath}/images/nav/success.gif) no-repeat 20px center').html('用户注册成功...');
								
								//验证成功后，在客户端生成一个名为user的cookie文件
								$.cookie('user',$('#user').val());
								
								setTimeout(function () {
									$('#loading').dialog('close');
									$('#reg').dialog('close');
									$('#reg').resetForm();
									$('#reg span.star').html('*').removeClass('succ');
									$('#loading').css('background', 'url(${pageContext.request.contextPath}/images/nav/loading.gif) no-repeat 20px center').html('数据提交中...');
									//刷新页面，用于显示用户名
									$('#member, #logout').show();
									$('#reg_a, #login_a').hide();
									$('#member').html($.cookie('user'));
								}, 1000);
							}
						},
					});
				},
			
				showErrors : function (errorMap, errorList) {
					var errors = this.numberOfInvalids();
					
					if (errors > 0) {
						$('.reg').dialog('option', 'height', errors * 25 + 450);
					} else {
						$('.reg').dialog('option', 'height', 450);
					}
					
					this.defaultShowErrors();
				},
				
				highlight : function (element, errorClass) {
					$(element).css('border', '1px solid red');
					$(element).parent().find('span').html('*').removeClass('succ');
				},
				
				unhighlight : function (element, errorClass) {
					$(element).css('border', '1px solid #ccc');
					$(element).parent().find('span').html('&nbsp;').addClass('succ');
				},
			
				errorLabelContainer : 'ol.reg_error',
				wrapper : 'li',
				
				rules : {
					userName : {
						required : true,
						minlength : 2,
						remote : {
							url : '${pageContext.request.contextPath}/checkUser.do',
							type : 'POST',
						},
					},
					userPwd : {
						required : true,
						minlength : 6,
					},
					repassword : {
						required : true,
						equalTo : '#password',
					},
					email : {
						required : true,
						email : true,
					},
				},
				messages : {
					userName : {
						required : '账户不得为空！',
						minlength : jQuery.format('账户长度不得小于{0}位！'),
						remote : '帐号被占用！',
					},
					userPwd : {
						required : '密码不得为空！',
						minlength : jQuery.format('密码长度不得小于{0}位！'),
					},
					repassword : {
						required : '请确认密码！',
						equalTo : '密码不一致，请重新输入！',
					},
					email : {
						required : '邮箱不得为空！',
						email : '请输入正确的邮箱！',
					},
				},
			});
			
				
			$('#login').dialog({
				title : 'K-Cat 用户登录',
				width : 500,
				height : 340,
				show : true,
				hide : true,
				resizable : false,
				modal : true,
				closeText : '关闭',
				autoOpen : false,
				buttons : {
					'登录' : function () {
						$(this).submit();
					},
					'取消' : function () {
						$(this).dialog('close');
					}
				}
			}).validate({
			
				submitHandler : function (form) {
					$(form).ajaxSubmit({
						url : '${pageContext.request.contextPath}/login.do',
						type : 'POST',
						async : false,
						beforeSubmit : function (formData, jqForm, options) {
							$('#loading').dialog('open');
							$('#login').dialog('widget').find('button').eq(1).button('disable');
						},
						success : function (responseText, statusText) {
							if (responseText) {
								$('#login').dialog('widget').find('button').eq(1).button('enable');
								$('#loading').css('background', 'url(.../images/nav/success.gif) no-repeat 20px center').html('登录成功...');
								if ($('#expires').is(':checked')) {
									$.cookie('user', $('#login_user').val(), {
										expires : 7,
									});
								} else {
									$.cookie('user', $('#login_user').val());
								}
								setTimeout(function () {
									$('#loading').dialog('close');
									$('#login').dialog('close');
									$('#login').resetForm();
									$('#login span.star').html('*').removeClass('succ');
									$('#loading').css('background', 'url(.../images/nav/loading.gif) no-repeat 20px center').html('数据交互中...');
									$('#member, #logout').show();
									$('#reg_a, #login_a').hide();
									$('#member').html($.cookie('user'));
								}, 1000);
							}
						},
					});
				},
			
				showErrors : function (errorMap, errorList) {
					var errors = this.numberOfInvalids();
					
					if (errors > 0) {
						$('#login').dialog('option', 'height', errors * 20 + 340);
					} else {
						$('#login').dialog('option', 'height', 340);
					}
					
					this.defaultShowErrors();
				},
				
				highlight : function (element, errorClass) {
					$(element).css('border', '1px solid #630');
					$(element).parent().find('span').html('*').removeClass('succ');
				},
				
				unhighlight : function (element, errorClass) {
					$(element).css('border', '1px solid #ccc');
					$(element).parent().find('span').html('&nbsp;').addClass('succ');
				},
			
				errorLabelContainer : 'ol.login_error',
				wrapper : 'li',
			
				rules : {
					login_user : {
						required : true,
						minlength : 2,
					},
					login_pass : {
						required : true,
						minlength : 6,
						remote : {
							url : '${pageContext.request.contextPath}/login.do',
							type : 'POST',
							data : {
								login_user : function () {
									return $('#login_user').val();
								},
							},
						},
					},
				},
				messages : {
					login_user : {
						required : '帐号不得为空！',
						minlength : jQuery.format('帐号不得小于{0}位！'),
					},
					login_pass : {
						required : '密码不得为空！',
						minlength : jQuery.format('密码不得小于{0}位！'),
						remote : '帐号或密码不正确！',
					}
				}
			});
			
			$('#reg_a').click(function () {
				$('.reg').dialog('open');
			});
			
			$('#login_a').click(function () {
				$('#login').dialog('open');
			});
			
			$('.reg').buttonset();
			
		//	日历UI插件
		//	$('#date').datepicker({		//引入日历插件，中文包位置：jquery-ui-1.10.4.custom/development-bundle/ui/i18n
		//		changeYear : true,
		//		changeMonth : true,
		//		showOn : 'button',
		//		buttonImage : 'images/nav/calendar.gif',
		//		buttonImageOnly : true,
		//		maxDate : 5,			限定最大日期			
		//		minDate : -5,		限定最小日期
		//		hideIfNoPrevNext : true,
		//		yearRange : '1980 : 2020',
		//		yearSuffix : '',		//去掉选择时的'年'字符导致换行的情况出现
		//		日期的优先级：maxDate和minDate最高，而yearRange对年份限定优先级高
		//	});	
			
		//	工具提示功能，需要配合html页面的title属性来使用
		//	$('.reg input[title]').tooltip({
		//		tooltipClass : 'a',  用于更改title的样式，可在css中自定义样式
		//		position : {
		//			my : 'left center',
		//			at : 'right+5 center',
		//		},
		//		//默认提示是淡入淡出效果，项目中应去掉
		//		show : false,
		//		hide : false,
		//	});
			
		//	邮箱自动补全功能模块
			$('#email').autocomplete({
				delay : 0,
				autoFocus : true,
				position:{
					my : 'left top',
				},
				source : function (request, response) {
					//获取用户输入的内容
					//alert(request.term);
					//绑定数据源的
					//response(['aa', 'aaaa', 'aaaaaa', 'bb']);
					
					var hosts = ['qq.com', '163.com', '263.com', 'sina.com.cn','gmail.com', 'hotmail.com'],
						term = request.term,		//获取用户输入的内容
						name = term,				//邮箱的用户名
						host = '',					//邮箱的域名
						ix = term.indexOf('@'),		//@的位置
						result = [];				//最终呈现的邮箱列表
						
					result.push(term);
					
					//当有@的时候，重新分别用户名和域名
					if (ix > -1) {
						name = term.slice(0, ix);
						host = term.slice(ix + 1);
					}
					
					if (name) {
						//如果用户已经输入@和后面的域名，
						//那么就找到相关的域名提示，比如pjh@1，就提示pjh@163.com
						//如果用户还没有输入@或后面的域名，
						//那么就把所有的域名都提示出来
						
						var findedHosts = (host ? $.grep(hosts, function (value, index) {
								return value.indexOf(host) > -1
							}) : hosts),
							findedResult = $.map(findedHosts, function (value, index) {
							return name + '@' + value;
						});
						
						result = result.concat(findedResult);
					}
					
					response(result);
				},	
			});
			
			
		});

	</script>

	
	
<div class="topbar">
  <div class="wp"> 
  	<a href="${pageContext.request.contextPath}/visitor/index.jsp" target="_parent" class="logo l" ></a>
  	
	<div class="header_search">
		<i class="icon-user"></i>
		<input type="text" name="keyword" id="keyword" class="search" placeholder="搜索从这里开始..." />
		<div id="searchBox" ></div>
	</div>
	<div class="header_button"></div>
    