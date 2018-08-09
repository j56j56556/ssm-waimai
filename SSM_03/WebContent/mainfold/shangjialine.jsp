<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="com.homework.foshan.object.Business" %>
	<c:forEach items="${home}" var="b1"   >						
				<li >
					<div class="business-all">
						<img src="${pageContext.request.contextPath}${b1.getBsimg()}" onclick="jump(${b1.getBid()})"/>
						<div class="business-content">
							<div class="business-name">
								<span class="business-name1">${b1.getBname()}</span>
							</div>
							<div class="business-star">
								<span class="business-star1">4.5星</span><span class="business-star2">4.5分</span>
							</div>
							<span class="span1">起送：￥30</span>
							<span>配送：￥11</span>
							<span>50分钟</span>
						</div>						
					</div>
				</li>
				</c:forEach>