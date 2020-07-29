<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수업중인목록</title>
<link href="${path}/assets/css/tutee.css" rel="stylesheet">
</head>
<body>
<section>
	<div class="container">
		<div class="title-box">
			<h1>수강목록</h1>
			<ul>
				<li>수강중</li>
				<li>수강완료</li>
			</ul>
		</div>
		<div class="my-class-list">
			<div class="class-box">
				<div class="profile_box">
					<div class="profile" style="background-image: url('')"></div>
					<div class="name">홍길동 튜터</div>
				</div>
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
						<div class="btn tp1">리뷰작성</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
</body>
</html>