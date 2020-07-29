<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>튜티의 위시리스트</title>
<link href="${path}/assets/css/tutee.css" rel="stylesheet">
</head>
<body>
<section>
	<div class="container">
		<div class="title-box">
			<h1>위시리스트</h1>
		</div>
		<div class="my-class-list">
			<div class="class-box">
				<div class="image" style="background-image:url('${path}/assets/img/hero-img.png')"></div>
				<div class="information-box">
					<h3>클래스 제목</h3>
					<div class="start-box">
						<font class="class-type">원데이 수업</font>
						<span>|</span>
						<font class="class-type">참여인원</font>
					</div>
					<div class="start-date">
						<font>수업 시작일 : 2020-01-01</font>
						<span>|</span>
						<font>건대</font>
					</div>
					<div class="price">
						<font class="class-start">★★★★★</font>
						<font>\</font>
						10,000
					</div>
					<div class="btn-box">
						<div class="btn tp1">신청</div>
						<div class="btn tp1">삭제</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
</body>
</html>