<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>��¼ҳ��</title>
	<meta name="website" content="http://www.crazyit.org" />
	
	<script type="text/javascript">
		
		
		//function regist(){
			//DMI ��̬�������� actionName!method.action
			//document.forms[0].action="./admin/login!regist.action";
			//document.forms[0].submit();
		//}
		
		/*
		function regist(){
			//����Action method����
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
		<caption><h3>�û���¼</h3></caption>
		<tr>
			<td>�û�����<input type="text" name="username"/></td>
		</tr>
		<tr>
			<td>��&nbsp;&nbsp;�룺<input type="text" name="password"/></td>
		</tr>
		<tr align="center">
			<td colspan="2"><input type="submit" value="��¼"/>
			<input type="reset" value="����" />
			<input type="button" value="ע��" onclick="regist();"/>
			</td>
			
		</tr>
	</table>
	</form>
</body>
</html>
