<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/assets/css/apply.css" rel="stylesheet">
<link rel="stylesheet" href="style.css">
<style type="text/css">
.table .table-hover input[type="text"],input[type="date"] {
	width: 150px;
}
.table .table-hover input[type="time"]{
	width: 120px;
}
.table th{
	background-color: #e3e1e1;
	text-align: center;
}
.table td{
	border-bottom: 1px solid #e3e1e1;
}
.table{
font-size: 14px;
}
</style>
</head>
<body>
<section>
	<div class="container">
		<div class="tutor_cont">
			<div class="title_box">
				<h1>다회차 수업 등록</h1>
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
										수업: 1차수 1회차
									</div>
								</div>
							</div>
							<div class="option">
          						<table class="table table-hover">
									<tr><th>회차</th><th>장소</th><th>날짜</th><th>시작시간</th><th>끝나는시간</th></tr>
									<tr><td>1회차</td>
										<td><input type="text"></td>
										<td><input type="date"></td>
										<td><input type="time"></td>
										<td><input type="time"></td></tr>
									<tr><td>2회차</td>
										<td><input type="text"></td>
										<td><input type="date"></td>
										<td><input type="time"></td>
										<td><input type="time"></td></tr>
									<tr><td>3회차</td>
										<td><input type="text"></td>
										<td><input type="date"></td>
										<td><input type="time"></td>
										<td><input type="time"></td></tr>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="sh_box class_price" style="border-top: 0;">
					<div style="width:50%; float: right;"><img class="op" src="${path}/assets/img/icon/add3.png" style="width: 32px; height: 32px;"onclick="add()"></div>
				</div>
			</div>
			<div id="nextButton" class="next button" onclick="location.href='apply.shop'">등록</div>
		</div>
	</div>
</section>
</body>
</html>