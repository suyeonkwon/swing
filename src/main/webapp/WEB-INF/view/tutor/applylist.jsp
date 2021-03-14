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
          <h4>${c.subject}</h4>
        </div>
        <div class="row counters">
          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">${c.location1} - ${c.location2}</span>
            <p>지역</p>
          </div>

          <div class="col-lg-6 col-6 text-center">
            <span data-toggle="counter-up">
            	<fmt:formatDate value="${date.startdate}" pattern="yyyy-MM-dd" />
            	<c:if test="${c.type==2}">~<fmt:formatDate value="${date.enddate}" pattern="yyyy-MM-dd" /></c:if></span>
            <p>강의 기간</p>
          </div>

          <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">
            	<c:if test="${c.type==1}">원데이 수업</c:if>
				<c:if test="${c.type==2}">다회차 수업 (${c.totaltime}회) </c:if></span>
            <p>수업 형태</p>
          </div>
        </div>
      </div>
</section>
		<hr style="margin-top: 15px;">
		</div>
		<div class="row bg-gray">
			<i class="bx bx-chevron-right"></i> 총 신청 인원수: ${applynum}
	        <table class="table table-hover">
				<tr><th>No.</th><th>아이디</th><th>이름</th><th>이메일</th></tr>
				<c:set var="n" value="1"/>
				<c:forEach var="a" items="${applylist}" varStatus="status">
				<tr><td>${n}</td><td>${a.userid}</td><td>${a.name}</td><td>${a.email}</td></tr>
				<c:set var="n" value="${n+1}" />
				</c:forEach>
			</table>
		</div>
	</div>
</section>
</body>
</html>