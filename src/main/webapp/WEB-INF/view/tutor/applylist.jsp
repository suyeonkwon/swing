<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수업신청목록</title>
<link href="${path}/assets/css/tutor-style.css" rel="stylesheet">
<link href="${path}/assets/css/user-style.css" rel="stylesheet">
</head>
<body>
<section id="team" class="team">
	<div class="container">
		<div style="text-align: right;">
		<a href="#"><h2>신청 튜티 목록</h2></a>
		<section id="counts" class="counts">
      <div class="container">
        <div class="text-center title">
          <h4>♥나만의 [그립톡/키링/책갈피] 만들기♥ *레진공예*커플/우정 데이트 추천</h4>
        </div>
        <div class="row counters">
          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">서울</span>
            <p>지역</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">2020-07-29</span>
            <p>날짜</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">오후1시</span>
            <p>시간</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">그룹수업</span>
            <p>수업 형태</p>
          </div>
        </div>
      </div>
</section>
		<hr style="margin-top: 15px;">
		</div>
		<div class="row bg-gray">
			<i class="bx bx-chevron-right"></i> 총 신청 인원수: 2명
	        <table class="table table-hover">
				<tr><th>No.</th><th>이름</th><th>이메일</th><th>전화번호</th><th>레벨</th></tr>
				<tr><td>1</td><td>user1</td><td>user1@aaa.bbb</td><td>01012345678</td><td><label class="badge badge-info">상</label></td></tr>
				<tr><td>2</td><td>user2</td><td>user2@aaa.bbb</td><td>01056781234</td><td><label class="badge badge-warning">중</label></td></tr>
				<tr><td>3</td><td>user2</td><td>user2@aaa.bbb</td><td>01056781234</td><td><label class="badge badge-secondary">하</label></td></tr>				
			</table>
		</div>
	</div>
</section>
</body>
</html>