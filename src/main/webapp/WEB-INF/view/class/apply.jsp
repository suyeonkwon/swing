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
					<li style="color:#49b5e7">02신청서 작성</li>
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
					<form action="">
						<div class="level">
							<div class="left">레벨</div>
							<div class="right" id="boxlevel1">
								<div class="levelbox" id="levelbox1">
									입문자
								</div>
								<div class="levelbox" id="levelbox2">
									초/중급자
								</div>
								<div class="levelbox" id="levelbox3">
									상급자
								</div>
							</div>
						</div>
						<div class="level top">
							<div class="left">결제인원</div>
							<div class="right" style="margin-top:23px;">
								<div class="box_num">
									<button type="button" class="btn_length num_minus" id="totalCntMinus" disabled></button>
									<input type="text" maxlength="3" value="1" class="inp_length" name="totalCnt" id="totalCnt">명
									<button type="button" class="btn_length num_plus" id="totalCntPlus"></button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div id="nextButton" class="next button" onclick="location.href='pay.shop'">다음</div>
		</div>
	</div>
</section>
</body>
</html>