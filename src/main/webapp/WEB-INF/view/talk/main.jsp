<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!-- width:500 height:650 설정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실시간톡상세</title>
<link href="${path}/assets/css/talk.css" rel="stylesheet">
</head>
<body>
	<div id="pop_qna">
		<div class="top">
		로고<span>
			실시간으로 간편하게 문의하세요
			<span>
				<div class="close">x</div>
			</span>
		    </span>
		</div>
		<div class="q_tab">
			<ul>
				<li><a href="">수강생</a></li>
				<li><a href="">튜터</a></li>
			</ul>
		</div>
		<!-- 리스트 시작 -->
		<div class="qna_cont">
		</div>
	</div>
</body>
</html>