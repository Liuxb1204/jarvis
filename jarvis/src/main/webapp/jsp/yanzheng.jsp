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

<title>我的几个问题</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css"/>
<link rel="SHORTCUT ICON"
	href="${pageContext.request.contextPath}/images/h.png" />
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}
body {
	overflow: hidden;
}

</style>

<script type="text/javascript">
var w,h,className;
function getSrceenWH(){
	w = $(window).width();
	h = $(window).height();
	$('#dialogBg').width(w).height(h);
}

window.onresize = function(){  
	getSrceenWH();
}  
$(window).resize();  

$(function(){
	getSrceenWH();
	
	//显示弹框
	$('.box a').click(function(){
		className = $(this).attr('class');
		document.getElementById("ku").style.display="none";
		document.getElementById("value").value="";  
		if(className=="rollIn"){
			 $("#wenti").text("我高三班主任的名字：")
			 document.getElementById("number").value="2";  
		}else if(className=="bounceInDown"){
			 $("#wenti").text("我在北京住的地方：")
			 document.getElementById("number").value="3";  
		}else if(className=="flipInX"){
			 $("#wenti").text("我喜欢人的名字：")
			 document.getElementById("number").value="4";  
		}else if(className=="bounceIn"){
			 $("#wenti").text("我的生日(****):")
			 document.getElementById("number").value="1";  
		}
		$('#dialogBg').fadeIn(300);
		$('#dialog').removeAttr('class').addClass('animated '+className+'').fadeIn();
	});
	
	//关闭弹窗
	$('.claseDialogBtn').click(function(){
		$('#dialogBg').fadeOut(300,function(){
			$('#dialog').addClass('bounceOutUp').fadeOut();
		});
	});
});

	function ok(){
		var a=document.getElementById("value").value;  
		var number = document.getElementById("number").value;
		$.ajax({
			type:"post",   
			url:"${pageContext.request.contextPath}/user/yanzheng.html",
			data:{"number":number,"value":a},  
			success:function(Name){	
				console.log(Name);
				if(Name=="1ok"){
					$('#dialogBg').fadeOut(300,function(){
						$('#dialog').addClass('bounceOutUp').fadeOut();
					});document.getElementById("de1").style.display="none";			
				}else if(Name=="2ok"){
					$('#dialogBg').fadeOut(300,function(){
						$('#dialog').addClass('bounceOutUp').fadeOut();
					});document.getElementById("de2").style.display="none";
				}else if(Name=="3ok"){
					$('#dialogBg').fadeOut(300,function(){
						$('#dialog').addClass('bounceOutUp').fadeOut();
					});document.getElementById("de3").style.display="none";
				}else if(Name=="4ok"){
					$('#dialogBg').fadeOut(300,function(){
						$('#dialog').addClass('bounceOutUp').fadeOut();
					});document.getElementById("de4").style.display="none";
				}else if(Name=="okk"){
					location.href="${pageContext.request.contextPath }/user/skip.html?pagename=love"; 
				}else{
					document.getElementById("xiao").style.display="none";
					document.getElementById("ku").style.display="";
				}
			},
		}); 
	}
	
	function shuaxin(){
		document.getElementById("xiao").style.display="";
		document.getElementById("ku").style.display="none";
	}
</script>
</head>
<body style="background-image:url(./images/girl.jpg);background-position:center; background-repeat:repeat-y">

	
	<div id="wrapper">

	<header><h2>请回答我的几个问题</h2></header>
	
	<div class="box">
		<div class="demo">
			<a href="javascript:;" class="bounceIn" id="de1">问题一</a>
			<a href="javascript:;" class="rollIn" id="de2">问题二</a>
			<a href="javascript:;" class="bounceInDown" id="de3">问题三</a>
			<a href="javascript:;" class="flipInX" id="de4">问题四</a>
		</div>
		
		<div id="dialogBg"></div>
		
		
		<div id="dialog" class="animated">
			<img class="dialogIco" width="50" height="50" src="images/ico.png" alt="" />
			<div class="dialogTop">
				<a href="javascript:;" class="claseDialogBtn">关闭</a>
			</div>
				<ul class="editInfos">
					<li><font color="#ff0000">* </font><span id="wenti">☺</span></li>
					<li><span id="xiao">&( ^___^ )&</span>   
							<span style="display: none" id="ku">::(>﹏<) :: </span>
					</li>
					<li><label>
					<input type="text" id="value" class="ipt" onfocus="shuaxin()" /><input type="hidden" value="1" id="number">
					</label></li>
					<li><input type="submit" onclick="ok()" value="确认提交" class="submitBtn"/></li>
				</ul>
		</div>
	
	</div>
	
</div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>

</html>