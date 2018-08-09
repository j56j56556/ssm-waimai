<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.homework.foshan.object.*" %>
<%!
int i=0;
%>
<%i=0;%>
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
.div3{width:max-width;text-align:center;margin-top:10px;}
	.div3-box{width:980px;min-height:500px;display:inline-block;}
		.div3-box>.left{width:190px;height:500px;float:left;background-color:white;}
			.left>div{width:100%;height:70px;line-height:70px;font-size:14px;color:#333;}
				.message{margin-top:40px;margin-left:40px;color:#333;}
				.td1{float:right;}
		.div3-box>.right{width:770px;min-height:500px;float:left;margin-left:16px;background-color:white;}
			.dd-head{width:100%;height:70px;line-height:70px;font-size:16px;border-bottom:1px solid #AAA;}
			.dd-box{width:100%;min-height:400px;list-style:none;padding-left:0px;margin:0px}
				.dd-box>li{width:100%;height:200px;}
					.bussinessman{width:150px;;height:200px;border:1px solid #999;float:left;}
						.bussinessman-name{font-size:16px;margin-top:90px;}
					.bussinessmenu{width:370px;height:200px;border:1px solid #999;float:left;}
						.bussinessmenu1{float:left;margin-top:20px;}
						.bussinessmenu1>p{margin-left:30px;font-size:15px;}
					.money{width:80px;height:200px;border:1px solid #999;float:left;line-height:200px;}
					.order-state{font-size:16px;;width:160px;height:200px;border:1px solid #999;float:left;line-height:200px;}
.div4{width:max-width;height:184px;background-color:white;background-image:url(${pageContext.request.contextPath}/img/bottom.jpg);background-position:center;margin-top:20px;}
			
</style>
<script src="jquery-1.8.3.js"></script>
<script>
function jumpmymessage()
{
	window.location.href="${pageContext.request.contextPath}/zhuye/usermessage";
}
function jumpmydd()
{
	window.location.href="${pageContext.request.contextPath}/zhuye/userorder";
}
function ping0(id,ing)
{	for(var i=0;i<id.length;i++)
	{
		ping1(id[i],ing);
	}
	
}
function ping1(id,id2)
{
$.ajax({
	asyc:true,
	type:"post",
	url:"/meituan/PingJia",
	data:"oid="+id+"&&text="+$("#pingjia").val(),
	success:function(data)
	{
		window.location.href="/meituan/Myorder";
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
				${userName}
			</span>
		</div>
	</div>
	<div class="div2">
		<div class="div2-head">
			<img class="logo" src="${pageContext.request.contextPath}/img/logo.png" ><a href=""></a></img>
			<div class="menu">
				<a href="${pageContext.request.contextPath}/zhuye/businessshow"><span>首页</span></a>
				<a href=""><span>我的订单</span></a>
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
		<div class="div3-box">
			<div class="left">
				<div class="mymessage" onclick="jumpmymessage()">
					我的信息
				</div>
				<div class="mydd" onclick="jumpmydd()">
					我的订单
				</div>
			</div>
			<div class="right">
				<div class="dd-head">
				订单
				</div>	
				<div style="width:150px;height:30px;float:left;line-height:30px;">商家</div>
				<div style="width:370px;height:30px;float:left;line-height:30px;">所点菜品</div>
				<div style="width:80px;height:30px;float:left;line-height:30px;">总金额</div>
				<div style="width:160px;height:30px;float:left;line-height:30px;">订单状态</div>		
				<ul class="dd-box">
			
					<c:forEach items="${userobject}" var="os1"   >
					<li>
						<div class="bussinessman">
							<div class="bussinessman-name">
								${os1.getOrder().get(0).getBusinessname()}
							</div>
						</div>
						<div class="bussinessmenu">
							<div class="bussinessmenu1">
								<c:forEach items="${os1.getOrder()}" var="o1"   >
									
									<p>${o1.getFoodname()}-------${o1.getNumber()}X${o1.getTotal_cost()/o1.getNumber()}元</p>									
								</c:forEach>
							</div>
						</div>
						<div class="money">${os1.getAllitemcost()}元</div>
						
						<div class="order-state">
						<c:if test="${os1.getOrder().get(0).getState()==0}">
							购物车，点击<a href="${pageContext.request.contextPath}/zhuye/usercommitorder?business.bname=${os1.getOrder().get(0).getBusinessname()}" >立即下单</a>
						</c:if>	
						<c:if test="${os1.getOrder().get(0).getState()==1}">
							商家未接单
						</c:if>
						<c:if test="${os1.getOrder().get(0).getState()==2}">
							商家已接单
						</c:if>
						<c:if test="${os1.getOrder().get(0).getState()==3}">
							配送已完成
						<input id="pingjia" type="text" style="margin-top:-80px;" rows="10" cols="10" placeholder="请输入评价如：太难吃了"/>
						<button style="margin-top:-40px;" onclick="ping0(${o1.getOid()},<%=i%>)">提交</button>
						</c:if>
						<c:if test="${os1.getOrder().get(0).getState()}>3}">
							配送已完成
							<p style="font-size:16px;color:red;margin-top:-150px;">评价：${o1.getAssess()}</p>
						
						</c:if>
						</div>
						
					</li>	
					<%i++; %>
					</c:forEach>
					
					
				</ul>
			</div>
		</div>
	</div>	
<div class="div4">
</div>
	
</div>
		
</body>
</html>