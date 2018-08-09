<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="jquery-1.8.3.js"></script>
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
function tijiao()
{
$.ajax({
	asyc:true,
	type:"post",
	url:"/SSM/zhuye/login",
	data:"member="+$("#member").val()+"&&password="+$("#password").val(),
	success:function(data)
	{
		if(data=="success")
			{
			window.location.href="${pageContext.request.contextPath}/zhuye/businessshow";
			}
		else
			{
			window.location.href="${pageContext.request.contextPath}/denglu.jsp";
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
			<tr><td><img src="${pageContext.request.contextPath}/img/login-icon1.jpg" style="float:left;"/><input type="text" name="member" id="member" placeholder="用户名"/></td></tr>
			<tr ><td><img src="${pageContext.request.contextPath}/img/login-icon2.jpg" style="float:left;"/><input type="password" name="password" id="password" placeholder="密码"/></td></tr>
			</table>
			<p id="messagebox" style="color:red;"></p>
			<input type="button" onclick="tijiao()"  class="summitbtn" value="登陆"  />
			<div class="jumpzhuce">没有账号？请<a href="${pageContext.request.contextPath}/mainfold/zhuce.jsp" class="jumpzhucebtn" >注册</a></div>
		</form>
		</div>
	</div>
</div>
</body>
</html>
