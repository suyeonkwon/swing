<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수업 세부 사항</title>
<link href="${path}/assets/css/classdetail.css" rel="stylesheet">
</head>
<body>
<section>
	<div class="container">
		<div class="class_wrap">
			<div class="class_price" id="class_price" style="position:relative; top:0px;; left:0px;">
				<div class="regions">
					<div class="title">
						원데이 클래스
					</div>
					<div class="region" id="region" style="height:130px;">
						<div class="option">
							<div class="top">
								<div class="timedetail">
									<div class="indate">01.01(월)</div>
									11:00~12:00
								</div>
								<span>|</span>
								<div class="region_name">사당</div>
							</div>
						</div>
						<div class="option">
							<div class="top">
								<div class="timedetail">
									<div class="indate">01.01(월)</div>
									11:00~12:00
								</div>
								<span>|</span>
								<div class="region_name">사당</div>
							</div>
						</div>
						<div class="option">
							<div class="top">
								<div class="timedetail">
									<div class="indate">01.01(월)</div>
									11:00~12:00
								</div>
								<span>|</span>
								<div class="region_name">사당</div>
							</div>
						</div>
				</div>
				<div class="more" id="more" onclick="">
					+ 다른 일정 더보기
				</div>
			</div>
			<!-- 여기까지 날짜,시간,장소 정보 -->
			<a onclick="" class="btn_talk">실시간 톡</a>
			<div class="btn_payment">
				<a href="check.shop">
					<span class="btntxt">수업 신청하기</span>
				</a>
			</div>
			<div class="price">
				<div class="hp1">
					<b>\10,000원</b>/시간
				</div>
				<div class="tp1">\10,000 / 총 1회 1시간</div>
			</div>
		</div>
		<!-- 상단 이미지 부분 -->
		<div class="class_img">
			<iframe width="840" height="540" scrolling="no" frameborder="0" src="${path}/assets/img/hero-img.png"></iframe>
		</div>
	</div>
	</div>
</section>
</body>
</html>