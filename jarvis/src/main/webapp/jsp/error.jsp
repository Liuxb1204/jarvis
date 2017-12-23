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

<title>错误</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<link href="${pageContext.request.contextPath}/css/404.css"
	rel="stylesheet" type="text/css" />
<link rel="SHORTCUT ICON"
	href="${pageContext.request.contextPath}/images/h.png" />
<style type="text/css">
#divcss5 {
	margin: 0 auto;
	border: 0px solid #000;
	width: 95%;
	height: 95%
}
</style>

<script type="text/javascript">
	$(function() {
		var h = $(window).height();
		$('body').height(h);
		$('.mianBox').height(h);
		centerWindow(".tipInfo");
	});

	//2.将盒子方法放入这个方，方便法统一调用
	function centerWindow(a) {
		center(a);
		//自适应窗口
		$(window).bind('scroll resize', function() {
			center(a);
		});
	}

	//1.居中方法，传入需要剧中的标签
	function center(a) {
		var wWidth = $(window).width();
		var wHeight = $(window).height();
		var boxWidth = $(a).width();
		var boxHeight = $(a).height();
		var scrollTop = $(window).scrollTop();
		var scrollLeft = $(window).scrollLeft();
		var top = scrollTop + (wHeight - boxHeight) / 2;
		var left = scrollLeft + (wWidth - boxWidth) / 2;
		$(a).css({
			"top" : top,
			"left" : left
		});
	}

	function tupian(img) {
		//alert(img.id);
		window
				.open('${pageContext.request.contextPath }/user/tiaozhuan.html?pagename=pubu'); //打开新窗口
		//location.href="${pageContext.request.contextPath }/jsp/pubu.jsp";           覆盖原来界面
	}
</script>
</head>
<body>
	<div class="mianBox">
		<img src="images/yun0.png" alt="" class="yun yun0" /> <img
			src="images/yun1.png" alt="" class="yun yun1" /> <img
			src="images/yun2.png" alt="" class="yun yun2" /> <img
			src="images/bird.png" alt="" class="bird" /> <img
			src="images/san.png" alt="" class="san" />
		<div class="tipInfo">
			<div class="in">
				<div class="textThis">
					<h2>出错啦404！</h2>
					<p>
						<span>页面自动<a id="href" href="javascript:history.back(-1)">跳转</a></span><span>等待<b
							id="wait">5</b>秒
						</span>
					</p>
					<script type="text/javascript">
						(function() {
							var wait = document.getElementById('wait'), href = document
									.getElementById('href').href;
							var interval = setInterval(function() {
								var time = --wait.innerHTML;
								if (time <= 0) {

									clearInterval(interval);
									//location.href = href;
									window.history.go(-1);  //返回上一页
								//	alert("开始跳转提示");
								}
								;
							}, 1000);
						})();
					</script>
				</div>
			</div>
		</div>
	</div>


</body>
</html>