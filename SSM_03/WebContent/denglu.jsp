<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="${pageContext.request.contextPath}/jquery-1.8.3.js"></script>
<style>
a{text-decoration:none;}
body{margin:0px;font:12px/1.125 Microsoft Yahei,Arial,Helvetica,sans-serif}
.container{margin:0px;min-width:980px;}
.div1{width:max-width;px;height:130px;text-align:center;}
	.head{width:980px;height:60px;margin-top:40px;display:inline-block;}
.div2{width:max-width;px;height:500px;text-align:center;}
	.body{width:890px;height:383px;display:inline-block;}
		.body>img{width:480px;height:380px;float:left;}
		.loginform{width:300px;float:right;height:200px;margin-top:100px;margin-right:50px;}
			#member{border:none;width:200px;font-size:14px;outline: none;margin-top:8px;float:left;}
			#password{border:none;width:200px;font-size:14px;outline: none;margin-top:7px;float:left;  }
			table{border-collapse:separate;border-spacing:15px;}
				td{width:270px;height:40px;border:1px solid #666;text-align:center;}
					
			.summitbtn{width:270px;height:40px;background-color:#FFD705;color:#6B450A;font-size:14px;text-align:center;}
		.jumpzhuce{float:left;margin-left:18px;margin-top:10px;}
			.jumpzhucebtn{color:#FA9700;}
			.jumpzhucebtn:hover{color:#FFD705;}
		
</style>
<script>
var lujing="${pageContext.request.contextPath}";
function load()
{
	$("#member").focusout
	(function(){
		var s1=$("#member").val();
		var s2="0";
		if(s1.length==0)
		{
		$("#messagebox").css("color","red");
		s1="用户名不能为空！！"
		$("#messagebox").text(s1);;
		s2="0";
		}
		else
		{
			s1=""
			s2="1";
			$("#messagebox").text(s1);;
			
		}
		console.log(s2);
		$("#member").attr("state",s2);
	});
}

function checklogin()
{
	if($("#member").attr("state")=="1"&&$("#password").attr("state")=="1")
		{
			if($("select[name='select'] option:selected").val()=="1")
				{
				userlogin();
				}
			else
				{
				buslogin();
				}
		}
	else
		{
		alert("格式不符合规则！");
		}
}

function userlogin()
{
$.ajax({
	asyc:true,
	type:"post",
	url:"${pageContext.request.contextPath}/zhuye/login",
	data:"member="+$("#member").val()+"&&password="+$("#password").val()+"&&kind=1",
	success:function(data)
	{
		if(data=="success")
			{
			window.location.href="${pageContext.request.contextPath}/zhuye/businessshow";
			}
		else if(data=="error1")
		{
		$("#messagebox").text("用户名不存在！");
		}
	else
		{
		$("#messagebox").text("密码错误！");
		}
	}
		
	});
}
function buslogin()
{	console.log("商家")
	$.ajax({
		asyc:true,
		type:"post",
		url:"${pageContext.request.contextPath}/zhuye/login",
		data:"member="+$("#member").val()+"&&password="+$("#password").val()+"&&kind=2",
		success:function(data)
		{
			if(data=="success")
				{
				window.location.href="${pageContext.request.contextPath}/zhuye/busorder";
				}
			else if(data=="error1")
				{
				$("#messagebox").text("用户名不存在！");
				}
			else
				{
				$("#messagebox").text("密码错误！");
				}
		}		
		});
}
</script>
</head>
<body>
<div class="container">
	<div class="div1">
		<div class="head"><img src="${pageContext.request.contextPath}/img/login-logo.jpg" style="float:left;" /></div>
	</div>
	<div class="div2">	
		<div class="body">
		<img src="${pageContext.request.contextPath}/img/login.png" ></img>
		<form class="loginform" action="${pageContext.request.contextPath}/zhuye/login" method="post">
		<table>
			<tr><td><img src="${pageContext.request.contextPath}/img/login-icon1.jpg" style="float:left;"/><input state="0" type="text" name="member" id="member" placeholder="用户名" value="${name}"/></td></tr>
			<tr ><td><img src="${pageContext.request.contextPath}/img/login-icon2.jpg" style="float:left;"/><input state="1" type="password" name="password" id="password" placeholder="密码"  /></td></tr>
			</table>
			<select style="float:left;margin-bottom:10px;margin-left:20px;"  name="select">
				<option value="1">用户登陆</option>
				<option value="2">商家登陆</option>
			</select>
			<p id="messagebox" style="color:red;"><c:if test="${mes!=null}" >${mes}</c:if></p>
			<input type="button" onclick="checklogin()"  class="summitbtn" value="登陆"  />
			<div class="jumpzhuce">没有账号？请${busName}<a href="${pageContext.request.contextPath}/mainfold/zhuce.jsp" class="jumpzhucebtn" >注册</a></div>
		</form>
		</div>
	</div>
</div>
<script type="text/javascript">
load();
</script>
</body>
</html>
