<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수업 성과</title>
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

.achievement__item {
    text-align: center;
    margin-bottom: 30px;
}
.fa {
    background-image: url('${path}/assets/img/hero-img.png');
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
.achievement__item span {
    font-size: 40px;
    color: #4c57d6;
}
.fa-user-o:before {
    background-image: url('${path}/assets/img/hero-img.png');
}
.achieve-counter {
    font-size: 32px;
    font-weight: bold;
    text-transform: uppercase;
    color: #0f394c;
}
.team .container h2 {
    text-align: center;
}

.img-fluid1 {
	width: 40px;
	height: 40px;
}


.team .container .achievement__item h2{
	margin-bottom:  0px;
}

.table td {
    border-top: 0px solid #ebedf2;
}
.icon-box {
    padding: 30px;
    position: relative;
    overflow: hidden;
    border-radius: 10px;
    margin: 10px 10px 40px 10px;
    background: #fff;
    box-shadow: 0 10px 29px 0 rgba(68, 88, 144, 0.1);
    transition: all 0.3s ease-in-out;
}
.title {
	font-size: 32px;
    font-weight: bold;
    text-transform: uppercase;
    color: #0f394c;
}
</style>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
<%--
google.charts.load('current', {'packages':['bar']});
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
  var data = google.visualization.arrayToDataTable(
		  [<c:forEach items="${map}" var="m">"${m.value}",</c:forEach>],
		  );
  var options = {
		  chart: {
			  title : '수업 별 신청 튜티 수(Top 5)'
		  }
  };
  var chart = new google.charts.Bar(document.getElementById('chartarea'));
  chart.draw(data, google.charts.Bar.convertOptions(options));
	  
}
--%>
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
<section id="services" class="services section-bg">
      <div class="container">
      <a id="grade" href="#"><h2>내 수업 성과</h2></a>
        <div class="row justify-content-center">
          <div class="col-lg-6 col-md-6" data-wow-delay="0.1s">
            <div class="icon-box" align="center">
            	<canvas id="chartarea"></canvas>
            	<br>
            	<h4 class="title">수업 별 신청 튜티 수</h4>
            </div>
          </div>
       
          <script type="text/javascript">
          	var config = {
          			type : 'bar',
          			data : {
          				datasets : [{
          					data : [<c:forEach items="${map}" var="m">"${m.value}",</c:forEach>],
          					backgroundColor : "darkblue"
          				}],
          				labels : [<c:forEach items="${map}" var="m">"${m.key}",</c:forEach>]
          			},
          			options : {
          				responsive :true,
          				legend : { display: false },
          				title : { display: false },
          				scales : {
          					yAxes : [{
          						ticks : {
          							beginAtZero : true
          						}
          					}]
          				}
          			}
          	};
          	window.onload = function(){
          		var ctx = document.getElementById("chartarea").getContext("2d");
          		new Chart(ctx, config);
          	}
          </script>
       
          <div class="col-lg-6 col-md-6" data-wow-delay="0.1s">
          <div class="icon-box">
            <div class="review_point">
            <span class="star star_left"></span>
             <span class="star star_right"></span>
         
             <span class="star star_left"></span>
             <span class="star star_right"></span>
         
             <span class="star star_left"></span>
             <span class="star star_right"></span>
         
            <span class="star star_left"></span>
            <span class="star star_right"></span>
         
            <span class="star star_left"></span>
            <span class="star star_right"></span>
         </div>
          </div>
        </div>
      </div>
      <div class="row justify-content-center">
      	<div class="col-lg-12 col-md-6" data-wow-delay="0.1s">
	      	<div class="icon-box">
		      	<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-6">
					<div class="achievement__item">
					<img src="${path}/assets/img/icon/won.png" alt="" class="img-fluid1">
					<h2 class="achieve-counter"><fmt:formatNumber value="${pricelist[1]}" pattern="#,###"/>원</h2>
					<p>이번달 결제 금액</p>
					</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6">
					<div class="achievement__item">
					<img src="${path}/assets/img/icon/won.png" alt="" class="img-fluid1">
					<h2 class="achieve-counter"><fmt:formatNumber value="${pricelist[0]}" pattern="#,###"/>원</h2>
					<p>지난달 결제 금액</p>
					</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6">
					<div class="achievement__item">
					<img src="${path}/assets/img/icon/Money.png" alt="" class="img-fluid1">
					<h2 class="achieve-counter"><fmt:formatNumber value="${pricelist[2]}" pattern="#,###"/>원</h2>
					<p>누적 금액</p>
					</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6">
					<div class="achievement__item">
					<img src="${path}/assets/img/icon/rev3.png" alt="" class="img-fluid1">
					<h2 class="achieve-counter"><fmt:formatNumber value="${(pricelist[1]-pricelist[0]) / pricelist[0] * 100}" pattern="#.##" />%</h2>
					<p>전월대비 상승률</p>
					</div>
					</div>
			  	</div>
	        </div>
      	</div>
      </div>
      </div>
</section>
</body>
</html>