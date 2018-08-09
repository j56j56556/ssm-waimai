<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.homework.foshan.object.Business" %>
<%!Business b1;%>

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
		.menu{float:left;margin-left:60px;}
			.menu>a{font-size:16px;}
				.menu>a>span{margin-left:40px;color:#333;}
				.menu>a>span:hover{color:#ffa735;}
		.search{width:300px;height:40px;border:1px solid #e5e5e5;margin-top:20px;float:right;}
		.search>input{display: block;width: 234px;height: 14px;padding: 7px 0;
					  font-size: 12px;color: #CCCCCC;border:none;margin: 12px 0 0px 10px;float:left;outline:none;}
			.dosearch>span{border-left:1px solid #E5E5E5;float:right;}
.div3{width:max-width;text-align:center;min-height:500px;margin-top:12px;}
	.div3-head{width:980px;height:101px;display:inline-block;text-align:center;background-color:white;}
		.div3-menu{width:940px;height:35px;margin-top:35px;display:inline-block;}
		.div3-menu>img{margin-top:8px;float:left;}
			.business-kind{float:left;line-height:35px;margin-left:8px;font-size:14px;}
			.business-kind1{width:800px;float:left;margin-left:50px;font-size:14px;}
				.business-kind1>a>span{line-height:35px;float:left;margin-left:19px;color:#898989;}
				.business-kind1>a>.div3-now{color:#ffa735;margin-left:0px;}
				.business-kind1>a>span:hover{color:#ffa735;}	
	.div3-body{margin-top:20px;min-height: 300px;width:980px;display:inline-block;background-color:white;}
		.business-box{padding-top:10px;padding-left:4px;position: relative;min-height: 300px;list-style:none;}		
			.business-all{width:240px;height:270px;float:left;}		
				.business-all>img{width:208px;height:156px;margin-top:20px;}
				.business-content{text-align:left;;}
					.business-name{margin-top:10px;margin-left:25px;}
						.business-name1{font-size:16px;color:#313131;}
					.business-star{margin-top:10px;margin-bottom:10px;margin-left:25px;}
					.business-content>span{margin-left:8px;}
					.business-content>.span1{margin-left:25px;}
			.line{width:940px;border-top:1px solid #dadada;float:left;}
			.loadingbox{width:940px;border-top:1px solid #dadada;float:left;height:41px;}
				.loadingbox>div{margin:15px;font-size:14px;color:#707070;}
.div4{width:max-width;height:184px;background-color:white;background-image:url(${pageContext.request.contextPath}/img/bottom.jpg);background-position:center;}
</style>
<script src="${pageContext.request.contextPath}/jquery-1.8.3.js"></script>
<script>
var line=1;

	$(function(){	
	$(window).scroll( function() {
		
		if($(window).scrollTop()>32)
			{
			$(".div3").css({"margin-top":"92px"})
			$(".div2").css("position","fixed");
			$(".div2").css("top","0px");
			$(".div2").css("width","100%");
			}
		else
			{
			$(".div3").css({"margin-top":"12px"})
			$(".div2").css("position","relative");
			}
		} );
});
	function jump(i)
	{
		window.location.href="${pageContext.request.contextPath}/zhuye/foodshow?businessID="+i;
	}
	function load()
	{
		$.ajax({
			asyc:true,
			type:"post",
			url:"${pageContext.request.contextPath}/zhuye/fenshow",
			data:"line="+line,
			success:function(data)
			{
				$("#business-box").html($("#business-box").html()+data);
				line++;
				console.log(line);
			}
				
			});
	}
</script>
</head>
<body>
<div class="container">

	<div class="div1">
		<div class="div1-head"> 
			<span class="icon1"><img src="${pageContext.request.contextPath}/img/div1-head-1.jpg" /></span>
			<span class="dizhi1">三水区</span>
			<span class="dizhi1">佛山大学</span>
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
				<a class="" href="${pageContext.request.contextPath}/zhuye/userorder">
				购物车
				</a>
			</span>
			<span class="login">
				${userName}
			</span>
		</div>
	</div>
	<div class="div2">
		<div class="div2-head">
			<img class="logo" src="${pageContext.request.contextPath}/img/logo.png" ><a href=""></a></img>
			<div class="menu">
				<a href=""><span>首页</span></a>
				<a href="${pageContext.request.contextPath}/zhuye/userorder"><span>我的订单</span></a>
				<a href=""><span>入驻加盟</span></a>
				<a href=""><span>社会责任</span></a>
			</div>
			<div class="search">
				<input type="text" placeholder="搜索商家、美食" />
				<a class="dosearch" href="">
				<span><img src="${pageContext.request.contextPath}/img/search.jpg" /></span>
				</a>
			</div>
		</div>
	</div>
	
	<div class="div3">
		<div class="div3-head">
			<div class="div3-menu">
					<img src="/SSM/div3-icon.jpg"><span class="business-kind">商家分类</span>
					<span class="business-kind1">
							<a href=""><span class="div3-now">全部</span></a>
							<a href=""><span>美食</span></a>
							<a href=""><span>正餐优选</span></a>
							<a href=""><span>超市</span></a>
							<a href=""><span>精选小吃</span></a>
							<a href=""><span>鲜果购</span></a>
							<a href=""><span>下午茶</span></a>
					</span>
			</div>
		</div>
		<div class="div3-body">
			<ul class="business-box" id="business-box">
				
			<li class="line">
			</li>
			</ul>
			<div class="loadingbox">
			<div onclick="load()">
				点击查看更多商家
			</div>
			</div>
			<script>
			load();
			</script>
		</div>
		
		
		</div>
		<div class="div4">
			
		</div>
	</div>	
</div>
</body >
</html>