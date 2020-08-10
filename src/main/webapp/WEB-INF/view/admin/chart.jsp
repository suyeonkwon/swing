<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수익 조회</title>
<link href="${path}/assets/css/admin-style.css" rel="stylesheet">
<link href="${path}/assets/css/tutor-style.css" rel="stylesheet">
<style type="text/css">
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
</style>
</head>
<body>
<section id="team" class="team">
      <div class="container">
          <div style="text-align: right;">
	          <a href="#info1"><h2 style="text-align: left;">수익 조회</h2></a>
	          <hr style="margin-top: 30px; margin-bottom: 30px;">
          </div>
          <div class="row">
			<div class="col-lg-3 col-md-3 col-sm-6">
			<div class="achievement__item">
			<img src="${path}/assets/img/icon/won.png" alt="" class="img-fluid1">
			<h2 class="achieve-counter">50,000원</h2>
			<p>이번달 결제 금액</p>
			</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6">
			<div class="achievement__item">
			<img src="${path}/assets/img/icon/won.png" alt="" class="img-fluid1">
			<h2 class="achieve-counter">20,000원</h2>
			<p>지난달 결제 금액</p>
			</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6">
			<div class="achievement__item">
			<img src="${path}/assets/img/icon/Money.png" alt="" class="img-fluid1">
			<h2 class="achieve-counter">70,000원</h2>
			<p>누적 금액</p>
			</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6">
			<div class="achievement__item">
			<img src="${path}/assets/img/icon/rev3.png" alt="" class="img-fluid1">
			<h2 class="achieve-counter">20.84%</h2>
			<p>전월대비 상승률</p>
			</div>
			</div>
		  </div>
      	  <div class="row" style="height: 400px;">
              <div class="col-lg-6 grid-margin stretch-card">
                <div class="card" style="height: 100%">
                  <div class="card-body"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                    <h4 class="card-title">Bar chart</h4>
                    <canvas id="lineChart" style="height: 204px; display: block; width: 408px;" width="408" height="204" class="chartjs-render-monitor"></canvas>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 grid-margin stretch-card">
                <div class="card"  style="height: 100%">
                  <div class="card-body"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                     <div style="width: 100%">
	                     <label class="badge badge-info">튜티 랭킹</label>
	                     <a href="#" style="float: right; margin-right: 10px; font-size: 12px;">전체보기</a>
                     </div>
                     <table class="table table-hover">
                      <tbody>
                        <tr>
                          <td>1</td>
                          <td>user1</td>
                          <td>김모모</td>
                          <td>20,000원</td>
                          <td>5회</td>
                        </tr>
                        <tr>
                          <td>2</td>
                          <td>user2</td>
                          <td>박썬칩</td>
                          <td>10,000원</td>
                          <td>7회</td>
                        </tr>
                        <tr>
                          <td>3</td>
                          <td>user3</td>
                          <td>설모</td>
                          <td>5,000원</td>
                          <td>2회</td>
                        </tr>
                      </tbody>
                    </table>
                    <div style="width: 100%">
	                    <label class="badge badge-warning">튜티 랭킹</label>
	                    <a href="#" style="float: right; margin-right: 10px; font-size: 12px;">전체보기</a>
                    </div>
                     <table class="table table-hover">
                      <tbody>
                        <tr>
                          <td>1</td>
                          <td>user1</td>
                          <td>김모모</td>
                          <td>20,000원</td>
                          <td>5회</td>
                        </tr>
                        <tr>
                          <td>2</td>
                          <td>user2</td>
                          <td>박썬칩</td>
                          <td>10,000원</td>
                          <td>7회</td>
                        </tr>
                        <tr>
                          <td>3</td>
                          <td>user3</td>
                          <td>설모</td>
                          <td>5,000원</td>
                          <td>2회</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
         </div>

</section>
</body>
</html>