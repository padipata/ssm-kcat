<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>娱乐软件上传页面</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/back/uploadPlay.do" enctype="multipart/form-data" method="post">
	<h1>娱乐软件信息上传</h1>
	(仅限jpg文件，其他可能会出错)
	<table>
		<tr>
			<td>软件名称</td>
			<td><input type="text" name="softName"></td>
		</tr>
		<tr>
			<td>软件所属</td>     <!-- 到时候改成下拉选择 -->
			<td><input type="text" name="soft_to_title"></td>			
		</tr>
		<tr>
			<td>软件类型</td>    <!-- 到时候改成下拉选择 -->
			<td><input type="text" name="softType"></td>
		</tr>
		<tr>
			<td>url地址</td>
			<td><input type="text" name="softUrl"></td>
		</tr>
		<tr>
			<td>照片文件</td>
			<td><input type="file" name="imageFile"></td>
		</tr>
		
		<tr>
			<td><input type="submit" value="上传"></td>
		</tr>
	
	</table>

</form>
</body>
</html>