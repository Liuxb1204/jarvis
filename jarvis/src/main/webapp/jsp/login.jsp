<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String username = (String)request.getAttribute("username");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>登录</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/highcharts.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/highcharts-3d.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
<link rel="SHORTCUT ICON"
	href="${pageContext.request.contextPath}/img/h.png" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/loginstyle.css">

<style type="text/css">
.squaredThree {
  width: 80px;
  position: relative;
  margin: auto auto auto 20px;
}
.squaredThree label {
  width: 20px;
  height: 20px;
  cursor: pointer;
  position: absolute;
  top: 80%;
  left: -20%;
  background: -moz-linear-gradient(top, #222222 0%, #45484d 100%);
  background: -webkit-linear-gradient(top, #222222 0%, #45484d 100%);
  background: linear-gradient(to bottom, #222222 0%, #45484d 100%);
  -moz-border-radius: 4px;
  -webkit-border-radius: 4px;
  border-radius: 4px;
  -moz-box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.5), 0px 1px 0px rgba(255, 255, 255, 0.4);
  -webkit-box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.5), 0px 1px 0px rgba(255, 255, 255, 0.4);
  box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.5), 0px 1px 0px rgba(255, 255, 255, 0.4);
}
.squaredThree label:after {
  content: '';
  width: 9px;
  height: 5px;
  position: absolute;
  top: 4px;
  left: 4px;
  border: 3px solid #fcfff4;
  border-top: none;
  border-right: none;
  background: transparent;
  filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
  opacity: 0;
  -moz-transform: rotate(-45deg);
  -ms-transform: rotate(-45deg);
  -webkit-transform: rotate(-45deg);
  transform: rotate(-45deg);
}
.squaredThree label:hover::after {
  filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=30);
  opacity: 0.3;
}
.squaredThree input[type=checkbox] {
  visibility: hidden;
}
.squaredThree input[type=checkbox]:checked + label:after {
  filter: progid:DXImageTransform.Microsoft.Alpha(enabled=false);
  opacity: 1;
}
</style>

<script type="text/javascript">
	$(function() {
		//读取cookie 用户信息
		var name = $.cookie('username'); // 获得cookie
		var pwd = $.cookie('password'); // 获得cookie
		var check = $.cookie('checked'); // 获得cookie
		//console.log(name+"--"+pwd+"--"+check);
		//写入表单
		if(name!=undefined && pwd!=undefined && name!="null" && pwd!='null'){
			document.getElementById("name").value=name;  
			document.getElementById("pwd").value=pwd;  
		}if(check=='true'){
			document.getElementById("squaredThree").checked='checked';  
		}		
	});
	
	
	//其他登录方式
	function login(a) {
		if(a=='wx'){
			window.open('https://wx.qq.com/'); //打开新窗口
		}else if(a=='qq'){
			window.open('http://w.qq.com/');
		}else{
			window.open('https://weibo.com');
		}
	}
	function tupian(img) {
		//alert(img.id);
		window
				.open('${pageContext.request.contextPath }/user/tiaozhuan.html?pagename=pubu'); //打开新窗口
		//location.href="${pageContext.request.contextPath }/jsp/pubu.jsp";           覆盖原来界面
	}
	function remeberme(){
		var check = document.getElementById("squaredThree").checked;
		var name = document.getElementById("name").value;
		var pwd = document.getElementById("pwd").value
		console.log(name);
		var a = $.cookie('username'); // 获得cookie
		if(check==false && name!='' && pwd!=''){
			$.cookie('username',name ,{ expires: 30 }); // 设置cookie
			$.cookie('password', document.getElementById("pwd").value,{ expires: 30 });
			$.cookie('checked', 'true',{ expires: 30 }); 
		}else{
			$.cookie('username', null); //删除cookie
			$.cookie('password', null);
			$.cookie('checked', 'false'); 
			//alert("选中");
		}
	}
	function aa(){
		document.getElementById("squaredThree").checked='';
	}
</script>
</head>
<body>
<h1>贾维斯</h1>
<div class="container w3layouts agileits">
  <div class="login w3layouts agileits">
    <h2>登 录</h2>
    <form action="${pageContext.request.contextPath}/user/login.html" method="post">
      <input type="text" id="name" Name="username" placeholder="请输入用户名" value="<%-- ${username} --%>" onkeyup="aa()">
      <input type="password" id="pwd" Name="password" placeholder="请输入密码">
      
      <!-- <ul class="tick">
      <li>  
        <input type="checkbox" id="brand2" >
        <label for="brand2" ><span></span>记住我</label>
      </li>
    </ul>   -->
    
     <div class="squaredThree">
      <input type="checkbox"  id="squaredThree" name="remberme">
      <label for="squaredThree" onclick="remeberme()"></label><font color="#CCCCCC">记住我</font>
    </div>    <br/>
    

    
          <div class="send-button w3layouts agileits">
        <input type="submit" value="登 录">
    	</div>
    </form>
    

    <a href="#">忘记密码?</a>
    <div class="social-icons w3layouts agileits">
      <p>- 其他方式登录 -</p>
      <ul>
        <li class="qq"><a href="javascript:void(0)" onclick="login('qq')"> <span class="icons w3layouts agileits"></span> <span class="text w3layouts agileits">QQ</span></a></li>
        <li class="weixin w3ls"><a href="javascript:void(0)" onclick="login('wx')"> <span class="icons w3layouts"></span> <span class="text w3layouts agileits">微信</span></a></li>
        <li class="weibo aits"><a href="javascript:void(0)" onclick="login('wb')"> <span class="icons agileits"></span> <span class="text w3layouts agileits">微博</span></a></li>
        <div class="clear"> </div>
      </ul>
    </div>
    <div class="clear"></div>
  </div>
  <div class="register w3layouts agileits">
    <h2>注 册</h2>
    <form action="#" method="post">
      <input type="text" Name="Name" placeholder="用户名" required="" value="admin">
      <input type="text" Name="Email" placeholder="邮箱" required="" value="admin@163.com">
      <input type="password" Name="Password" placeholder="密码" required="">
      <input type="text" Name="Phone Number" placeholder="手机号码" required="">
          <div class="send-button w3layouts agileits">
        <input type="submit" value="免费注册">
    </div>
    </form>

    <div class="clear"></div>
  </div>
  <div class="clear"></div>
</div>
<div class="footer w3layouts agileits">
  <p>Copyright &copy; Dancer 2017</p>
</div>
</body>

</html>