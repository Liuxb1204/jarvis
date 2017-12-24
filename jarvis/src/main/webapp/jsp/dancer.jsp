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

<title>首页</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/dancer/form.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/dancer/jquery.jgrowl.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/dancer/modernizr.custom.79639.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/dancer/jquery.swatchbook.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/dancer/sketch.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/dancer/ui.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/dancer/jquery.dropdown.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/dancer/modernizr.custom.63321.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/dancer/PisualFumikaLogin.js"></script>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/dancer/demo.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/dancer/style3.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/dancer/ui.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/dancer/style6.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/dancer/stylelogin.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/dancer/styleload.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/dancer/jquery.jgrowl.min.css">


<link rel="SHORTCUT ICON"
	href="${pageContext.request.contextPath}/images/dancer/h.png" />
<style type="text/css">
div.jGrowl div.manilla {
	background-color: #FFF1C2;
	color: navy;
}

div.jGrowl div.smoke {
	background: url('images/smoke.png') no-repeat;
	-moz-border-radius: 0px;
	-webkit-border-radius: 0px;
	width: 298px;
	height: 73px;
	overflow: hidden;
}

div.jGrowl div.flora {
	background: #E6F7D4 url(flora-notification.png) no-repeat;
	-moz-border-radius: 0px;
	-webkit-border-radius: 0px;
	opacity: 1;
	filter: alpha(opacity =       100);
	width: 270px;
	height: 90px;
	padding: 0px;
	overflow: hidden;
	border-color: #5ab500;
}

div.jGrowl div.flora div.message {
	padding: 5px;
	color: #000;
}

div.jGrowl div.flora div.header {
	background: url(flora-header.png) no-repeat;
	padding: 5px;
}

div.jGrowl div.flora div.close {
	background: url(flora-close.png) no-repeat;
	padding: 5px;
	color: transparent;
	padding: 0px;
	margin: 5px;
	width: 17px;
}

div.jGrowl div.iphone {
	font-family: "Helvetica Neue", "Helvetica";
	font-size: 12px;
	background: url(iphone.png) no-repeat;
	-moz-border-radius: 0px;
	-webkit-border-radius: 0px;
	opacity: .90;
	filter: alpha(opacity =       90);
	width: 235px;
	height: 137px;
	overflow: hidden;
	border-color: #5ab500;
	color: #fff;
}

div.jGrowl div.iphone .jGrowl-close {
	padding-right: 20px;
}

div.jGrowl div.iphone div.message {
	padding-top: 0px;
	padding-bottom: 7px;
	padding-left: 15px;
	padding-right: 15px;
}

div.jGrowl div.iphone div.header {
	padding: 7px;
	padding-left: 15px;
	padding-right: 15px;
	font-size: 17px;
}

div.jGrowl div.iphone div.close {
	display: none;
}

div#random {
	width: 1000px;
	background-color: red;
	line-height: 60px;
}
</style>

<script type="text/javascript">
	function tupian(img) {
		//alert(img.id);
		window
				.open('${pageContext.request.contextPath }/user/tiaozhuan.html?pagename=pubu'); //打开新窗口
		//location.href="${pageContext.request.contextPath }/jsp/pubu.jsp";           覆盖原来界面
	}
</script>
</head>
<body id="body">

	<script type="text/javascript">
		(function($) {

			$(document).ready(function() {

				$('#test2').jGrowl("hi 见到你很高兴.", {

					theme : 'smoke',

					closer : false,

					life : 999999

				});

			});

		})(jQuery);
	</script>

	<div id="test2" class="bottom-left"></div>



	<div id="Loading" class="demo-3 demo-dark"
		style="z-index: 10002; position: fixed; margin-left: 47%; margin-top: 9%; display: none;">

		<div class="container">



			<section class="main"> <!-- the component -->

			<ul class="bokeh">

				<li></li>

				<li></li>

				<li></li>

				<li></li>

			</ul>

			</section>

		</div>

	</div>





	<script>
		function CloseMouseEffects() {

			demo.mousemove = function() {

			};

		}

		function OpenMouseEffects() {

			demo.mousemove = function() {

				var particle, theta, force, touch, max, i, j, n;

				for (i = 0, n = demo.touches.length; i < n; i++) {

					touch = demo.touches[i], max = random(1, 4);

					for (j = 0; j < max; j++) {

						demo.spawn(touch.x, touch.y);

					}

				}

			};

		}

		function ChangeBackgroundWhite()

		{

			document.getElementById("body").style.background = "#ddd url(images/dancer/bg.jpg) repeat top left";

		}

		function ChangeBackgroundBlack()

		{

			document.getElementById("body").style.background = "#ddd url(images/egg_shell.png) repeat top left";

		}

		var menu = ui.menu().add('Close Mouse Effects', CloseMouseEffects).add(

		'Open Mouse Effects', OpenMouseEffects).add("ChangeBackgroundWhite",
				ChangeBackgroundWhite).add("ChangeBackgroundBlack",
				ChangeBackgroundBlack);

		menu.on('Add item', function() {

			console.log('added an item');

		});

		oncontextmenu = function(e) {

			e.preventDefault();

			menu.moveTo(e.pageX, e.pageY).show();

		};
	</script>







	<!-- <script>
		$.jGrowl("Welcome to Fumika System !!");

		$

				.jGrowl(

						"Connect Servers Stahd By ..<br>Conect Spring security System.... <br>Get ROLE_ANONYMOUS Role  ",

						{

							theme : 'manilla',

							speed : 'slow',

							animateOpen : {

								height : "show"

							},

							animateClose : {

								height : "hide"

							}

						});
	</script> -->



	<div id="test" style="position: fixed; top: 0px; z-index: 20;"></div>



	<div id="BlackGroung"
		style="background: rgba(0, 0, 0, 0.8); z-index: 9999; width: 100%; height: 100%; position: fixed; display: none"
		onclick="$('#BlackGroung').fadeOut(400);$('#LoginForm').fadeOut(300);stangbylogin();">

		<img src="images/dancer/pisuallogo.png"
			style="margin-left: 39%; margin-top: 8%">



		<script>
			function stangbylogin() {

				$.jGrowl("Stand By Login..", {

					theme : 'manilla',

					speed : 'slow',

					animateOpen : {

						height : "show"

					},

					animateClose : {

						height : "hide"

					}

				});

			}
		</script>





	</div>



	<div class="container">



		<header> <img src="images/dancer/fumikaLogo.png"
			style="top: 100px;">



		<div class="support-note">

			<!-- let's check browser support with modernizr -->

			<!--span class="no-cssanimations">CSS animations are not supported in your browser</span-->

			<span class="no-csstransforms">CSS transforms are not

				supported in your browser</span>

			<!--span class="no-csstransforms3d">CSS 3D transforms are not supported in your browser</span-->

			<span class="no-csstransitions">CSS transitions are not

				supported in your browser</span> <span class="note-ie">Sorry, only

				modern browsers.</span>

		</div>



		</header>







		<div id="sb-container" class="sb-container">



			<div>

				<span class="sb-icon icon-cog"></span>

				<h4>

					<span>设置</span>

				</h4>

			</div>

			<div>

				<span class="sb-icon icon-flight"></span>

				<h4>

					<span>飞机</span>

				</h4>

			</div>

			<div>

				<span class="sb-icon icon-eye"></span>

				<h4>

					<span>眼睛</span>

				</h4>

			</div>

			<div>

				<span class="sb-icon icon-install"></span>

				<h4>

					<span>阅读</span>

				</h4>

			</div>

			<div>

				<span class="sb-icon icon-bag"></span>

				<h4>

					<span>文件</span>

				</h4>

			</div>

			<div>

				<span class="sb-icon icon-globe"></span>

				<h4>

					<span>世界</span>

				</h4>

			</div>

			<div>

				<span class="sb-icon icon-picture"></span>

				<h4>

					<span>相册</span>

				</h4>

			</div>

			<div>

				<span class="sb-icon icon-video"></span>

				<h4>

					<span>电影</span>

				</h4>

			</div>

			<div>

				<span class="sb-icon icon-download"></span>

				<h4>

					<span>下载</span>

				</h4>

			</div>

			<div>

				<span class="sb-icon icon-mobile"></span>

				<h4>

					<span>手机</span>

				</h4>

			</div>

			<div onclick="login();">

				<span class="sb-icon icon-camera"></span>

				<h4>

					<span>登录</span>

				</h4>

			</div>

			<div>

				<h4>

					<span>点我</span>

				</h4>

				<span class="sb-toggle">dancer</span>



			</div>





		</div>

		<!-- sb-container -->



	</div>

	<!-- <script>
		function login() {

			$("#Login").fadeTo(200, 1);

			ui.dialog('Overlay time').closable().overlay().showno();

			document.getElementById("Login").style.visibility = "visible";

		}
	</script>



	<div id="Login"
		style="position: fixed; z-index: 999; text-align: center; visibility: hidden; top: 20%; left: 35%;">

		<div>

			<select id="cd-dropdown" class="cd-select">

				<option value="-1" selected>Select You Login Method</option>

				<option value="1" class="icon-camera">Safe Login Model!</option>

				<option value="2" class="icon-diamond">Normel Login Model!</option>

				<option value="3" class="icon-rocket">Remote Login Model!</option>

				<option value="4" class="icon-star">Login Out!</option>

				<option value="5" class="icon-clock">Forget Password</option>

			</select>

		</div>

	</div>



	<div id="LoginForm"
		style="position: fixed; z-index: 10000; top: 30%; left: 37%; display: none;">

		<form class="form-5 clearfix" id="Safelogin">

			<p>

				<input type="text" id="username" name="username"
					placeholder="Username"> <input type="password"
					name="password" id="password" placeholder="Password"> <input
					type="password" name="SafeNum" id="password" placeholder="SafeNum">

			</p>

			<button type="button" name="submit" style="height: 153px"
				onclick="PostJsonAjax('../login')">

				<i class="icon-arrow-right"></i> <span>Sign in</span>

			</button>

		</form>

	</div> -->









	<script type="text/javascript">
		$(function() {

			$('#cd-dropdown').dropdown({

				gutter : 5,

				stack : false,

				delay : 100,

				slidingIn : 100

			});

		});
	</script>



	<script type="text/javascript">
		$(function() {

			$('#sb-container').swatchbook({

				// number of degrees that is between each item

				angleInc : 15,

				neighbor : 15,

				// if it should be closed by default

				initclosed : true,

				// index of the element that when clicked, triggers the open/close function

				// by default there is no such element

				closeIdx : 11

			});

		});
	</script>



	<script>
		// ----------------------------------------

		// Particle

		// ----------------------------------------

		function Particle(x, y, radius) {

			this.init(x, y, radius);

		}

		Particle.prototype = {

			init : function(x, y, radius) {

				this.alive = true;

				this.radius = radius || 10;

				this.wander = 0.15;

				this.theta = random(TWO_PI);

				this.drag = 0.92;

				this.color = '#fff';

				this.x = x || 0.0;

				this.y = y || 0.0;

				this.vx = 0.0;

				this.vy = 0.0;

			},

			move : function() {

				this.x += this.vx;

				this.y += this.vy;

				this.vx *= this.drag;

				this.vy *= this.drag;

				this.theta += random(-0.5, 0.5) * this.wander;

				this.vx += sin(this.theta) * 0.1;

				this.vy += cos(this.theta) * 0.1;

				this.radius *= 0.96;

				this.alive = this.radius > 0.5;

			},

			draw : function(ctx) {

				ctx.beginPath();

				ctx.arc(this.x, this.y, this.radius, 0, TWO_PI);

				ctx.fillStyle = this.color;

				ctx.fill();

			}

		};

		// ----------------------------------------

		// Example

		// ----------------------------------------

		var MAX_PARTICLES = 280;

		var COLOURS = [ '#69D2E7', '#A7DBD8', '#E0E4CC', '#F38630', '#FA6900',

		'#FF4E50', '#F9D423' ];

		var particles = [];

		var pool = [];

		var demo = Sketch.create({

			container : document.getElementById('test')

		});

		demo.setup = function() {

			// Set off some initial particles.

			var i, x, y;

			//  for ( i = 0; i < 20; i++ ) {

			x = (demo.width * 0.5) + random(-100, 100);

			y = (demo.height * 0.5) + random(-100, 100);

			demo.spawn(0, 999);

			// }

		};

		demo.spawn = function(x, y) {

			if (particles.length >= MAX_PARTICLES)

				pool.push(particles.shift());

			particle = pool.length ? pool.pop() : new Particle();

			particle.init(x, y, random(5, 40));

			particle.wander = random(0.5, 2.0);

			particle.color = random(COLOURS);

			particle.drag = random(0.9, 0.99);

			theta = random(TWO_PI);

			force = random(2, 8);

			particle.vx = sin(theta) * force;

			particle.vy = cos(theta) * force;

			particles.push(particle);

		};

		demo.update = function() {

			var i, particle;

			for (i = particles.length - 1; i >= 0; i--) {

				particle = particles[i];

				if (particle.alive)

					particle.move();

				else

					pool.push(particles.splice(i, 1)[0]);

			}

		};

		demo.draw = function() {

			demo.globalCompositeOperation = 'lighter';

			for (var i = particles.length - 1; i >= 0; i--) {

				particles[i].draw(demo);

			}

		};

		demo.mousemove = function() {

			var particle, theta, force, touch, max, i, j, n;

			for (i = 0, n = demo.touches.length; i < n; i++) {

				touch = demo.touches[i], max = random(1, 4);

				for (j = 0; j < max; j++) {

					demo.spawn(touch.x, touch.y);

				}

			}

		};
	</script>

</body>


</html>