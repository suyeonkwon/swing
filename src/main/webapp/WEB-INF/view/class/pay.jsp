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
					<li>01일정/장소</li>
					<span>></span>
					<li>02신청서 작성</li>
					<span>></span>
					<li style="color:#49b5e7">03결제</li>
				</ul>
			</div>
			<div class="class_title">
				클래스 제목
			</div>
			<div class="apply">
				<div class="profile_box">
					<div class="profile" style="background-image:url('')"></div>
					<p class="triangle-border top gray" style="margin-top:50px">
						결제후 신청히 완료되니 서둘러주세요! 수업이 조기 마감될 수 있습니다.
					</p>
				</div>
				<div class="sh_box class_price">
					<div id="alltime">
						<div class="level3">
							<div class="left">전체 수업료</div>
							<div class="right2" style="text-align:left;">
								<font style="font-size:14px; font-weight:500;">40,000원</font>
							</div>
						</div>
						<div class="level bottom">
							<div class="left">결제금액</div>
							<div class="right2">
								<span id="payArea2">44,000</span>원
								<font color="#666" style="font-size:12px;">(수업가격+VAT 10%)</font>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="nextButton" class="next button" onclick="">결제</div>
		</div>
	</div>
</section>
</body>
</html>