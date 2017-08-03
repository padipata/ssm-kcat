<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
	
	

    <div class="header_member">
		<a style="display: none" href="javascript:void(0)" id="reg_a">注册</a>
		<a style="display: none" href="javascript:void(0)" id="member">用户 </a>
		<a style="display: none" href="javascript:void(0)" id="login_a">登录</a>
		<a style="display: none" href="javascript:void(0)" id="logout">退出</a>
	</div>
	
  </div>
</div>





 <div id="loading" style="display: none;">数据交互中...</div>
 <div id="error" style="display: none;">请登录后操作</div>

<!--注册表单-->
	<form class="reg" id="reg" style="display: none;" >
		<h1 class="reg_title">K-Cat用户注册</h1>
		<div class="reg_main">
			<p>
				<label for="user">账号：</label>
				<input type="text" name="userName" title="用户名 不得少于2位！" class="text" id="user" />
				<span class="star">*</span>
			</p>
			<p>
				<label for="password">密码：</label>
				<input type="password" name="userPwd" title="密码不得少于6位！" class="text" id="password" />
				<span class="star">*</span>
			</p>
			<p>
				<label for="repassword">确认密码：</label>
				<input type="password" name="repassword" class="repassword" id="repassword" />
				<span class="star">*</span>
			</p>
			<p>
				<label for="sex">性别：</label>
				<input type="radio" name="sex" id="nan" ><label for="nan">男</label></input>
				<input type="radio" name="sex" id="nv" ><label for="nv">女</label></input>
			</p>
			<p>
				<label for="email">邮箱：</label>
				<input type="text" name="email" class="text" title="请输入正确的邮箱！" id="email" />
				<span class="star">*</span>
			</p>

		<ol class="reg_error"></ol>
		
		</div>
	</form>
	

<!--用户登录表单-->
	<form class="Login" id="login" style="display: none;" >
		<h1 class="reg_title_2">K-Cat用户登录</h1>
		<div class="reg_main_2">
			<ol class="login_error"></ol>
			<p>
				<label for="user">帐号：</label>
				<input type="text" name="userName" class="text" id="login_user" />
				<span class="star">*</span>
			</p>
			<p>
				<label for="pass">密码：</label>
				<input type="password" name="userPwd" class="text" id="login_pass" />
				<span class="star">*</span>
			</p>
			<p>
				<input type="checkbox" name="expires" id="expires" checked="checked" /><label for="expires">登录后有效期一周</label>
			</p>
		</div>
	</form> 

