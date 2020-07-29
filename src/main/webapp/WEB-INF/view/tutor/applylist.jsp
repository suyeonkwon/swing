<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수업신청목록</title>
<link href="${path}/assets/css/tutor-style.css" rel="stylesheet">
<style type="text/css">
table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
    background-color: #fff;
    opacity: 0.7;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
</style>
</head>
<body>
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
        
        <i class="bx bx-chevron-right"></i> 총 신청 인원수: 2명
        <table>
			<tr><th>No.</th><th>이름</th><th>이메일</th><th>전화번호</th><th>레벨</th></tr>
			<tr><td>1</td><td>user1</td><td>user1@aaa.bbb</td><td>01012345678</td><td>상</td></tr>
			<tr><td>2</td><td>user2</td><td>user2@aaa.bbb</td><td>01056781234</td><td>중</td></tr>
			<tr><td>4</td><td></td><td></td><td></td><td></td></tr>
			<tr><td>5</td><td></td><td></td><td></td><td></td></tr>
			<tr><td>6</td><td></td><td></td><td></td><td></td></tr>
			<tr><td>7</td><td></td><td></td><td></td><td></td></tr>
			<tr><td>8</td><td></td><td></td><td></td><td></td></tr>
			<tr><td>9</td><td></td><td></td><td></td><td></td></tr>
			<tr><td>10</td><td></td><td></td><td></td><td></td></tr>
			
		</table>
      </div>

</section>


</body>
</html>