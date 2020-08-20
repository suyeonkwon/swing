<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수업 장소 및 시간 지정</title>
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
	<form:form method="post" action="registerClassinfo.shop" enctype="multipart/form-data" name="classRegisterForm">
		<div class="tutor_cont">
			<div class="title_box">
				<h1>수업 등록
					<c:if test="${c.type==1}">(원데이)</c:if>
					<c:if test="${c.type==2}">(다회차)</c:if></h1>
			</div>
			<div class="class_title">
				${c.subject}
			</div>
			<div class="apply">
				<div class="profile_box">
					<div class="profile" style="background-image:url('${path}/assets/img/${tutorimg}')"></div>
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
										수업 : ${newclassno}차수
									</div>
								</div>
							</div>
							<input type="hidden" name="classid" value="${c.classid}">
							<input type="hidden" name="classno" value="${newclassno}">
							<c:if test="${c.type==1}">
							<div class="option">
								<div class="top">
									<div class="text">
										장소: <input type="text" name="place">
									</div>
								</div>
							</div>
							<div class="option">
								<div class="top">
									<div class="text">
										날짜:	<input type="date" name="date">
									</div>
								</div>
							</div>
							<div class="option">
								<div class="top">
									<div class="text">
										시간: <input type="time" name="starttime" /> 
										~ <input type="time" name="endtime" /> 
									</div>
								</div>
							</div>
							</c:if>
							
							
							<c:if test="${c.type==2}">
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
							
							</c:if>
						</div>
					</div>
				</div>
				<div class="sh_box class_price" style="border-top: 0; margin-top: 10px;">
					<div style="text-align:center;"><img class="op" src="${path}/assets/img/icon/add3.png" style="width: 32px; height: 32px;"onclick="add()"></div>
				</div>
			</div>
			<div id="registerButton" class="next button" onclick="location.href='registerClassinfo.shop'">등록</div>
		</div>
	</form:form>
	</div>
</section>
</body>
</html>