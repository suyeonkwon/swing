<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <section id="hero" class="d-flex align-items-center">
    <div class="container">
      	<h1>Spread your wings! SWING</h1>
		<form action="" method="post">
			<input type="text" name="text">
			<input type="submit" value="검색">
		</form>
    </div>
  </section><!-- End Hero -->
  <main id="main">
    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">
      	<!-- 카테고리 메뉴 -->
        <div class="q_menu">
			<ul>
				<li>
					<a href="classlist.shop?cate=1">
						<div class="icon baking">
							<img alt src="${path}/assets/img/icon/Baking.png">
						</div>
						<mark>
							요리/베이킹
						</mark>
					</a>
				</li>
				<li>
					<a href="classlist.shop?cate=2">
						<div class="icon baking">
							<img alt src="${path}/assets/img/icon/Pet.png">
						</div>
						<mark>
							반려동물
						</mark>
					</a>
				</li>
				<li>
					<a href="classlist.shop?cate=3">
						<div class="icon baking">
							<img alt src="${path}/assets/img/icon/Camera.png">
						</div>
						<mark>
							사진
						</mark>
					</a>
				</li>
				<li>
					<a href="classlist.shop?cate=4">
						<div class="icon baking">
							<img alt src="${path}/assets/img/icon/Handmade.png">
						</div>
						<mark>
							핸드메이드
						</mark>
					</a>
				</li>
				<li>
					<a href="classlist.shop?cate=5">
						<div class="icon baking">
							<img alt src="${path}/assets/img/icon/Wine.png">
						</div>
						<mark>
							술
						</mark>
					</a>
				</li>
			</ul>
        </div>
      </div>
      <!-- 인기수업 -->
      <div class="container">
      <div id="talentLayout1">
      	<div class="swiper-area">
      		<h2>인기 수업</h2>
      		<div class="item_lst">
      			<ul class="swiper-wrapper">
      				<li class="swiper-slide" style="margin-right:50px;">
      					<a href="">
      						<div class="img" style="background-image:url('${path}/assets/img/hero-img.png');">	
      						</div>
      						<p class="t1">클래스 제목</p>
      						<div class="t2">
      							<span class="profile">
      								<img class="roundImg" src="">
      							</span>
      							<span class="name">이름</span>
      							<span class="d_day">01월01일</span>
      							<span>위치</span>
      						</div>
      					</a>
      					<div class="t3">
      						<span class="num">x명 참여</span>
      						<span class="score">4.5(54)</span>
      						<button class="btn_wish" type="button" onclick=""></button>
      					</div>
      				</li>
      				<li class="swiper-slide" style="margin:0 20px;">
      					<a href="">
      						<div class="img" style="background-image:url('${path}/assets/img/hero-img.png');">	
      						</div>
      						<p class="t1">클래스 제목</p>
      						<div class="t2">
      							<span class="profile">
      								<img class="roundImg" src="">
      							</span>
      							<span class="name">이름</span>
      							<span class="d_day">01월01일</span>
      							<span>위치</span>
      						</div>
      					</a>
      					<div class="t3">
      						<span class="num">x명 참여</span>
      						<span class="score">4.5(54)</span>
      						<button class="btn_wish" type="button" onclick=""></button>
      					</div>
      				</li>
      				<li class="swiper-slide" style="margin-left:50px; margin-right:0;">
      					<a href="">
      						<div class="img" style="background-image:url('${path}/assets/img/hero-img.png');">	
      						</div>
      						<p class="t1">클래스 제목</p>
      						<div class="t2">
      							<span class="profile">
      								<img class="roundImg" src="">
      							</span>
      							<span class="name">이름</span>
      							<span class="d_day">01월01일</span>
      							<span>위치</span>
      						</div>
      					</a>
      					<div class="t3">
      						<span class="num">x명 참여</span>
      						<span class="score">4.5(54)</span>
      						<button class="btn_wish" type="button" onclick=""></button>
      					</div>
      				</li>
      			</ul>
      		</div>
      	</div>
      </div>
      </div>
    </section><!-- End About Section -->
  </main>
</body>
</html>