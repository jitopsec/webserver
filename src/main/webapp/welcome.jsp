<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>�ɹ�ҳ��</title>
	<meta name="website" content="http://www.crazyit.org" />
</head>
<body>
	����վ���ʴ�����${applicationScope.counter}<br />
	��ӭ��${sessionScope.user},���Ѿ���¼!<br />
	
	��¼����<s:property value="username" /><br>
	���룺<s:property value="password" /><br>
	Tips��<s:property value="tips" /><br>
	<a href="getBooks.action">�鿴��������ѳ����ͼ��</a><br />
	${requestScope.notice}
</body>
</html>
