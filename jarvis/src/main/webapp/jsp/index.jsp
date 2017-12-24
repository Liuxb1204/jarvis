<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>测试界面</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>

<link rel="SHORTCUT ICON"
	href="${pageContext.request.contextPath}/images/h.png" />
<style type="text/css">

</style>

<script type="text/javascript">
	
	function tupian(img) {
		//alert(img.id);
		window.open('${pageContext.request.contextPath }/user/tiaozhuan.html?pagename=pubu'); //打开新窗口
		//location.href="${pageContext.request.contextPath }/jsp/pubu.jsp";           覆盖原来界面
	}
</script>
</head>
<body>
	<div>测试界面</div>
</body>
</html>