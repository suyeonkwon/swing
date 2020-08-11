<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수업 목록</title>
<link href="${path}/assets/css/tutor-style.css" rel="stylesheet">
<link href="${path}/assets/css/user-style.css" rel="stylesheet">
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

#star_grade a{
        text-decoration: none;
        color: gray;
    }
#star_grade a.on{
        color: red;
    }
.team-img label{
	position: absolute;
	top: 10px;
	right: 20px;
}
.review_point {
    display: inline-block;
}

div#calc_point {
    display: inline-block;
    font-size: 2em;
    padding-left: 0.4em;
    /* vertical-align: text-bottom; */
    position: relative;
    bottom: 0.6em;
    font-weight: 600;
}
.star{
  display:inline-block;
  width: 30px;height: 60px;
  cursor: pointer;
}
.star_left{
  background: url('/swing/assets/img/icon/star.png') no-repeat 0 0; 
  background-size: 60px; 
  margin-right: -3px;
}
.star_right{
  background: url('/swing/assets/img/icon/star.png') no-repeat -30px 0; 
  background-size: 60px; 
  margin-left: -3px;
}
.star.on{
  background-image: url('/swing/assets/img/icon/star_on.png');
}

.detail{
	float: right; margin-right: 20px;
}
</style>
<script type="text/javascript">
$(".star").on('click',function(){
    var idx = $(this).index();
    $(".star").removeClass("on");
      for(var i=0; i<=idx; i++){
         $(".star").eq(i).addClass("on");
    }
     var point = (idx+1)*0.5;
     $("#calc_point").html(point);
  });
</script>
</head>
<body>
<section id="team" class="team">
      <div class="container">
          <div style="text-align: right;">
           <a href="result.shop"><h2>내수업 목록</h2></a>
          <a href="#" class="select">수업진행중(13)</a>&nbsp;|
          <a href="#">수업완료(11)</a>&nbsp;
          <hr style="margin-top: 15px;">
          </div>
          <div class="row bg-gray">
         <div class="col-lg-12 col-md-12 col-xs-12">
            <div class="team-item wow fadeInRight animated" data-wow-delay="0.2s" style="visibility: visible;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;"
            onclick="location.href ='../class/detail.shop'" style="cursor:pointer;">
               <div class="team-img">
                  <img class="img-fluid" src="${path}/assets/img/team/team-3.jpg" alt="">
               </div>
               <div class="contetn">
                  <div class="info-text">
                     <h3><a href="#">핸드메이드 강좌</a></h3>
                     <p>이다빈(USER1)</p>
                     <p>[수업시작일] 2020-09-15</p>
                     <p>[위치] 서울시 금천구</p>
                  </div>
                  <div class="detail">
                  	<button>상세보기</button>&nbsp;&nbsp;|&nbsp;&nbsp;
                  	<button>튜티리스트조회</button>
                  </div>
               </div>
            </div>
            <div>
            	<table class="table table-hover">
            	<tr><th>차수-회차</th><th>장소</th><th>날짜</th><th>시작시간</th><th>끝나는시간</th><th>수업진행상태</th><th>신청튜티리스트</th></tr>
            	<tr><td>1차수-1회차</td><td>구디아카데미</td><td>2020-08-07</td><td>11:00</td><td>12:00</td><td><label class="badge badge-info">완료</label></td><td><button onclick="location.href='applylist.shop'">조회</button></td></tr>
            	<tr><td>1차수-2회차</td><td>구디아카데미</td><td>2020-08-07</td><td>11:00</td><td>12:00</td><td><label class="badge badge-info">완료</label></td><td><button onclick="location.href='applylist.shop'">조회</button></td></tr>
            	<tr><td>1차수-3회차</td><td>구디아카데미</td><td>2020-08-07</td><td>11:00</td><td>12:00</td><td><label class="badge badge-warning">진행</label></td><td><button onclick="location.href='applylist.shop'">조회</button></td></tr>
            	</table>
            </div>
         </div>
         <div class="col-lg-12 col-md-12 col-xs-12" onclick="location.href ='../class/detail.shop'" style="cursor:pointer;">
            <div class="team-item wow fadeInRight animated" data-wow-delay="0.4s" style="visibility: visible;-webkit-animation-delay: 0.4s; -moz-animation-delay: 0.4s; animation-delay: 0.4s;">
               <div class="team-img">
                  <img class="img-fluid" src="${path}/assets/img/portfolio/portfolio-5.jpg" alt="">
               </div>
               <div class="contetn">
                  <div class="info-text">
                     <h3><a href="#">핸드메이드 강좌</a></h3>
                     <p>이다빈(USER1)</p>
                     <p>[수업시작일] 2020-09-15</p>
                     <p>[위치] 서울시 금천구</p>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-12 col-md-12 col-xs-12" onclick="location.href ='../class/detail.shop'" style="cursor:pointer;">
            <div class="team-item wow fadeInRight animated" data-wow-delay="0.6s" style="visibility: visible;-webkit-animation-delay: 0.6s; -moz-animation-delay: 0.6s; animation-delay: 0.6s;">
               <div class="team-img">
                  <img class="img-fluid" src="${path}/assets/img/portfolio/portfolio-7.jpg" alt="">
               </div>
               <div class="contetn">
                  <div class="info-text">
                  <h3><a href="#">핸드메이드 강좌</a></h3>
                  <p>이다빈(USER1)</p>
                  <p>[수업시작일] 2020-09-15</p>
                  <p>[위치] 서울시 금천구</p>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-lg-12 col-md-12 col-xs-12" onclick="location.href ='../class/detail.shop'" style="cursor:pointer;">
            <div class="team-item wow fadeInRight animated" data-wow-delay="0.8s" style="visibility: visible;-webkit-animation-delay: 0.8s; -moz-animation-delay: 0.8s; animation-delay: 0.8s;">
               <div class="team-img">
                  <img class="img-fluid" src="${path}/assets/img/portfolio/portfolio-1.jpg" alt="">
               </div>
               <div class="contetn">
                  <div class="info-text">
                     <h3><a href="#">핸드메이드 강좌</a></h3>
                     <p>이다빈(USER1)</p>
                     <p>[수업시작일] 2020-09-15</p>
                     <p>[위치] 서울시 금천구</p>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
</body>
</html>