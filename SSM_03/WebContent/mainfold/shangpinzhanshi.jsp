<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.homework.foshan.object.*" %>
<%!Food f1;%>
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
.div2{width:max-width;height:80px;text-align:center;position:relative;background-color:white;}
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
	.head{width:985px;height:120px;display:inline-block;background-color:white;}
		.head-left{width:865px;float:left;height:120px;}
			.head-left>img{width:106px;height:80px;margin-left:10px;margin-top:20px;float:left;margin-left:24px;}
			.head-left>span{margin-left:10px;float:left;margin-left:24px;line-height:120px;font-size:20px;}
		.head-right{width:118px;height:120px;background-image:url(${pageContext.request.contextPath}/img/shoucang.jpg);background-position:center;float:right}
	.catalog-all{width:985px;display:inline-block;margin-top:10px;}
		.catalog{width:660px;min-height:320px;float:left;background-color:white;}
			.catalog-head{width:100%;border-bottom:1px solid #e5e5e5;line-height:49px;font-size:16px;text-align:left;margin-left:18px;color:#333;}				
			.catalog-box{list-style:none;min-height: 300px;padding-left:0px;margin-top:0px;}
				.catalog-box>li{width:218px;height:252px;border-bottom:1px dashed #e5e5e5;border-right:1px dashed #e5e5e5;float:left;}
					.catalog-img{width:170px;height:127px;margin-top:24px;}
					.catalog-box>li>div{margin-top:15px;margin-bottom:15px;font-size:14px;text-align:left;margin-left:25px;}
					.catalog-box>li>span{font-size:14px;float:right;margin-right:25px;}
						.catalog-box>li>span>img{margin-top:-5px;}
					.catalog-box>li>.span1{font-size:14px;float:left;margin-left:25px;}
					.catalog-box>li>.span2{float:left;display:none;}
.div4{width:max-width;height:184px;background-color:white;background-image:url(${pageContext.request.contextPath}/img/bottom.jpg);background-position:center;}
.shopping{width:306px;min-height:50px;position:fixed;z-index:2;background-color:yellow;bottom:0px;left:840px;}
	.bottom-shop>img{float:left;}
	.sureshop{width:110px;height:50px;float:left;line-height:50px;font-weight:bold;color:#333;font-size:16px;text-align:center;background-color:#ffd161;}
	.body-shop{}
		.good{line-height:60px;font-size:16px;background-color:white;border:1px solid #999;}
			.good-name{margin-left:10px;}
			.good-price{float:right;margin-right:40px;}
		.allprice{line-height:60px;font-size:16px;background-color:white;border:1px solid #999;text-align:center;}
</style>
<script src="${pageContext.request.contextPath}/jquery-1.8.3.js"></script>
<script>
var allmoney=0;
function addgood(s,bid,mid)
{	
	var s1=$("#num"+s).text();
	var i= parseInt(s1)+1;
	if(parseInt(s1)==0)
		{
			var par=document.getElementById("body-shop");
			var div=document.createElement("div");
			div.setAttribute("class","good");
			div.setAttribute("id","good"+s);
			var span=document.createElement("span");
			span.setAttribute("class","good-name");
			span.innerHTML=$("#catalog-name"+s).text()+"X";
			div.appendChild(span);

			var span=document.createElement("span");
			span.setAttribute("id","good-num"+s);
			span.innerHTML="1"
			div.appendChild(span);
			var span=document.createElement("span");
			span.setAttribute("class","good-price");
			span.setAttribute("id","good-price"+s);
			span.innerHTML=$("#span"+s).text();
			div.appendChild(span);
			par.appendChild(div);
			
			$("#deletespan"+s).css("display","block");
		}
	
	$("#num"+s).text(parseInt(s1)+1);
	$("#"+"good-num"+s).text(i);
	$("#"+"good-price"+s).text(parseInt($("#"+"span"+s).text())*parseInt(i)+".0元");
	var allm=parseInt($("#allmoney").text())+parseInt($("#span"+s).text());
	$("#allmoney").text(allm);
	$.ajax({
		asyc:true,
		type:"post",
		url:"${pageContext.request.contextPath}/zhuye/add",
		data:"food_id="+s+"&&bussiness_id="+bid+"&&food_cost="+mid,
		success:function(data)
		{
			console.log(data);
		}
			
		});
}
function deletegood(foodid)
{var num=$("#num"+foodid).text()
	if(parseInt(num)==1)
		{
		$("#deletespan"+foodid).css("display","none");
		$("#good"+foodid).remove();
		}
	$("#num"+foodid).text(parseInt(num)-1);
	$("#"+"good-num"+foodid).text(parseInt(num)-1);
	$("#"+"good-price"+foodid).text(parseInt($("#"+"span"+foodid).text())*parseInt(parseInt(num)-1)+".0元");
	var allm=parseInt($("#allmoney").text())-parseInt($("#span"+foodid).text());
	$("#allmoney").text(allm);
	$.ajax({
		asyc:true,
		type:"post",
		url:"${pageContext.request.contextPath}/zhuye/delete",
		data:"food_id="+foodid,
		success:function(data)
		{
			console.log(data);
		}
			
		});
}
function xiadan(bid)
{
	window.location.href="${pageContext.request.contextPath}/zhuye/usercommitorder?bid="+bid;
}
function beginload(foodid)
{	var num=$("#good-num"+foodid).text();
	var money=parseInt($("#good-price"+foodid).text());
	
	if(parseInt(num)!=0)
	{
		$("#num"+foodid).text(parseInt(num));
		$("#deletespan"+foodid).css("display","block");
		allmoney=money+allmoney;
		$("#allmoney").text(allmoney)

		
	}	
}
function countmoney()
{
	$("#allmoney").text(allmoney)
}
</script>
</head>
<body>
<div class="container">
	<div class="div1">
		<div class="div1-head"> 
			<span class="icon1"><img src="${pageContext.request.contextPath}/img/div1-head-1.jpg" /></span>
			<span class="dizhi1">海珠区</span>
			<span class="dizhi1">仲恺农业大学</span>
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
		<div class="head">
			<div class="head-left">
				<img src="${pageContext.request.contextPath}/${business.getBsimg()}"/>
				<span>${business.getBname()}</span>
			</div>
			<div class="head-right">
			</div>
		</div>
		<div class="catalog-all">
			<div class="catalog">
				<div class="catalog-head">菜单</div>
						<ul class="catalog-box">
						<c:forEach items="${businessInter}" var="f1"   >
							<li>
							<img src="${pageContext.request.contextPath}/${f1.getFdimg()}" class="catalog-img" />
							<div class="catalog-name">
								<span id="catalog-name${f1.getId()}">${f1.getName()}</span>
							</div>
							<div class="catalog-star">
								<span class="catalog-star1">1赞</span>
							</div>
							
							<span class="span1" id="span${f1.getId()}">${f1.getPrice()}元</span>
							<span class="span2" id="deletespan${f1.getId()}" onclick="deletegood('${f1.getId()}')">—</span>
							<span><img src="${pageContext.request.contextPath}/img/+.jpg" onclick="addgood('${f1.getId()}','${business.getBid()}','${f1.getPrice()}')"></span>	
							<span id="num${f1.getId()}">0</span>
							</li>

							
							</c:forEach>
						</ul>
			</div>
		</div>
	</div>
</div>
<div class="shopping">
	<div class="body-shop" id="body-shop">
	<c:forEach items="${buycar}" var="buy">
		<div class="good" id="good${buy.getGoods_id()}">
			<span class="good-name">${buy.getFoodname()}X</span>
			<span id="good-num${buy.getGoods_id()}">${buy.getNumber()}</span>
			<span class="good-price" id="good-price${buy.getGoods_id()}">${buy.getTotal_cost()}元</span>
			<script>        
	            beginload('${buy.getGoods_id()}');						
			</script>
		</div>
	</c:forEach>
	</div>
	<div class="allprice">总共<span id="allmoney">0</span>.0元</div>
	<div class="bottom-shop">
	<img src="${pageContext.request.contextPath}/img/shopping.jpg"/>
	<div class="sureshop" onclick="xiadan(${business.getBid()})">立即下单</div>
	</div>
	<script>countmoney();</script>
</div>	
<div class="div4">
	
</div>
</body>
</html>