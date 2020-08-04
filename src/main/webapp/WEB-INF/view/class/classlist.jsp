<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수업목록</title>
</head>
<body>
<section id="category" class="align-items-center">
	<div id="container">
		<div class="cate_list">
			<ul>
				<li id="menu1">
					<a href="">
						<div id="cate1">요리베이킹</div>
					</a>
				</li>
				<li id="menu2">
					<a href="">
						<div id="cate2">반려동물</div>
					</a>
				</li>
				<li id="menu3">
					<a href="">
						<div id="cate3">사진</div>
					</a>
				</li>
				<li id="menu4">
					<a href="">
						<div id="cate4">핸드메이드</div>
					</a>
				</li>
				<li id="menu5">
					<a href="">
						<div id="cate5">술</div>
					</a>
				</li>
				<li id="menu6" onclick="filterView();" style="background-color:rgba(255,255,255); border-bottom:1px solid rgb(201,201,201);">
					<div id="filter">필터</div>
				</li>
			</ul>
		</div>
		<div class="catesub filter" style="display:block;">
			<div class="main">
				<div class="inbox">
					<div class="left">지역</div>
					<div class="right" id="regionSub">
						<select id="city">
							<option value="">지역</option>
							<option value="seoul">서울</option>
							<option value="gg">경기</option>
							<option value="icn">인천</option>
						</select>
					</div>
					<div class="right2" id="regionSub2">
						
					</div>
				</div>
				<script>
					$(function(){
						$('#city').change(function(){
							var area = $(this).val();
							var msg = "";
							if(area=='seoul'){
								msg = "<select id='area'>"+
									"<option value=''>서울ALL</option>"+
									"<option value='gn'>강남</option>"+
									"<option value='ge'>건대</option>"+
									"<option value='js'>잠실</option>"+
									"<option value='jl'>종료</option>"+
									"<option value='hd'>홍대</option>"+
									"</select>";
							}else if(area=='gg'){
								msg = "<select id='area'>"+
								"<option value=''>경기ALL</option>"+
								"<option value='bd'>분당</option>"+
								"<option value='bc'>부천</option>"+
								"<option value='sw'>수원</option>"+
								"<option value='as'>안산</option>"+
								"<option value='ay'>안양</option>"+
								"<option value='il'>일산</option>"+
								"</select>";
							}else if(area=='icn'){
								msg = "<select id='area'>"+
								"<option value='bp'>부평</option>"+
								"<option value='sd'>송도</option>"+
								"</select>"
							}
							$("#regionSub2").html(msg);
						})
					})
				</script>
				<div class="inbox">
					<div class="left">요일/시간</div>
					<div class="right">
						<div class="days">
							<ul id="days">
								<li>평일(월-금)</li>
								<li>주말(토-일)</li>
							</ul>
							<ul id="times">
								<li style="margin-left:15px;">오전(06:00~12:00)</li>
								<li>오후(12:00~18:00)</li>
								<li>저녁(18:00~24:00)</li>
							</ul>
						</div>
					</div>
				</div>
			
				<script>
					$(function(){
						var check=0;
						$("#days li").click(function(){
							if(check==0){
								$(this).addClass("on");
								check=1;
							}else{
								$(this).removeClass("on");
								check=0;
							}
						})
						$("#times li").click(function(){
							if(check==0){
								$(this).addClass("on");
								check=1;
							}else{
								$(this).removeClass("on");
								check=0;
							}
						})
					})
				</script>
				<div class="inbox">
					<div class="left">수업형태</div>
					<div class="right">
						<div class="days">
                        	<ul id="tTypes">
                            	<li>1:1수업</li>
                                <li>그룹</li>
                                <li>원데이클래스</li>
                           </ul>
                       </div>
                       <div class="filter_button" id="search">
                       			내게 맞는 수업 보기
                       </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="filter_head" style="margin-top:0px;">
			<div class="sorted">
				<ul id="sorted">
					<li>최신 등록순</li>
					<li>별점순</li>
				</ul>
			</div>
			<div class="num_class">
				10개의 수업
			</div>
		</div>
		<div class="class_box">
			<div class="class">
				<div class="class_list" style="margin-right:20px;">
					<a href="detail.shop">
						<div class="img" style="background-image:url('${path}/assets/img/hero-img.png')">
							<div class="d_day">10명 참여</div>
						</div>
						<div class="profile_box">
							<div class="profile" style="background-image:url('')"></div>
							<div class="name">튜터이름</div>
						</div>
						<div class="title">
							클래스 제목
						</div>
						<div class="price">
							\1,0000
						</div>
						<div class="info">
							<div class="info2">
								<div class="star">
									★★★★★
								</div>
								<div class="review" style="margin-right:15px;">
									(10)
								</div>
								<div class="location">
									건대
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="class_list" style="margin:0 10px;">
					<a href="">
						<div class="img" style="background-image:url('${path}/assets/img/hero-img.png')">
							<div class="d_day">10명 참여</div>
						</div>
						<div class="profile_box">
							<div class="profile" style="background-image:url('')"></div>
							<div class="name">튜터이름</div>
						</div>
						<div class="title">
							클래스 제목
						</div>
						<div class="price">
							\1,0000
						</div>
						<div class="info">
							<div class="info2">
								<div class="star">
									★★★★★
								</div>
								<div class="review" style="margin-right:15px;">
									(10)
								</div>
								<div class="location">
									건대
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="class_list" style="margin-right:0; margin-left:20px;">
					<a href="">
						<div class="img" style="background-image:url('${path}/assets/img/hero-img.png')">
							<div class="d_day">10명 참여</div>
						</div>
						<div class="profile_box">
							<div class="profile" style="background-image:url('')"></div>
							<div class="name">튜터이름</div>
						</div>
						<div class="title">
							클래스 제목
						</div>
						<div class="price">
							\1,0000
						</div>
						<div class="info">
							<div class="info2">
								<div class="star">
									★★★★★
								</div>
								<div class="review" style="margin-right:15px;">
									(10)
								</div>
								<div class="location">
									건대
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
</section>
</body>
</html>