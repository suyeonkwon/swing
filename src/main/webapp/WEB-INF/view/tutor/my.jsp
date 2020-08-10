<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>튜터의 내 수업</title>
<link href="${path}/assets/css/tutor-style.css" rel="stylesheet">
</head>
<body>
    <section id="team" class="team">
      <div class="container">
          <div style="text-align: right;">
          <a href="#"><h2>내 수업 목록</h2></a>
          <a href="#">등록진행중</a>&nbsp;|
          <a href="#">승인대기</a>&nbsp;|
          <a href="#" class="select">승인완료</a>&nbsp;|
          <a href="#">수업진행중</a>
          <hr>
          </div>
        <div class="row">
            <div class="member">
               <div class="picture">
               <img src="${path}/assets/img/portfolio/portfolio-1.jpg">
               </div>
               <div class="info">
                  <h4>강의이름</h4>
                  <h5>수강인원|위치</h5>
                  <h5>현재회차</h5>
                  <h5>수업종료일:2020-07-28</h5>
                  <br><br>
               </div>
               <p>튜터이름</p>
            </div>
            <div class="member">
               <div class="picture">
               <img src="${path}/assets/img/portfolio/portfolio-6.jpg">
               </div>
               <div class="info">
                  <h4>강의이름</h4>
                  <h5>수강인원|위치</h5>
                  <h5>현재회차</h5>
                  <h5>수업종료일:2020-07-28</h5>
                  <br><br>
               </div>
               <p>튜터이름</p>
            </div>
            <div class="member">
               <div class="picture">
               <img src="${path}/assets/img/portfolio/portfolio-7.jpg">
               </div>
               <div class="info">
                  <h4>강의이름</h4>
                  <h5>수강인원|위치</h5>
                  <h5>현재회차</h5>
                  <h5>수업종료일:2020-07-28</h5>
                  <br><br>
               </div>
               <p>튜터이름</p>
            </div>
        </div>
     </div>
    </section>
    
</body>
</html>