<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>登录页面</title>
	<meta name="website" content="http://www.crazyit.org" />
	
	<script type="text/javascript">
		
		
		//function regist(){
			//DMI 动态方法调用 actionName!method.action
			//document.forms[0].action="./admin/login!regist.action";
			//document.forms[0].submit();
		//}
		
		/*
		function regist(){
			//配置Action method属性
			document.forms[0].action = "./admin/regist.action";
			document.forms[0].submit();
		}*/
		
		function regist(){
			document.forms[0].action="./admin/admin_regist.action";
			document.forms[0].submit();
		}
	</script>
</head>
<body>
	<form action="./admin/login.action" method="post">
	<table align="center">
		<caption><h3>用户登录</h3></caption>
		<tr>
			<td>用户名：<input type="text" name="username"/></td>
		</tr>
		<tr>
			<td>密&nbsp;&nbsp;码：<input type="text" name="password"/></td>
		</tr>
		<tr align="center">
			<td colspan="2"><input type="submit" value="登录"/>
			<input type="reset" value="重填" />
			<input type="button" value="注册" onclick="regist();"/>
			</td>
			
		</tr>
	</table>
	</form>
</body>
</html>
