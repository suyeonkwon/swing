<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/assets/css/apply.css" rel="stylesheet">
</head>
<body>
<section>
	<div class="container">
		<div class="tutor_cont">
			<div class="title_box">
				<h1>수업신청</h1>
				<ul>
					<li style="color:#49b5e7">01일정/장소</li>
					<span>></span>
					<li>02신청서 작성</li>
					<span>></span>
					<li>03결제</li>
				</ul>
			</div>
			<div class="class_title">
				클래스 제목
			</div>
			<div class="apply">
				<div class="profile_box">
					<div class="profile" style="background-image:url('')"></div>
					<p class="triangle-border top gray" style="margin-top:50px">
						수업에 오신걸 환영해요!<br>
						<span>장소, 수업일, 시간</span>
						을 선책해주세요
					</p>
				</div>
				<div class="sh_box class_price">
					<div class="head">
						원하시는 수업 일정을 선택해주세요
					</div>
					<div class="regions">
						<div class="region" id="region">
							<div class="option">
								<div class="top">
									<label onclick=""></label>
									<div class="text">
										01.01(월) 00:00~01:00
										<span>|</span>
										<font>강서</font>
									</div>
								</div>
							</div>
							<div class="option">
								<div class="top">
									<label onclick=""></label>
									<div class="text">
										01.01(월) 00:00~01:00
										<span>|</span>
										<font>강서</font>
									</div>
								</div>
							</div>
							<div class="option">
								<div class="top">
									<label onclick=""></label>
									<div class="text">
										01.01(월) 00:00~01:00
										<span>|</span>
										<font>강서</font>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="nextButton" class="next button" onclick="location.href='apply.shop'">신청서 작성하러가기</div>
		</div>
	</div>
</section>
</body>
</html>