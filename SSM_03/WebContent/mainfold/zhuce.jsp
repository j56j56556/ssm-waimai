<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="${pageContext.request.contextPath}/jquery-1.8.3.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
body{margin:0,0;width:max-width;}
.div1{width:max-width;height:64px;border-bottom:2px solid #FFD705;text-align:center;}
	.head{height:42px;margin-top:10px;width:980px;display:inline-block;}
.div2{width:max-width;height:500px;text-align:center;}
	.body{height:500px;width:980px;display:inline-block;padding-top:20px;}
		form{width:600px;text-align:center;font-size:14px;height:400px;}
			table{border-collapse:separate;border-spacing:15px;}
				.td0{width:80px;text-align:right;color:#333;}
				.td1{width:270px;height:34px;border:1px solid #666;text-align:center;}
					.td1>input{border:none;width:260px;font-size:14px;outline: none;float:left;margin-left:4px;}
				.td2{width:200px;font-size:14px;color:red;text-align:left;}				
			.submitbtn{width:270px;height:40px;background-color:#FFD705;border-color:#FFD705;
					color:#6B450A;font-size:14px;margin-right:100px;
					margin-top:10px;}
</style>
<title>注册</title>
<script>
var lujing="${pageContext.request.contextPath}";
$(function(){			
	$("#user").focusout
	(function(){
		var s1=$("#user").val();
		var s2="0";
		if(s1.length==0)
		{
		$("#messagebox").css("color","red");
		s1="用户名不能为空！！"
		$("#messagebox").text(s1);;
		}
		else if(s1.length<4)
		{
			$("#messagebox").css("color","red");
			s1="用户名需大于等于4位！！"
			$("#messagebox").text(s1);
		}
		else
		$.ajax({
		type:"post",
		url:lujing+"/zhuye/checkmember",
		data:"member="+$("#user").val(),
		success:function(data)
		{	
			
			if(data=="1")
			{	
			$("#messagebox").css("color","green");
			s1="用户名可用";
			s2="1";
			} 
			else
			{
			$("#messagebox").css("color","red");
			s1="用户名重复了！！";
			}

			$("#messagebox").text(s1);
			$("#messagebox").attr("state",s2);
		}
			
		});});
	$("#password").focusout
	(function(){
		var s1=$("#password").val();
		var s2="0";
		if(s1.length>=4)
			{
			$("#messagebox1").css("color","green");
			$("#messagebox1").text("密码格式正确");
			s2="1";
			}
			else if(s1.length<4&&s1.length>=1)
			{
				$("#messagebox1").css("color","red");
				$("#messagebox1").text("密码长度需大于4位");
			}
			else
			{
			$("#messagebox1").css("color","red");
			$("#messagebox1").text("密码不能为空");
			}
		$("#messagebox1").attr("state",s2);
	});
	$("#repassword").focusout
	(function(){
		var s2="0";
		if($("#password").val()==$("#repassword").val())
			{
			$("#messagebox2").css("color","green");
			$("#messagebox2").text("密码一致");
			s2="1";
			}
		else
			{
			$("#messagebox2").css("color","red");
			$("#messagebox2").text("两次输入的密码不一致");
			}
		$("#messagebox2").attr("state",s2);
	});
});
function sure()
{
	if($("#messagebox").attr("state")=="1"&&$("#messagebox1").attr("state")=="1"&&$("#messagebox2").attr("state")=="1")
		{
		send();
		}
	else
		{
		alert("格式不符合规则！");
		}
}
	
function send()
{
	$.ajax({
		asyc:true,
		type:"post",
		url:"${pageContext.request.contextPath}/zhuye/register",
		data:"member="+$("#user").val()+"&&password="+$("#password").val(),
		success:function(data)
		{
			alert("注册成功！");
			window.location.href="${pageContext.request.contextPath}/denglu.jsp";
		}		
		});
}

</script>
</head>
<body>
<div class="div1" >
		<div class="head"><img src="${pageContext.request.contextPath}/img/zhuce-logo.jpg" style="float:left;" /></div>
</div>
<div class="div2">
	<div class="body">
		<form >
		<table>
		<tr>
		<td class="td0">用户名:</td>
		<td class="td1"><input type="text" name="member" id="user" placeholder="4-10位用户名"></td>
		<td class="td2" id="messagebox" state="0"></td>
		</tr>
		<tr>
		<td class="td0">密码：</td>
		<td class="td1"><input type="password" name="password" id="password" placeholder="建议混合使用字母数字"></td>
		<td class="td2" id="messagebox1" state="0"></td>
		</tr>
		<tr>
		<td class="td0">确认密码：</td>
		<td class="td1"><input type="password" name="repassword" id="repassword" placeholder="与原密码一样"></td>
		<td class="td2" id="messagebox2" state="0"></td>
		</tr>
		</table>
		<input type="button" value="登陆" onclick="sure()" style="display:inline-block;" class="submitbtn"/>
		</form>
	</div>
</div>
</body>
</html>