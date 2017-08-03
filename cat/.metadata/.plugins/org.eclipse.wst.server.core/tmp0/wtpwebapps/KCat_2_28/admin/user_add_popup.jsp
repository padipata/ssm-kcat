<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<script type="text/javascript">
$(function init(){
	var html="";
	$.ajaxSetup({async:false});
 	$.post("${pageContext.request.contextPath}/getAllUser.do",function(data){  //循环标题
		$.each(data,function(i,e){
			html+="<tr><th scope='row'>"+data[i].id+"</th><td>"+data[i].userName+"</td><td>"+data[i].email+"</td><td>"+data[i].userPwd+"</td><td>"+data[i].sex+"</td><td><div role='presentation' class='dropdown'><button class='btn btn-default dropdown-toggle' data-toggle='dropdown' href='#' role='button' aria-haspopup='true' aria-expanded='false'>操作<span class='caret'></span></button><ul class='dropdown-menu'><li><a class='modify_popup' href='#' data-toggle='modal' data-target='#myModal_modify'>编辑</a></li><li><a class='delete' href='#'>删除</a></li></ul></div></td></tr>";
		});
 	});
 	$(".User_list").append(html);
	$("#sub").click(function(){
		$.post("${pageContext.request.contextPath}/addUser.do",{userName:$("#addname").val(),userPwd:$("#addpassword").val(),email:$("#addemail").val(),sex:$("#addyonghuzu").val()},function(data){
			if(data){
				layer.msg('添加成功', {icon: 1});
			}else{
				layer.msg('添加失败', {icon: 2});
			}
		 	$(".User_list tr").remove();
			init();
		});
	});
	var id = 0;
	
	$(".modify_popup").click(function(){
		var path = $(this).parent().parent().parent().parent().parent().children();
		id = path.eq(0).text();
		var modifyname = path.eq(1).text();
		var modifypassword = path.eq(2).text();
		var modifyemail = path.eq(3).text();
		var modifyyonghuzu = path.eq(4).text();
		$("#modifyname").val(modifyname);
		$("#modifypassword").val(modifypassword);
		$("#modifyemail").val(modifyemail);
		$("#modifyyonghuzu").val(modifyyonghuzu);
	});
	
	$("#sub_modify").click(function(){
		id
		modifyname = $("#modifyname").val();
		modifypassword = $("#modifypassword").val();
		modifyemail = $("#modifyemail").val();
		modifyyonghuzu = $("#modifyyonghuzu").val();
		$.post("${pageContext.request.contextPath}/modifyUser.do",{id:id,userName:modifyname,userPwd:modifypassword,email:modifyemail,sex:modifyyonghuzu},function(data){
			if(data){
				layer.msg('修改成功', {icon: 1});
			}else{
				layer.msg('修改失败', {icon: 2});
			}
			$(".User_list tr").remove();
			init();
		});
	});
	
	$(".delete").click(function(){
		var path = $(this).parent().parent().parent().parent().parent().children();
		id = path.eq(0).text();
		$.post("${pageContext.request.contextPath}/deleteUser.do",{id:id},function(data){
			if(data){
				layer.msg('删除成功', {icon: 1});
			}else{
				layer.msg('删除失败', {icon: 2});
			}
			$(".User_list tr").remove();
			init();
		});
	});
	
});

</script>

<!--弹出框s-->
 		<!-- Modal -->
 		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
 			<div class="modal-dialog" role="document">
 				<div class="modal-content">
 					<div class="modal-header">
 						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
 						<h4 class="modal-title" id="myModalLabel">添加用户</h4>
 					</div>
 					<div class="modal-body">
 						<form>
 							<div class="form-group">
 								<label for="addname">用户名</label>
 								<input type="text" id="addname" class="form-control" placeholder="用户名" />
 							</div>
 							<div class="form-group">
 								<label for="addpassword">用户密码</label>
 								<input type="text" id="addpassword" class="form-control" placeholder="请输入密码" />
 							</div>
 							<div class="form-group">
 								<label for="addpassword1">用户密码</label>
 								<input type="text" id="addpassword1" class="form-control" placeholder="请确认用户密码" />
 							</div>
 							<div class="form-group">
 								<label for="addemail">请输入邮箱</label>
 								<input type="email" id="addemail" name="email" class="form-control" placeholder="请输入邮箱" />
 								<!--使用email类型-->
 							</div>
							<div class="form-group">
								<label for="addyonghuzu">选择性别</label>
								<select id="addyonghuzu" class="form-control" name="sex">
									<option>男</option>
									<option>女</option>
								</select>
							</div>
 						</form>
 					</div>
 					<div class="modal-footer">
 						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
 						<button type="button" class="btn btn-primary" id="sub" data-dismiss="modal">提交</button>
 					</div>
 				</div>
 			</div>
 		</div>
 		
<!--弹出框e-->


<!--弹出框s-->
 		<!-- Modal -->
 		<div class="modal fade" id="myModal_modify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
 			<div class="modal-dialog" role="document">
 				<div class="modal-content">
 					<div class="modal-header">
 						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
 						<h4 class="modal-title" id="myModalLabel">编辑用户</h4>
 					</div>
 					<div class="modal-body">
 						<form>
 							<div class="form-group">
 								<label for="addname">用户名</label>
 								<input type="text" id="modifyname" class="form-control" placeholder="用户名" />
 							</div>
 							<div class="form-group">
 								<label for="addpassword">用户密码</label>
 								<input type="text" id="modifypassword" class="form-control" placeholder="请输入密码" />
 							</div>
 							<div class="form-group">
 								<label for="addpassword1">用户密码</label>
 								<input type="text" id="modifypassword1" class="form-control" placeholder="请确认用户密码" />
 							</div>
 							<div class="form-group">
 								<label for="addemail">请输入邮箱</label>
 								<input type="email" id="modifyemail" name="email" class="form-control" placeholder="请输入邮箱" />
 								<!--使用email类型-->
 							</div>
							<div class="form-group">
								<label for="addyonghuzu">选择性别</label>
								<select id="modifyyonghuzu" class="form-control" name="sex">
									<option>男</option>
									<option>女</option>
								</select>
							</div>
 						</form>
 					</div>
 					<div class="modal-footer">
 						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
 						<button type="button" class="btn btn-primary" id="sub_modify" data-dismiss="modal">提交</button>
 					</div>
 				</div>
 			</div>
 		</div>
 		
<!--弹出框e-->