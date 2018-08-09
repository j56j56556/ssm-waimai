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
.div2{width:max-width;height:80px;text-align:center;position:relative;background-color:white;}
	.div2-head{width:980px;color:#ddd;line-height:80px;display:inline-block;}
		.logo{width:163px;border:0;float:left;margin-top:16px;}
		.menu{font-size:24px;color:#333;float:left;margin-left:150px;}
		
.div3{width:max-width;text-align:center;margin-top:10px;}
	.div3-box{width:980px;min-height:500px;display:inline-block;}
		.div3-box>.left{width:190px;height:500px;float:left;background-color:white;}
			.left>div{width:100%;height:70px;line-height:70px;font-size:14px;color:#333;}
		.div3-box>.right{width:770px;min-height:500px;float:left;margin-left:16px;background-color:white;}
			.dd-head{width:100%;height:70px;line-height:70px;font-size:16px;border-bottom:1px solid #AAA;}
				.add{background-color:#FFD705;border-color:#FFD705;outline:none;color:#333;}
			.dd-box{width:100%;min-height:400px;list-style:none;padding-left:0px;margin:0px}
				.dd-box>li{width:100%;height:100px;}
					.buyman{width:150px;;height:100px;border:1px solid #999;float:left;}
						.buyman-name{font-size:16px;margin-top:40px;}
					.bussinessmenu{width:200px;height:100px;border:1px solid #999;float:left;}					
						.bussinessmenu1{float:left;}
						.bussinessmenu1>img{width:100px;height:99px;margin-left:50px;}
					.money{width:200px;height:100px;border:1px solid #999;float:left;line-height:100px;}
					.order-state{width:210px;height:100px;border:1px solid #999;float:left;line-height:100px;}
						.order-state>button{background-color:#FFD705;border-color:#FFD705;outline:none;color:#333;}

.div4{width:max-width;height:184px;background-color:white;background-image:url(${pageContext.request.contextPath}/img/bottom.jpg);background-position:center;margin-top:20px;}

.modal_background {position: fixed;top: 0;left: 0;bottom: 0;right: 0;width: 100%;height: 100%;background-color: black;opacity: 0.7;display: none;}
.modal {position: fixed;display: none;width: 550px;height: 300px;background-color:white ;margin: auto;opacity: 1;top: 0;left: 0;bottom: 0;right: 0;text-align: left;}
.modal_header>a:hover .modal_close {background-color: rgb(241, 55, 53);}
.key {display: inline-block;float: left;font-size: 14px;height: 20px;line-height: 20px;margin: 5px;color: #000;background-color: transparent;}
.value {height: 30px;width: 230px;margin: 5px;font-size: 16px;font-weight: 100;color: rgb(122, 122, 122);background-color: #DDD;border: 2px solid rgb(252, 213, 213);}
.value::-webkit-input-placeholder {font-size: 14px;}
.warn {width: 110px;height: 36px;margin: 5px;line-height: 30px;font-size: 12px;color: red;display: inline-block;}
.form_control {width: 80px;height: 30px;margin: 10px;border: 0px;color: "#999";	background-color: #FFD705;}
.form_control:hover {background-color:#FFF705;}		
#sure{text-align:center;}	
</style>
<script src="${pageContext.request.contextPath}/jquery-1.8.3.js"></script>
<script>
$(function() {
	$(".add").click(function() {
		$("#register_modal").fadeIn(400);
		$(".modal_background").show();
		$("#formframe").attr("action","${pageContext.request.contextPath}/zhuye/addfood");
		
	});
	$(".modal_background").click(function() {
		$("#register_modal").fadeOut(200);
		$("#login_modal").fadeOut(200);
		$(".modal_background").hide();
	});
})
function update0(fid)
{
	$("#register_modal").fadeIn(400);
	$(".modal_background").show();
	$("#foodid").val(fid);
	$("#formframe").attr("action","${pageContext.request.contextPath}/zhuye/updatefood");
}
function delete1(fid)
{
	$.ajax({
		asyc:true,
		type:"post",
		url:"${pageContext.request.contextPath}/zhuye/deletefood",
		data:"food.id="+fid,
		success:function(data)
		{
			window.location.href="${pageContext.request.contextPath}/zhuye/busmenushow"
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
}
function jumpupdate()
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
				菜单栏
					<div style="float:right;margin-top:22px;margin-right:50px;">
						<button class="add" id="add" >增加</button>
					</div>
				</div>	
				<div style="width:150px;height:30px;float:left;line-height:30px;">菜品信息</div>
				<div style="width:200px;height:30px;float:left;line-height:30px;">图片</div>
				<div style="width:200px;height:30px;float:left;line-height:30px;">单价</div>
				<div style="width:210px;height:30px;float:left;line-height:30px;">管理菜品</div>		
				<ul class="dd-box">
				<c:forEach items="${businessmenu}" var="f1"   >
					<li>
						<div class="buyman">
							<div class="buyman-name">
								${f1.getName() }
							</div>
						</div>
						<div class="bussinessmenu">
							<div class="bussinessmenu1">
								<img src="${pageContext.request.contextPath}${f1.getFdimg() }"/>
							</div>
						</div>
						<div class="money" >${f1.getPrice() }元</div>
						<div class="order-state">
							<button class="update" id="update" onclick="update0('${ f1.getId()}')">修改</button>
							<button class="delete" id="delete"  onclick="delete1('${ f1.getId()}')">删除</button>
						</div>
					</li>	
					</c:forEach>			
				</ul>
			</div>
		</div>
	</div>
	<div class="div4">
	</div>
<div class="modal_background"></div>

	<div class="modal" id="register_modal">
		<div class="modal_header" style="height: 35px; line-height: 35px;">
			<a href="" style="color: #adadad">
				<div class="modal_close" style="float: right; display: block; font-size: 20px; width: 35px; text-align: center;">×</div>
			</a>
		</div>
		<div class="modal_body"
			style="display: flex; justify-content: flex-end; align-content: center; margin: 5px 0;">
			<form action="" id="formframe" method="post">
				<div class=""
					style="display: inline-block; float: left; width: 100%; font-size: 25px; color: #7a7a7a; margin: 0 0 10px 5px;">
					修改菜单</div>
				<div>
					<table>
						<tr>
							<td><span class="key">菜品名：</span></td>
							<td><input id="foodname" class="value" type="text"
								name="food.name" 
								onchange=""></td>
							<td>
								<div class="warn" id="reg_warn_input"></div>
							</td>
						</tr>
						<tr>
							<td><span class="key">价格：</span></td>
							<td><input id="foodprice" class="value" type="text"
								name="food.price" ></td>
							<td>
								<div class="warn" id="reg_warn_input"></div>
							</td>
						</tr>
						<tr>
							<td><span class="key">img路径：</span></td>
							<td><input id="foodsrc" class="value" type="text"
								name="food.fdimg" ></td>
							<td>
								<div class="warn" id="reg_warn_input"></div>
							</td>
						</tr>
					</table>
					<input type="text" id="foodid" name="fid" value="" style="display:none;"/>
				</div>
				
				<div style="display: inline-block; text-align: center; margin-left: 70px;">
					<input style="" class="form_control" id="sure" type="submit" value = "确定" >
					<input style="" class="form_control" type="reset">
				</div>
			</form>

		</div>

	
</div>
	
</body>
</html>