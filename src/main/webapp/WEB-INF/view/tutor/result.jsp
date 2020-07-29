<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>튜터의 내 수업</title>
<link href="${path}/assets/css/tutor-style.css" rel="stylesheet">
<link href="${path}/assets/css/user-style.css" rel="stylesheet">
<style type="text/css">
#star_grade a{
        text-decoration: none;
        color: gray;
    }
#star_grade a.on{
        color: red;
    }
</style>
</head>
<body>
    <section id="team" class="team">
      <div class="container">
          <div style="text-align: right;">
          <a href="#"><h2>내 수업 결과</h2></a>
          <a href="#team">완료된 수업</a>&nbsp;|
          <a href="#services">수업 성과</a>
          <hr>
          </div>
        <div class="row">
            <div class="member">
               <div class="picture">
               <img src="${path}/assets/img/portfolio/portfolio-1.jpg">
               </div>
               <div class="info">
               	<h4>강의이름</h4>
               	<h5>수업회차|참여인원</h5>
               	<h5>수업시작일:2020-05-28</h5>
               	<h5>위치:서울</h5>
               	<h5>리뷰수:201|가격:50,000원</h5>
               	<br><br>
               </div>
            </div>
            <div class="member">
               <div class="picture">
               <img src="${path}/assets/img/portfolio/portfolio-4.jpg">
               </div>
               <div class="info">
               	<h4>강의이름</h4>
               	<h5>수업회차|참여인원</h5>
               	<h5>수업시작일:2020-05-28</h5>
               	<h5>위치:서울</h5>
               	<h5>리뷰수:201|가격:50,000원</h5>
               	<br><br>
               </div>
            </div>
            <div class="member">
               <div class="picture">
               <img src="${path}/assets/img/portfolio/portfolio-8.jpg">
               </div>
               <div class="info">
               	<h4>강의이름</h4>
               	<h5>수업회차|참여인원</h5>
               	<h5>수업시작일:2020-05-28</h5>
               	<h5>위치:서울</h5>
               	<h5>리뷰수:201|가격:50,000원</h5>
               	<br><br>
               </div>
            </div>
        </div>
     </div>

	<section id="services" class="services section-bg">
      <div class="container">
      <a id="grade" href="#"><h2>내 수업 성과</h2></a>
        <div class="row justify-content-center">
        
          <div class="col-lg-6 col-md-6" data-wow-delay="0.1s">
            <div class="icon-box">
            	그래프넣기
              <h4 class="title">수업 조회수 및 신청수</h4>
            </div>
          </div>
          <div class="col-lg-6 col-md-6" data-wow-delay="0.1s">
          <div class="icon-box">
            <p id="star_grade" class="on">
		        <a href="#">★</a>
		        <a href="#">★</a>
		        <a href="#">★</a>
		        <a href="#">★</a>
		        <a href="#">★</a>
			</p>
			<hr>
			<p id="star_grade" class="on">
		        <a href="#">★</a>
		        <a href="#">★</a>
		        <a href="#">★</a>
		        <a href="#">★</a>
		        <a href="#">★</a>
			</p>
			<p id="star_grade" class="on">
		        <a href="#">★</a>
		        <a href="#">★</a>
		        <a href="#">★</a>
		        <a href="#">★</a>
		        <a href="#">★</a>
			</p>
          </div>
        </div>

      </div>
    </section>
    
</section>

</body>
</html>