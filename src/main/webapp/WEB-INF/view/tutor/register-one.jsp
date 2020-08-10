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
				<h1>원데이클래스 등록</h1>
			</div>
			<div class="class_title">
				클래스 제목
			</div>
			<div class="apply">
				<div class="profile_box">
					<div class="profile" style="background-image:url('')"></div>
					<p class="triangle-border top gray" style="margin-top:50px">
						곧 수업이 등록됩니다!<br>
						<span>장소,날짜,시간</span>
						을 선책해주세요
					</p>
				</div>
				<div class="sh_box class_price">
					<div class="head">
						수업의 장소와 날짜 및 시간을 설정해주세요
					</div>
					<div class="regions">
						<div class="region" id="region">
							<div class="option">
								<div class="top">
									<div class="text">
										수업 : 1차수 1회차
									</div>
								</div>
							</div>
							<div class="option">
								<div class="top">
									<div class="text">
										장소: <input type="text">
									</div>
								</div>
							</div>
							<div class="option">
								<div class="top">
									<div class="text">
										날짜: <input type="date">
									</div>
								</div>
							</div>
							<div class="option">
								<div class="top">
									<div class="text">
										시간: <input type="time">~<input type="time">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="sh_box class_price" style="border-top: 0; margin-top: 10px;">
					<div style="width:80%; float: right;"><img class="op" src="${path}/assets/img/icon/add3.png" style="width: 32px; height: 32px;"onclick="add()"></div>
				</div>
			</div>
			<div id="nextButton" class="next button" onclick="location.href='apply.shop'">등록</div>
		</div>
	</div>
</section>
</body>
</html>