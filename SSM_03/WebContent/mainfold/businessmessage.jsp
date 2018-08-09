<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
body{margin:0px;font:12px/1.125 Microsoft Yahei,Arial,Helvetica,sans-serif}
a{text-decoration:none;}
.container{margin:0px;min-width:980px;background-color:rgb(245,245,245)}
.div1{width:max-width;height:32px;background-color:#333;text-align:center;}
	.div1-head{width:980px;color:#ddd;line-height:32px;display:inline-block;}
			.icon1{float:left; margin-top:8px;}
			.dizhi1{float:left;margin-left:6px;}
			.dizhi2{float:left;width:92px;}
				.dizhi2-1{color:#FFD161;text-decoration:none;}
			.help{float:right;height:32px;margin-left:20px;}
				.help>img{vertical-align:-5px;	}
			.login{float:right;}
				.login>a{color:#ddd;}
				.login>span{margin:0 5px;}
.div2{width:max-width;height:80px;text-align:center;position:relative;z-index:99;background-color:white;}
	.div2-head{width:980px;color:#ddd;line-height:80px;display:inline-block;}
		.logo{width:163px;border:0;float:left;margin-top:16px;}
		.menu{font-size:24px;color:#333;float:left;margin-left:150px;}		
.div3{width:max-width;text-align:center;margin-top:10px;}
	.div3-box{width:980px;min-height:500px;display:inline-block;}
		.div3-box>.left{width:190px;height:500px;float:left;background-color:white;}
			.left>div{width:100%;height:70px;line-height:70px;font-size:14px;color:#333;}
				.message{margin-top:40px;margin-left:40px;color:#333;}
				.td1{float:right;}
		.div3-box>.right{width:770px;min-height:500px;float:left;margin-left:16px;background-color:white;}
			
.div4{width:max-width;height:184px;background-color:white;background-image:url(bottom.jpg);background-position:center;margin-top:20px;}
			
</style>
<script>
function jumpdd()
{
	window.location.href="${pageContext.request.contextPath}/zhuye/busorder";
}
function jumpmessage()
{
	window.location.href="${pageContext.request.contextPath}/zhuye/busmessage";
}
function jumpupdate()
{
	window.location.href="${pageContext.request.contextPath}/zhuye/busmenushow";
}
</script>
<script src="${pageContext.request.contextPath}/jquery-1.8.3.js"></script>
</head>
<body>
<div class="container">
	<div class="div1">
		<div class="div1-head"> 
			<span class="icon1"><img src="${pageContext.request.contextPath}/img/div1-head-1.jpg" /></span>
			<span class="dizhi1">越秀区</span>
			<span class="dizhi1">仲恺农业工程学院海珠校区</span>
			<span class="dizhi1">|</span>
			<span class="dizhi2"><a href="" class="dizhi2-1"><span>切换地址</span></a></span>
			<span class="help">
				<img src="${pageContext.request.contextPath}/img/div1-head-4.jpg" ></img>
				<a class="">
				联系我们					
				</a>
			</span>
			<span class="help">
				<img src="${pageContext.request.contextPath}/img/div1-head-3.jpg" />
				<a class="">
				美团网
				</a>
			</span>
			<span class="help">
				<img src="${pageContext.request.contextPath}/img/div1-head-2.jpg" />
				<a class="">
				手机版
				</a>
			</span>
			<span class="login">
				${busName}
			</span>
		</div>
	</div>
	<div class="div2">
		<div class="div2-head">
			<img class="logo" src="${pageContext.request.contextPath}/img/logo.png" ><a href=""></a></img>
			<div class="menu">
				商家后台管理系统
			</div>
			
		</div>
	</div>
		
	<div class="div3">
		<div class="div3-box">
			<div class="left">
				<div class="business-message" onclick="jumpmessage()">
					店铺信息
				</div>
				<div class="ddmanager" onclick="jumpdd()">
					订单管理
				</div>
				<div class="business-manager" onclick="jumpupdate()">
					店面管理
				</div>
			</div>
			<div class="right">
				<table class="message">
					<tr><td class="td1">商家店铺名字：</td><td>${busmessage.getBname() }</td></tr>
					<tr><td><br></td></tr>
					<tr><td class="td1">手机号码：</td><td>${busmessage.getPhone() }</td></tr>
					<tr><td><br></td></tr>
					<tr><td class="td1">商家地址：</td><td>${busmessage.getAddress() }</td></tr>
					</table>
			</div>
		</div>
	</div>	
<div class="div4">
</div>
	
</div>
		
</body>
</html>