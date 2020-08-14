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
$(function(){
	$(".star").on('click',function(){
		var idx = $(this).index();
		$(".star").removeClass("on");
		for(var i=0; i<=idx; i++){
			$(".star").eq(i).addClass("on");
		}
		var point = (idx+1)*0.5;
		$("#calc_point").html(point);
	});
  
	$("#classbody").on("click", function(){  
		
		$("#infotable").toggle();
	});
  
//  function addParam(classid){
//	  $.ajax("result",{
//		  "classid" : classid
//	  })
// }


//		$('#classbody > input').click(function(){
//			$.ajax("${path}/tutor/result.shop?state=${param.state}",{
//				success: function(data){
//					
//				}
//			})
//		});
})
</script>
</head>
<body>
<section id="team" class="team">
      <div class="container">
          <div style="text-align: right;">
          <a href="result.shop"><h2>내 수업 목록</h2></a>
          <c:choose>
          	<c:when test="${param.state == 5}">
          		<a href="result.shop">전체보기</a>&nbsp;|         		
         		<a href="result.shop?state=5" class="select">수업진행중</a>&nbsp;|
          		<a href="result.shop?state=6">수업완료</a>&nbsp;
          	</c:when>
          	<c:when test="${param.state == 6}">
          		<a href="result.shop">전체보기</a>&nbsp;|
         		<a href="result.shop?state=5" >수업진행중</a>&nbsp;|
          		<a href="result.shop?state=6" class="select">수업완료</a>&nbsp;
          	</c:when>
          	<c:otherwise>
          		<a href="result.shop" class="select">전체보기</a>&nbsp;|
         		<a href="result.shop?state=5">수업진행중</a>&nbsp;|
          		<a href="result.shop?state=6">수업완료</a>&nbsp;
          	</c:otherwise>
          </c:choose>
          <hr style="margin-top: 15px;">
          </div>
          
         <div class="row bg-gray">
         <c:if test="${classcount > 0}">
         <c:forEach items="${classlist}" var="cl" varStatus="stat">
         <div class="col-lg-12 col-md-12 col-xs-12">            
            <div id="classbody" class="team-item wow fadeInRight animated" data-wow-delay="0.2s" 
            	style="visibility: visible;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s; cursor:pointer;">
               
               <input type="hidden" name="classid" value="${cl.classid}">
               
               <div class="team-img">
                  <img class="img-fluid" src="${path}/assets/img/team/team-3.jpg" alt="">
               </div>
               <div class="contetn">
                  <div class="info-text">
                     <h3><a href="#">${cl.subject}</a></h3>
                     <p>${cl.nickname}(${cl.userid})</p>
                     <p>[수업시작일] <fmt:formatDate value="${cl.date}" pattern="yyyy-MM-dd" /></p>
                     <p>[위치] ${cl.location1} ${cl.location2}</p>
                  </div>                  
                  <div class="detail">
                  	<button onclick="location.href='../class/detail.shop'">상세보기</button>&nbsp;&nbsp;
                  </div>
               </div>
            </div>            
            <div id="infotable" style="display:none">
            	<table class="table table-hover">
            	<tr><th>차수-회차</th><th>장소</th><th>날짜</th><th>시작시간</th><th>끝나는시간</th><th>수업진행상태</th><th>신청튜티리스트</th></tr>            	
            	<c:forEach items="${classinfolist}" var="info" varStatus="stat2">     	
            	<fmt:formatDate value="${info.date}" pattern="yyyy-MM-dd" var="classdate" />
            	<fmt:formatDate value="${info.starttime}" pattern="HH:mm" var="starttime" />
            	<fmt:formatDate value="${info.endtime}" pattern="HH:mm" var="endtime" />
            	<tr><td>${info.classno}차수-${info.classseq}회차</td><td>${info.place}</td><td>${classdate}</td><td>${starttime}</td><td>${endtime}</td>
            		<td>
            		<c:if test="${classdate > today}">
            		<label class="badge badge-warning">진행예정</label></c:if>
            		<c:if test="${classdate == today}">
            		<label class="badge badge-warning">진행</label></c:if>
            		<c:if test="${classdate < today}">
            		<label class="badge badge-info">완료</label></c:if>
            		</td>
            		<td><button onclick="location.href='applylist.shop'">조회</button></td></tr>
            	</c:forEach>           
            	 	
            	</table>
            </div>
         
         </div>
         </c:forEach>   
<%--
         <div class="col-lg-12 col-md-12 col-xs-12" onclick="location.href ='../class/detail.shop'" style="cursor:pointer;">
            <div class="team-item wow fadeInRight animated" data-wow-delay="0.4s" style="visibility: visible;-webkit-animation-delay: 0.4s; -moz-animation-delay: 0.4s; animation-delay: 0.4s;">
               <div class="team-img">
                  <img class="img-fluid" src="${path}/assets/img/portfolio/portfolio-5.jpg" alt="">
               </div>
               <div class="content">
                  <div class="info-text">
                     <h3><a href="#">핸드메이드 강좌</a></h3>
                     <p>이다빈(USER1)</p>
                     <p>[수업시작일] 2020-09-15</p>
                     <p>[위치] 서울시 금천구</p>
                  </div>
                   <div class="detail">
                  	<button onclick="location.href='../class/detail.shop'">상세보기</button>&nbsp;&nbsp;
                  </div>
               </div>
            </div>
         </div>
 
         <div class="col-lg-12 col-md-12 col-xs-12" onclick="location.href ='../class/detail.shop'" style="cursor:pointer;">
            <div class="team-item wow fadeInRight animated" data-wow-delay="0.6s" style="visibility: visible;-webkit-animation-delay: 0.6s; -moz-animation-delay: 0.6s; animation-delay: 0.6s;">
               <div class="team-img">
                  <img class="img-fluid" src="${path}/assets/img/portfolio/portfolio-7.jpg" alt="">
               </div>
               <div class="content">
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
               <div class="content">
                  <div class="info-text">
                     <h3><a href="#">핸드메이드 강좌</a></h3>
                     <p>이다빈(USER1)</p>
                     <p>[수업시작일] 2020-09-15</p>
                     <p>[위치] 서울시 금천구</p>
                  </div>
               </div>
            </div>
         </div>
--%>
      </c:if>
      <c:if test="${classcount == 0}">
         	<div style="font-align:center;">
         	<p>승인완료된 수업이 없습니다.</p>
         	</div>
      </c:if>
      </div>
   </div>
</section>
</body>
</html>