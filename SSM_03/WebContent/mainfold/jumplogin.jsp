<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
</style>
<script>
setTimeout("jump()",3000);
function jump()
{
	window.location.href="${pageContext.request.contextPath}/denglu.jsp";
}
</script>
</head>
<body>
<a href="${pageContext.request.contextPath}/denglu.jsp">登陆</a>
<p>还没登陆，3秒后自动跳转，请先登陆！</p>
</body>
</html>