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

<title>主页</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<%--     <script type="text/javascript" src="${pageContext.request.contextPath}/js/highcharts.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/highcharts-3d.js"></script> --%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/home/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/home/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/home/flexslider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/home/jquery.fancybox.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/home/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/home/responsive.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/home/font-icon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/home/animate.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/home/style4.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/home/font-awesome.min.css">


<link rel="SHORTCUT ICON"
	href="${pageContext.request.contextPath}/images/h.png" />
<style type="text/css">
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
<body>
	<!-- header section -->
	<section class="banner" role="banner"> <header id="header">
	<div class="header-content clearfix">
		<a class="logo" href="${pageContext.request.contextPath }/user/skip.html?pagename=user/login">Snap</a>
		<nav class="navigation" role="navigation">
		<ul class="primary-nav">
			<li><a href="#banner">Home</a></li>
			<li><a href="#services">Services</a></li>
			<li><a href="#content-3-10">About</a></li>
			<li><a href="#gallery">Gallery</a></li>
			<li><a href="#teams">Our Team</a></li>
			<li><a href="#testimonials">Testimonials</a></li>
			<li><a href="#contact">Contact</a></li>
		</ul>
		</nav>
		<a href="#" class="nav-toggle">Menu<span></span></a>
	</div>
	</header> <!-- banner text -->
	<div class="banner" id="banner">
		<ul class="cb-slideshow">
			<li><span>Image 01</span>
			<div>
					<h3>POTRATE</h3>
				</div></li>
			<li><span>Image 02</span>
			<div>
					<h3>CLICKING</h3>
				</div></li>
			<li><span>Image 03</span>
			<div>
					<h3>PASSION</h3>
				</div></li>
			<li><span>Image 04</span>
			<div>
					<h3>AWESOME</h3>
				</div></li>
			<li><span>Image 05</span>
			<div>
					<h3>SELFE</h3>
				</div></li>
			<li><span>Image 06</span>
			<div>
					<h3>NATURE</h3>
				</div></li>
		</ul>
		<!-- banner text -->
	</div>
	</section>
	<!-- header section -->
	<!-- intro section -->
	<section id="intro" class="section intro">
	<div class="container">
		<div class="col-md-8 col-md-offset-2 text-center">
			<h3>PASSION IS THE ESSENCE OF CLICKING GREAT</h3>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis
				eu libero scelerisque ligula sagittis faucibus eget quis lacus.Lorem
				ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor
				sit amet, consectetur adipiscing elit.</p>
		</div>
	</div>
	</section>
	<!-- intro section -->
	<!-- services section -->
	<section id="services" class="services service-section">
	<div class="container">
		<div class="section-header">
			<h2 class="wow fadeInDown animated">Our Services</h2>
			<p class="wow fadeInDown animated">
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
				eget risus vitae massa <br> semper aliquam quis mattis quam.
			</p>
		</div>
		<div class="row">
			<div class="col-md-4 col-sm-6 services text-center">
				<span class="icon icon-strategy"></span>
				<div class="services-content">
					<h5>Web Design</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Duis eu libero scelerisque ligula sagittis faucibus eget quis
						lacus.</p>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 services text-center">
				<span class="icon icon-briefcase"></span>
				<div class="services-content">
					<h5>Web Development</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Duis eu libero scelerisque ligula sagittis faucibus eget quis
						lacus.</p>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 services text-center">
				<span class="icon icon-tools"></span>
				<div class="services-content">
					<h5>User Experience</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Duis eu libero scelerisque ligula sagittis faucibus eget quis
						lacus.</p>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 services text-center">
				<span class="icon icon-genius"></span>
				<div class="services-content">
					<h5>Quality</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Duis eu libero scelerisque ligula sagittis faucibus eget quis
						lacus.</p>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 services text-center">
				<span class="icon icon-megaphone"></span>
				<div class="services-content">
					<h5>Nature</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Duis eu libero scelerisque ligula sagittis faucibus eget quis
						lacus.</p>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 services text-center">
				<span class="icon icon-trophy"></span>
				<div class="services-content">
					<h5>Photography</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Duis eu libero scelerisque ligula sagittis faucibus eget quis
						lacus.</p>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- services section -->
	<!--About-->
	<section id="content-3-10"
		class="content-block data-section nopad content-3-10">
	<div class="image-container col-sm-6 col-xs-12 pull-left">
		<div class="background-image-holder"></div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-6 col-xs-12 content">
				<div class="editContent">
					<h3>Hello This is Sam!</h3>
				</div>
				<div class="editContent">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam.Lorem ipsum dolor sit amet, consectetur
						adipiscing elit. Duis eu libero scelerisque ligula sagittis
						faucibus eget quis lacus.Lorem ipsum dolor sit amet, consectetur
						adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing
						elit</p>
					<p>Duis eu libero scelerisque ligula sagittis faucibus eget
						quis lacus.Lorem ipsum dolor sit amet, consectetur adipiscing
						elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
				</div>
				<a href="#gallery" class="btn btn-outline btn-outline outline-dark">Our
					Gallery</a>
			</div>
		</div>
		<!-- /.row-->
	</div>
	<!-- /.container --> </section>


	<!-- package section -->
	<section class="video-section">
	<div class="container">
		<div class="row">
			<div id="content24" data-section="content-24" class="data-section">
				<div class="col-md-6">
					<h3 class="eidtContent">Content Video</h3>
					<p class="eidtContent">Lorem Ipsum is simply dummy text of the
						printing and typesetting industry. Lorem Ipsum has been the
						industry's standard dummy text ever since the 1500s, when an
						unknown printer took a galley of type and scrambled it to make a
						type specimen book.</p>
					<p class="editContent">There are many variations of passages of
						Lorem Ipsum available, but the majority have suffered alteration
						in some form, by injected humour, or randomised words which don't
						look even slightly believable.</p>
					<p class="editContent">There are many variations of passages of
						Lorem Ipsum available, but the majority have suffered alteration
						in some form, by injected humour, or randomised words which don't
						look even slightly believable.</p>
				</div>
			</div>
		</div>
		<!-- end row -->
	</div>
	</section>
	<!-- package section -->

	<!-- gallery section -->
	<section id="gallery" class="gallery section">
	<div class="container-fluid">
		<div class="section-header">
			<h2 class="wow fadeInDown animated">Gallery</h2>
			<p class="wow fadeInDown animated">
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
				eget risus vitae massa <br> semper aliquam quis mattis quam.
			</p>
		</div>
		<div class="row no-gutter">
			<div class="col-lg-3 col-md-6 col-sm-6 work">
				<a href="${pageContext.request.contextPath}/images/01.jpg"
					class="work-box"> <img
					src="${pageContext.request.contextPath}/images/01.jpg" alt="">
					<div class="overlay">
						<div class="overlay-caption">
							<p>
								<span class="icon icon-magnifying-glass"></span>
							</p>
						</div>
					</div> <!-- overlay -->
				</a>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6 work">
				<a href="${pageContext.request.contextPath}/images/02.jpg"
					class="work-box"> <img
					src="${pageContext.request.contextPath}/images/02.jpg" alt="">
					<div class="overlay">
						<div class="overlay-caption">
							<p>
								<span class="icon icon-magnifying-glass"></span>
							</p>
						</div>
					</div> <!-- overlay -->
				</a>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6 work">
				<a href="${pageContext.request.contextPath}/images/03.jpg"
					class="work-box"> <img
					src="${pageContext.request.contextPath}/images/03.jpg" alt="">
					<div class="overlay">
						<div class="overlay-caption">
							<p>
								<span class="icon icon-magnifying-glass"></span>
							</p>
						</div>
					</div> <!-- overlay -->
				</a>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6 work">
				<a href="${pageContext.request.contextPath}/images/04.jpg"
					class="work-box"> <img
					src="${pageContext.request.contextPath}/images/04.jpg" alt="">
					<div class="overlay">
						<div class="overlay-caption">
							<p>
								<span class="icon icon-magnifying-glass"></span>
							</p>
						</div>
					</div> <!-- overlay -->
				</a>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6 work">
				<a href="${pageContext.request.contextPath}/images/05.jpg"
					class="work-box"> <img
					src="${pageContext.request.contextPath}/images/05.jpg" alt="">
					<div class="overlay">
						<div class="overlay-caption">
							<p>
								<span class="icon icon-magnifying-glass"></span>
							</p>
						</div>
					</div> <!-- overlay -->
				</a>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6 work">
				<a href="${pageContext.request.contextPath}/images/06.jpg"
					class="work-box"> <img
					src="${pageContext.request.contextPath}/images/06.jpg" alt="">
					<div class="overlay">
						<div class="overlay-caption">
							<p>
								<span class="icon icon-magnifying-glass"></span>
							</p>
						</div>
					</div> <!-- overlay -->
				</a>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6 work">
				<a href="${pageContext.request.contextPath}/images/07.jpg"
					class="work-box"> <img
					src="${pageContext.request.contextPath}/images/07.jpg" alt="">
					<div class="overlay">
						<div class="overlay-caption">
							<p>
								<span class="icon icon-magnifying-glass"></span>
							</p>
						</div>
					</div> <!-- overlay -->
				</a>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6 work">
				<a href="${pageContext.request.contextPath}/images/08.jpg"
					class="work-box"> <img
					src="${pageContext.request.contextPath}/images/08.jpg" alt="">
					<div class="overlay">
						<div class="overlay-caption">
							<p>
								<span class="icon icon-magnifying-glass"></span>
							</p>
						</div>
					</div> <!-- overlay -->
				</a>
			</div>
		</div>
	</div>
	</section>
	<!-- gallery section -->
	<!-- our team section -->
	<section id="teams" class="section teams">
	<div class="container">
		<div class="section-header">
			<h2 class="wow fadeInDown animated">Our Team</h2>
			<p class="wow fadeInDown animated">
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
				eget risus vitae massa <br> semper aliquam quis mattis quam.
			</p>
		</div>
		<div class="row">
			<div class="col-md-3 col-sm-6">
				<div class="person">
					<img src="img/team-1.jpg" alt="" class="img-responsive">
					<div class="person-content">
						<h4>Jonh Dow</h4>
						<h5 class="role">Founder</h5>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit
							eget risus vitae massa.</p>
					</div>
					<ul class="social-icons clearfix">
						<li><a href="#"><span class="fa fa-facebook"></span></a></li>
						<li><a href="#"><span class="fa fa-twitter"></span></a></li>
						<li><a href="#"><span class="fa fa-google-plus"></span></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="person">
					<img src="img/team-2.jpg" alt="" class="img-responsive">
					<div class="person-content">
						<h4>Markus Linn</h4>
						<h5 class="role">Creative</h5>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit
							eget risus vitae massa.</p>
					</div>
					<ul class="social-icons clearfix">
						<li><a href="#" class=""><span class="fa fa-facebook"></span></a></li>
						<li><a href="#" class=""><span class="fa fa-twitter"></span></a></li>
						<li><a href="#" class=""><span class="fa fa-google-plus"></span></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="person">
					<img src="img/team-3.jpg" alt="" class="img-responsive">
					<div class="person-content">
						<h4>Chris Jemes</h4>
						<h5 class="role">Technical</h5>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit
							eget risus vitae massa.</p>
					</div>
					<ul class="social-icons clearfix">
						<li><a href="#" class=""><span class="fa fa-facebook"></span></a></li>
						<li><a href="#" class=""><span class="fa fa-twitter"></span></a></li>
						<li><a href="#" class=""><span class="fa fa-google-plus"></span></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="person">
					<img src="img/team-4.jpg" alt="" class="img-responsive">
					<div class="person-content">
						<h4>Vintes Mars</h4>
						<h5 class="role">Marketing</h5>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit
							eget risus vitae massa.</p>
					</div>
					<ul class="social-icons clearfix">
						<li><a href="#" class=""><span class="fa fa-facebook"></span></a></li>
						<li><a href="#" class=""><span class="fa fa-twitter"></span></a></li>
						<li><a href="#" class=""><span class="fa fa-google-plus"></span></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- our team section -->
	<!-- Testimonials section -->
	<section id="testimonials" class="section testimonials no-padding">
	<div class="container-fluid">
		<div class="row no-gutter">
			<div class="flexslider">
				<ul class="slides">
					<li>
						<div class="col-md-12">
							<blockquote>
								<h1>"Lorem ipsum dolor sit amet, consectetur adipiscing
									elit. Praesent eget risus vitae massa semper aliquam quis
									mattis consectetur adipiscing elit.."</h1>
								<p>Chris Mentsl</p>
							</blockquote>
						</div>
					</li>
					<li>
						<div class="col-md-12">
							<blockquote>
								<h1>"Praesent eget risus vitae massa Lorem ipsum dolor sit
									amet, consectetur adipiscing elit. Praesent eget risus vitae
									massa semper aliquam quis mattis consectetur adipiscing elit.."
								</h1>
								<p>Kristean velnly</p>
							</blockquote>
						</div>
					</li>
					<li>
						<div class="col-md-12">
							<blockquote>
								<h1>"Consectetur adipiscing elit Lorem ipsum dolor sit
									amet, consectetur adipiscing elit. Praesent eget risus vitae
									massa semper aliquam quis mattis consectetur adipiscing elit.."
								</h1>
								<p>Markus Denny</p>
							</blockquote>
						</div>
					</li>
					<li>
						<div class="col-md-12">
							<blockquote>
								<h1>"Vitae massa semper aliquam Lorem ipsum dolor sit amet,
									consectetur adipiscing elit. Praesent eget risus vitae massa
									semper aliquam quis mattis consectetur adipiscing elit.."</h1>
								<p>John Doe</p>
							</blockquote>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	</section>
	<!-- Testimonials section -->

	<!-- contact section -->
	<section id="contact" class="section">
	<div class="container">
		<div class="section-header">
			<h2 class="wow fadeInDown animated">Contact Us</h2>
			<p class="wow fadeInDown animated">
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
				eget risus vitae massa <br> semper aliquam quis mattis quam.
			</p>
		</div>
		<div class="row">
			<div class="col-md-8 col-md-offset-2 conForm">
				<div id="message"></div>
				<form method="post" action="/php/contact.php" name="cform"
					id="cform">
					<input name="name" id="name" type="text"
						class="col-xs-12 col-sm-12 col-md-12 col-lg-12"
						placeholder="Your name..."> <input name="email"
						id="email" type="email"
						class=" col-xs-12 col-sm-12 col-md-12 col-lg-12 noMarr"
						placeholder="Email Address...">
					<textarea name="comments" id="comments" cols="" rows=""
						class="col-xs-12 col-sm-12 col-md-12 col-lg-12"
						placeholder="Message..."></textarea>
					<input type="submit" id="submit" name="send" class="submitBnt"
						value="Send">
					<div id="simple-msg"></div>
				</form>
			</div>
		</div>
	</div>
	</section>
	<!-- contact section -->
	<!-- JS FILES -->
	<!-- <script src="js/jquery.min.js" ></script>  -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/home/jquery.flexslider-min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/home/jquery.fancybox.pack.js"></script>
	<script src="${pageContext.request.contextPath}/js/home/retina.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/home/modernizr.js"></script>
	<script src="${pageContext.request.contextPath}/js/home/main.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/home/jquery.contact.js"></script>




	<%-- <div id="container" style="height: 500px"></div>
<div><a href="${pageContext.request.contextPath }/user/skip.html?pagename=user/login">登录</a></div> --%>
</body>
</html>