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
					<li>02결제</li>
					<span>></span>
					<li>03완료</li>
				</ul>
			</div>
			<div class="class_title">
				클래스 제목
			</div>
			<div class="apply">
				<div class="profile_box">
					<div class="profile" style="background-image:url('')"></div>
					<p class="triangle-border top gray" style="margin-top:50px; text-align:center;">
						수업에 오신걸 환영해요!<br>
						<span>장소, 수업일, 시간</span>을<br>
						 선택해주세요
					</p>
				</div>
				<div class="sh_box class_price">
					<div class="head">
					<img src="${path}/assets/img/icon/calendar.png">
						원하시는 수업 일정을 선택해주세요
					</div>
					<div class="regions">
						<div class="region" id="region">
							<div class="option">
								<div class="top">
									<label><input type="hidden" class="no" value="1"></label>
									<div class="text">
										01.01(월) 00:00~01:00
										<span>|</span>
										<font>강서</font>
									</div>
								</div>
								<div class="region2">
									상세지역: 대륭테크노타운
								</div>
							</div>
							<div class="option">
								<div class="top">
									<label><input type="hidden" class="no" value="2"></label>
									<div class="text">
										01.01(월) 00:00~01:00
										<span>|</span>
										<font>강서</font>
									</div>
								</div>
								<div class="region2">
									상세지역: 대륭테크노타운
								</div>
							</div>
							<div class="option">
								<div class="top">
									<label><input type="hidden" class="no" value="3"></label>
									<div class="text">
										01.01(월) 00:00~01:00
										<span>|</span>
										<font>강서</font>
									</div>
								</div>
								<div class="region2">
									상세지역: 대륭테크노타운
								</div>
							</div>
						</div>
					</div>
				</div>
				<script type="text/javascript">
					$(function(){
						var classno=0;
						$(".region2").hide();
						$(".top").on("click","label",function(){
							$(".region2").hide();
							$(".top label").removeClass("on");
							$(this).addClass("on");
							var index = $("label").index(this);
							$(".region2:eq("+index+")").show();
							classno = $(".no:eq("+index+")").val();
							alert(index);
						})
						$("#nextButton").click(function(){
							location.href="apply.shop?classid=1&classno="+classno;
						})
					})
				</script>
			</div>
			<input type="hidden" id="classno" value="">
			<div id="nextButton" class="next button">신청서 작성하러가기</div>
		</div>
	</div>
</section>
</body>
</html>