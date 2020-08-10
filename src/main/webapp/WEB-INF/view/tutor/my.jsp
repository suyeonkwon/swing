<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>튜터의 내 수업</title>
<link href="${path}/assets/css/tutor-style.css" rel="stylesheet">
<style type="text/css">
.team-img label{
   position: absolute;
   top: 10px;
   right: 20px;
}
</style>
<script type="text/javascript">
   function page(src){
      //open(src,"",);
      location.href=src;
   }
</script>
</head>
<body>
    <section id="team" class="team">
      <div class="container">
          <div style="text-align: right;">
          <a href="my.shop"><h2>내 수업 목록</h2></a>
          <a href="my.shop" class="select">전체</a>&nbsp;|
          <a href="my.shop?state=1">등록진행중</a>&nbsp;|
          <a href="my.shop?state=2">승인대기</a>&nbsp;|
          <a href="my.shop?state=3">반려</a>&nbsp;|
          <a href="my.shop?state=4">승인완료</a>
          <hr>
          </div>
         <div class="row">
         <c:if test="${classcount > 0}">
         <c:forEach var="class" items="${classlist}">
         <div class="col-lg-4" onclick="page('../class/detail.shop?classid=${class.classid}')" style="cursor:pointer;">
               <div class="team-img">
                  <label class="badge badge-success">등록진행중</label>
                  <img class="img-fluid" src="${path}/assets/img/portfolio/portfolio-3.jpg" alt="">
               </div>
               <div class="contetn">
                  <div class="info-text">                
                     <h3><a href="../class/detail.shop?classid=${class.classid}">${class.subject}</a></h3>
                     <p>이다빈(USER1)</p>
                     <p>[신청일시] 2020-08-05 18:15:01</p>
                     <p>[수업시작일] 2020-09-15</p>
                     <p>[위치] 서울시 금천구</p>
                  </div>
               </div>
         </div>
         </c:forEach>	
         	
         <div class="col-lg-4" onclick="page('../class/detail.shop')" style="cursor:pointer;">
               <div class="team-img">
                    <label class="badge badge-danger">반&nbsp;려</label>
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
                      <button type="button">수정</button>
                     <button type="button">삭제</button>
                  </div>
               </div>
         </div>
         <div class="col-lg-4" onclick="page('../class/detail.shop')" style="cursor:pointer;">
               <div class="team-img">
                    <label class="badge badge-danger">반&nbsp;려</label>
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
                      <button type="button">수정</button>
                     <button type="button">삭제</button>
               </div>
               </div>
         </div>
         <div class="col-lg-4" onclick="page('../class/detail.shop')" style="cursor:pointer;">
               <div class="team-img">
                  <label class="badge badge-success">승인대기중</label>
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
               </div>
            </div>
         <div class="col-lg-4" onclick="page('../tutor/register-one.shop')" style="cursor:pointer;">
               <div class="team-img">
                    <label class="badge badge-success">승인완료</label>
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
            </div>
         </div>
         <div class="col-lg-4" onclick="page('../tutor/register-multi.shop')" style="cursor:pointer;">
            <div class="team-img">
                    <label class="badge badge-success">승인완료</label>
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
            </div>
         </div>
         </c:if>
         <c:if test="${classcount == 0}">
         	<div style="font-align:center;">
         	<p>등록된 수업이 없습니다.</p>
         	</div>
         </c:if>
         
      </div>
     </div>
    </section>
    
</body>
</html>