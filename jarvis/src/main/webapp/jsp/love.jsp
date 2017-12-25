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

<title>送给我的她</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">




<link rel="SHORTCUT ICON" href="${pageContext.request.contextPath}/images/h.png" />

<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/default.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>

		<script type="text/javascript" src="${pageContext.request.contextPath}/js/love/jscex.min.js"></script>

		<script type="text/javascript" src="${pageContext.request.contextPath}/js/love/jscex-parser.js"></script>

		<script type="text/javascript" src="${pageContext.request.contextPath}/js/love/jscex-jit.js"></script>

		<script type="text/javascript" src="${pageContext.request.contextPath}/js/love/jscex-builderbase.min.js"></script>

		<script type="text/javascript" src="${pageContext.request.contextPath}/js/love/jscex-async.min.js"></script>

		<script type="text/javascript" src="${pageContext.request.contextPath}/js/love/jscex-async-powerpack.min.js"></script>

		<script type="text/javascript" src="${pageContext.request.contextPath}/js/love/functions.js" charset="utf-8"></script>

		<script type="text/javascript" src="${pageContext.request.contextPath}/js/love/love.js" charset="utf-8"></script>



<script type="text/javascript">
	function tupian(img) {
		//alert(img.id);
		window
				.open('${pageContext.request.contextPath }/user/tiaozhuan.html?pagename=pubu'); //打开新窗口
		//location.href="${pageContext.request.contextPath }/jsp/pubu.jsp";           覆盖原来界面
	}
</script>


</head>
<body>

	<audio autoplay="autopaly"> <source src="music/xin.mp3" type="audio/mp3" /> </audio>

	<div id="main">
		<div id="error">
			本页面采用HTML5编辑，目前您的浏览器无法显示，请换成谷歌(<a
				href="http://www.google.cn/chrome/intl/zh-CN/landing_chrome.html?hl=zh-CN&brand=CHMI">Chrome</a>)或者火狐(<a
				href="http://firefox.com.cn/download/">Firefox</a>)浏览器，或者其他游览器的最新版本。
		</div>

		<div id="wrap">

			<div id="text">

				<div id="code">
						
					<font color="#FF0000"> 
						 
						 <span class="say">❤</span><br>
						 
						<span class="say">二女，你还好吗？我好想你</span><br>

						<span class="say"> </span><br> 
						<span class="say">我经常在梦里见到你，你一点都没变呢</span><br> 
						<span class="say">想到你骂我，打我，想到我们吵架，我就很开心</span><br>
						
						<span class="say">倘若我是一只小狗，见到你我的尾巴一定会</span><br>
						<span class="say">兴奋地摇个不停......</span><br>
						<span class="say">那时候的每一天过的都很快乐，时间好像流水</span><br><br>
						
						<span class="say">我知道我们是不可能了</span><br>
						<span class="say">不过还是要对你说声谢谢！</span><br> 
						<span class="say">我知道以前你跟着我受了很多委屈，对不起</span><br> 
						<span class="say">你以后一定要好好地照顾自己，爱惜自己</span><br>
						<span class="say">我觉得人生最美好的不是相遇而是重逢</span><br> 
						<span class="say">真的希望我们以后还能再见面，就像多年的老友一样 </span><br> 
						<span class="say">我一定会跑过去给你一个大大的拥抱 </span><br> 
						<span class="say">希望那一天可以快点到来吧</span><br>
						<span class="say">......</span><br>  <br>
						<span class="say"><span class="space"></span> -- 想你的小斌--❤</span>

					</font>
					

				</div>

			</div>

			<div id="clock-box">

				<span class="STYLE1"></span><font color="#33CC00"> 你知道吗，我们分手</font>

				<span class="STYLE1">已经是……</span>

				<div id="clock"></div>

			</div>

			<canvas id="canvas" width="1100" height="680"></canvas>

		</div>



	</div>



	<script>
		
	</script>



	<script>
		(function() {

			var canvas = $('#canvas');

			if (!canvas[0].getContext) {

				$("#error").show();

				return false;
			}

			var width = canvas.width();

			var height = canvas.height();

			canvas.attr("width", width);

			canvas.attr("height", height);

			var opts = {

				seed : {

					x : width / 2 - 20,

					color : "rgb(190, 26, 37)",

					scale : 2

				},

				branch : [

				[ 535, 680, 570, 250, 500, 200, 30, 100, [

				[ 540, 500, 455, 417, 340, 400, 13, 100, [

				[ 450, 435, 434, 430, 394, 395, 2, 40 ]

				] ],

				[ 550, 445, 600, 356, 680, 345, 12, 100, [

				[ 578, 400, 648, 409, 661, 426, 3, 80 ]

				] ],

				[ 539, 281, 537, 248, 534, 217, 3, 40 ],

				[ 546, 397, 413, 247, 328, 244, 9, 80, [

				[ 427, 286, 383, 253, 371, 205, 2, 40 ],

				[ 498, 345, 435, 315, 395, 330, 4, 60 ]

				] ],

				[ 546, 357, 608, 252, 678, 221, 6, 100, [

				[ 590, 293, 646, 277, 648, 271, 2, 80 ]

				] ]

				] ]

				],

				bloom : {

					num : 700,

					width : 1080,

					height : 650,

				},

				footer : {

					width : 1200,

					height : 5,

					speed : 10,

				}

			}

			var tree = new Tree(canvas[0], width, height, opts);

			var seed = tree.seed;

			var foot = tree.footer;

			var hold = 1;

			canvas.click(function(e) {

				var offset = canvas.offset(), x, y;

				x = e.pageX - offset.left;

				y = e.pageY - offset.top;

				if (seed.hover(x, y)) {

					hold = 0;

					canvas.unbind("click");

					canvas.unbind("mousemove");

					canvas.removeClass('hand');

				}

			}).mousemove(function(e) {

				var offset = canvas.offset(), x, y;

				x = e.pageX - offset.left;

				y = e.pageY - offset.top;

				canvas.toggleClass('hand', seed.hover(x, y));

			});

			var seedAnimate = eval(Jscex.compile("async", function() {

				seed.draw();

				while (hold) {

					$await(Jscex.Async.sleep(10));

				}

				while (seed.canScale()) {

					seed.scale(0.95);

					$await(Jscex.Async.sleep(10));

				}

				while (seed.canMove()) {

					seed.move(0, 2);

					foot.draw();

					$await(Jscex.Async.sleep(10));

				}

			}));

			var growAnimate = eval(Jscex.compile("async", function() {

				do {

					tree.grow();

					$await(Jscex.Async.sleep(10));

				} while (tree.canGrow());

			}));

			var flowAnimate = eval(Jscex.compile("async", function() {

				do {

					tree.flower(2);

					$await(Jscex.Async.sleep(10));

				} while (tree.canFlower());

			}));

			var moveAnimate = eval(Jscex.compile("async", function() {

				tree.snapshot("p1", 240, 0, 610, 680);

				while (tree.move("p1", 500, 0)) {

					foot.draw();

					$await(Jscex.Async.sleep(10));

				}

				foot.draw();

				tree.snapshot("p2", 500, 0, 610, 680);

				// 会有闪烁不得意这样做, (＞﹏＜)

				canvas.parent().css("background",
						"url(" + tree.toDataURL('image/png') + ")");

				canvas.css("background", "#ffe");

				$await(Jscex.Async.sleep(300));

				canvas.css("background", "none");

			}));

			var jumpAnimate = eval(Jscex.compile("async", function() {

				var ctx = tree.ctx;

				while (true) {

					tree.ctx.clearRect(0, 0, width, height);

					tree.jump();

					foot.draw();

					$await(Jscex.Async.sleep(25));

				}

			}));

			var textAnimate = eval(Jscex.compile("async", function() {

				var together = new Date();

				together.setFullYear(2016, 11, 21); //时间年月日

				together.setHours(16); //小时	

				together.setMinutes(53); //分钟

				together.setSeconds(0); //秒前一位

				together.setMilliseconds(2); //秒第二位

				$("#code").show().typewriter();

				$("#clock-box").fadeIn(500);

				while (true) {

					timeElapse(together);

					$await(Jscex.Async.sleep(1000));

				}

			}));

			var runAsync = eval(Jscex.compile("async", function() {

				$await(seedAnimate());

				$await(growAnimate());

				$await(flowAnimate());

				$await(moveAnimate());

				textAnimate().start();

				$await(jumpAnimate());

			}));

			runAsync().start();

		})();
	</script>



</body>

</html>