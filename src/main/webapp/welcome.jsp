<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>成功页面</title>
	<meta name="website" content="http://www.crazyit.org" />
</head>
<body>
	本网站访问次数：${applicationScope.counter}<br />
	欢迎，${sessionScope.user},您已经登录!<br />
	
	登录名：<s:property value="username" /><br>
	密码：<s:property value="password" /><br>
	Tips：<s:property value="tips" /><br>
	<a href="getBooks.action">查看作者李刚已出版的图书</a><br />
	${requestScope.notice}
</body>
</html>
