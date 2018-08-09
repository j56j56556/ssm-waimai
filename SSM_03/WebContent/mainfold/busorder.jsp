<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

		.div3-box>.right{width:770px;min-height:500px;float:left;margin-left:16px;background-color:white;}
			.dd-head{width:100%;height:70px;line-height:70px;font-size:16px;border-bottom:1px solid #AAA;}
			.dd-box{width:100%;min-height:400px;list-style:none;padding-left:0px;margin:0px}
				.dd-box>li{width:100%;height:200px;}
					.buyman{width:150px;;height:200px;border:1px solid #999;float:left;}
						.buyman-name{font-size:16px;margin-top:90px;}
					.bussinessmenu{width:370px;height:200px;border:1px solid #999;float:left;}
						.bussinessmenu1{float:left;margin-top:20px;font-size:15px;}
						.bussinessmenu1>p{margin-left:30px;}
					.money{width:80px;height:200px;border:1px solid #999;float:left;line-height:200px;}
					.order-state{width:160px;height:200px;border:1px solid #999;float:left;line-height:200px;}
						.sureorder{background-color:#FFD705;border-color:#FFD705;outline:none;color:#333;}
						.sendride{background-color:#999;border-color:#999;outline:none;color:#333;}
.div4{width:max-width;height:184px;background-color:white;background-image:url(${pageContext.request.contextPath}/img/bottom.jpg);background-position:center;margin-top:20px;}
		
</style>
<script src="${pageContext.request.contextPath}/jquery-1.8.3.js"></script>	
<script>

function sureorder(uid,cla,state)
{
var s1=document.getElementById("sureorderu"+uid+"c"+cla);
var s2=document.getElementById("sendrideu"+uid+"c"+cla);
	s1.innerHTML="已接单";
	s1.disabled=true;
	s1.style.backgroundColor="#999";
	s1.style.borderColor="#999";
	s2.disabled=false;	
	s2.style.backgroundColor="#FFD705";
	s2.style.borderColor="#FFD705";
	$.ajax({
		asyc:true,
		type:"post",
		url:"${pageContext.request.contextPath}/zhuye/operateorder",
		data:"uid="+uid+"&&cla="+cla+"&&state="+state,
		success:function(data)
		{
			document.write(data);
		}
			
		});
}


function sendride(uid,cla,state)
{
	var s1=document.getElementById("sendrideu"+uid+"c"+cla);
	s1.innerHTML="已配送";
	s1.disabled=true;
	s1.style.backgroundColor="#999";
	s1.style.borderColor="#999";
	$.ajax({
		asyc:true,
		type:"post",
		url:"${pageContext.request.contextPath}/zhuye/operateorder",
		data:"uid="+uid+"&&cla="+cla+"&&state="+state,
		success:function(data)
		{
			document.write(data);
		}
			
		});
}
function jumpdd()
{
	window.location.href="${pageContext.request.contextPath}/zhuye/busorder";
}
function jumpmessage()
{
	window.location.href="${pageContext.request.contextPath}/zhuye/busmessage";
}function jumpupdate()
{
	window.location.href="${pageContext.request.contextPath}/zhuye/busmenushow";
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
				<div class="dd-head">
				订单
				</div>	
				<div style="width:150px;height:30px;float:left;line-height:30px;">买家信息</div>
				<div style="width:370px;height:30px;float:left;line-height:30px;">菜单信息</div>
				<div style="width:80px;height:30px;float:left;line-height:30px;">总金额</div>
				<div style="width:160px;height:30px;float:left;line-height:30px;">接单与否</div>
					
				<ul class="dd-box">
				
				<c:forEach items="${busobject}" var="os1"   >

					<li>
						<div class="buyman">
							<div class="buyman-name">
							${os1.getOrder().get(0).getUsername()}
							</div>
						</div>
						<div class="bussinessmenu">
							<div class="bussinessmenu1">
								<c:forEach items="${os1.getOrder()}" var="o1"   >
									<p>${o1.getFoodname()}-----${o1.getNumber()}X${o1.getTotal_cost()/o1.getNumber()}</p>									
								</c:forEach>
							</div>
						</div>
						<div class="money">${os1.getAllitemcost()}</div>
						<div class="order-state">
							<c:if test="${os1.getOrder().get(0).getState()>=3}">
								<button class="sureorder" id="sureorderu${os1.getOrder().get(0).getCustomer_id()}c${os1.getCishu()}"disabled=true 
								 style="background-color:#999;border-color:#999;outline:none;color:#333;">已接单</button>
								<button class="sendride" id="sendrideu${os1.getOrder().get(0).getCustomer_id()}c${os1.getCishu()}" disabled=true 
								 style="background-color:#999;border-color:#999;outline:none;color:#333;">已配送</button>
							</c:if>
							<c:if test="${os1.getOrder().get(0).getState()==2}">
								<button class="sureorder" id="sureorderu${os1.getOrder().get(0).getCustomer_id()}c${os1.getCishu()}"
								disabled=true style="background-color:#999;border-color:#999;outline:none;color:#333;">已接单</button>
								<button class="sendride" id="sendrideu${os1.getOrder().get(0).getCustomer_id()}c${os1.getCishu()}"  
								onclick="sendride('${os1.getOrder().get(0).getCustomer_id()}','${os1.getCishu()}','3')" style="background-color:#FFD705;border-color:#FFD705;outline:none;color:#333;">配送骑手</button>
							</c:if>
							<c:if test="${os1.getOrder().get(0).getState()==1}">
								<button class="sureorder" 
								id="sureorderu${os1.getOrder().get(0).getCustomer_id()}c${os1.getCishu()}" onclick="sureorder('${os1.getOrder().get(0).getCustomer_id()}','${os1.getCishu()}','2')">确认接单</button>
								<button class="sendride"
								 id="sendrideu${os1.getOrder().get(0).getCustomer_id()}c${os1.getCishu()}"  disabled=true onclick="sendride('${os1.getOrder().get(0).getCustomer_id()}','${os1.getCishu()}','3')">配送骑手</button>
							</c:if>
						</div> 
					</li>
		
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