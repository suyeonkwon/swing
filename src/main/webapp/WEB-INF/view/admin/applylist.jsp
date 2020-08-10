<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수업 신청 목록</title>
<link href="${path}/assets/css/tutor-style.css" rel="stylesheet">
<link href="${path}/assets/css/admin-style.css" rel="stylesheet">
<style type="text/css">
@import url("https://fonts.googleapis.com/css?family=Arvo:700|Open+Sans");
html {
  overflow-x: hidden;
}

body {
  background: #fff;
  font-size: 14px;
  font-weight: 400;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-font-smoothing: subpixel-antialiased;
  color: #abacae;
  line-height: 25px;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
  overflow-x: hidden;
}
</style>
</head>
<body>
<section id="team" class="team">
      <div class="container">
          <div style="text-align: right;">
          <a href="#info1"><h2>신청 목록</h2></a>
          <a href="#info1" class="select">전체(13)</a>&nbsp;|
          <a href="#info2">승인요청(11)</a>&nbsp;|
          <a href="#info4">승인완료(2)</a>
          <hr style="margin-top: 15px;">
          </div>
          <div class="row bg-gray">
         <div class="col-lg-6 col-md-12 col-xs-12" onclick="location.href ='../class/detail.shop'" style="cursor:pointer;">
            <div class="team-item wow fadeInRight animated" data-wow-delay="0.2s" style="visibility: visible;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
               <div class="team-img">
                  <img class="img-fluid" src="${path}/assets/img/team/team-3.jpg" alt="">
               </div>
               <div class="contetn">
                  <div class="info-text">
                     <h3><a href="#">핸드메이드 강좌</a></h3>
                     <p>이다빈(USER1)</p>
                     <p>[신청일시] 2020-08-05 18:15:01</p>
                     <p>[수업시작일] 2020-09-15</p>
                     <p>[위치] 서울시 금천구</p>
                  </div>
                  <div style="float: right;">
                     <button type="button"><label class="badge badge-success">허&nbsp;가</label></button>
                     <button type="button"><label class="badge badge-danger">반&nbsp;려</label></button>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-6 col-md-12 col-xs-12" onclick="location.href ='../class/detail.shop'" style="cursor:pointer;">
            <div class="team-item wow fadeInRight animated" data-wow-delay="0.4s" style="visibility: visible;-webkit-animation-delay: 0.4s; -moz-animation-delay: 0.4s; animation-delay: 0.4s;">
               <div class="team-img">
                  <img class="img-fluid" src="${path}/assets/img/portfolio/portfolio-5.jpg" alt="">
               </div>
               <div class="contetn">
                  <div class="info-text">
                     <h3><a href="#">핸드메이드 강좌</a></h3>
                     <p>이다빈(USER1)</p>
                     <p>[신청일시] 2020-08-05 18:15:01</p>
                     <p>[수업시작일] 2020-09-15</p>
                     <p>[위치] 서울시 금천구</p>
                  </div>
                  <div style="float: right;">
                     <button type="button"><label class="badge badge-success">허&nbsp;가</label></button>
                     <button type="button"><label class="badge badge-danger">반&nbsp;려</label></button>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-6 col-md-12 col-xs-12" onclick="location.href ='../class/detail.shop'" style="cursor:pointer;">
            <div class="team-item wow fadeInRight animated" data-wow-delay="0.6s" style="visibility: visible;-webkit-animation-delay: 0.6s; -moz-animation-delay: 0.6s; animation-delay: 0.6s;">
               <div class="team-img">
                  <img class="img-fluid" src="${path}/assets/img/portfolio/portfolio-7.jpg" alt="">
               </div>
               <div class="contetn">
                  <div class="info-text">
                  <h3><a href="#">핸드메이드 강좌</a></h3>
                  <p>이다빈(USER1)</p>
                  <p>[신청일시] 2020-08-05 18:15:01</p>
                  <p>[수업시작일] 2020-09-15</p>
                  <p>[위치] 서울시 금천구</p>
               </div>
               <div style="float: right;">
                  <button type="button"><label class="badge badge-success">허&nbsp;가</label></button>
                  <button type="button"><label class="badge badge-danger">반&nbsp;려</label></button>
               </div>
               </div>
            </div>
         </div>
         <div class="col-lg-6 col-md-12 col-xs-12" onclick="location.href ='../class/detail.shop'" style="cursor:pointer;">
            <div class="team-item wow fadeInRight animated" data-wow-delay="0.8s" style="visibility: visible;-webkit-animation-delay: 0.8s; -moz-animation-delay: 0.8s; animation-delay: 0.8s;">
               <div class="team-img">
                  <img class="img-fluid" src="${path}/assets/img/portfolio/portfolio-1.jpg" alt="">
               </div>
               <div class="contetn">
                  <div class="info-text">
                     <h3><a href="#">핸드메이드 강좌</a></h3>
                     <p>이다빈(USER1)</p>
                     <p>[신청일시] 2020-08-05 18:15:01</p>
                     <p>[수업시작일] 2020-09-15</p>
                     <p>[위치] 서울시 금천구</p>
                  </div>
                  <div style="float: right;">
                     <button type="button"><label class="badge badge-success">허&nbsp;가</label></button>
                     <button type="button"><label class="badge badge-danger">반&nbsp;려</label></button>
                  </div>
               </div>
            </div>
         
         </div>
         <div class="col-lg-6 col-md-12 col-xs-12" onclick="location.href ='../class/detail.shop'" style="cursor:pointer;">
            <div class="team-item wow fadeInRight animated" data-wow-delay="0.8s" style="visibility: visible;-webkit-animation-delay: 0.8s; -moz-animation-delay: 0.8s; animation-delay: 0.8s;">
               <div class="team-img">
                  <img class="img-fluid" src="${path}/assets/img/portfolio/portfolio-2.jpg" alt="">
               </div>
            <div class="contetn">
               <div class="info-text">
                  <h3><a href="#">핸드메이드 강좌</a></h3>
                  <p>이다빈(USER1)</p>
                  <p>[신청일시] 2020-08-05 18:15:01</p>
                  <p>[수업시작일] 2020-09-15</p>
                  <p>[위치] 서울시 금천구</p>
               </div>
            <div style="float: right;">
               <button type="button"><label class="badge badge-success">허&nbsp;가</label></button>
               <button type="button"><label class="badge badge-danger">반&nbsp;려</label></button>
            </div>
            </div>
            </div>
         </div>
         <div class="col-lg-6 col-md-12 col-xs-12" onclick="location.href ='../class/detail.shop'" style="cursor:pointer;">
            <div class="team-item wow fadeInRight animated" data-wow-delay="0.8s" style="visibility: visible;-webkit-animation-delay: 0.8s; -moz-animation-delay: 0.8s; animation-delay: 0.8s;">
               <div class="team-img">
                  <img class="img-fluid" src="${path}/assets/img/portfolio/portfolio-4.jpg" alt="">
               </div>
            <div class="contetn">
               <div class="info-text">
                  <h3><a href="#">핸드메이드 강좌</a></h3>
                  <p>이다빈(USER1)</p>
                  <p>[신청일시] 2020-08-05 18:15:01</p>
                  <p>[수업시작일] 2020-09-15</p>
                  <p>[위치] 서울시 금천구</p>
               </div>
            <div style="float: right;">
                <button type="button"><label class="badge badge-success">허&nbsp;가</label></button>
               <button type="button"><label class="badge badge-danger">반&nbsp;려</label></button>
               </div>
            </div>
            </div>
         </div>
      </div>
   </div>
</section>
</body>
</html>