<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보조회페이지</title>
<link href="${path}/assets/css/user-style.css" rel="stylesheet">
</head>
<body>

<section id="about" class="about">
      <div class="container">

        <div class="row">
          <div class="col-xl-3 col-lg-6 justify-content-center video-box align-items-stretch">
            <a>이미지 변경</a>
          </div>

          <div class="col-xl-7 col-lg-6 icon-boxes flex-column align-items-stretch justify-content-center py-5 px-lg-5">
            <h4>내 프로필</h4>
            <form action="" method="post">
            <p>ID<input type="text" name="id" placeholder="아이디"></p>
            <p>별명<input type="text" name="pass" placeholder="별명"></p>
            <p>비밀번호<input type="text" name="pass" placeholder="비밀번호"></p>
            <p>비밀번호 확인<input type="text" name="pass" placeholder="비밀번호 확인"></p>
            <p>핸드폰 번호<input type="text" name="pass" placeholder="핸드폰 번호"></p>
            </form>
            <a href="update.shop" class="bnt">수정 하기</a>
            <a href="delete.shop" class="bnt">회원 탈퇴</a>
            <div class="icon-box">
              <div class="icon"><i class="bx bx-fingerprint"></i></div>
              <h4 class="title"><a href="">Lorem Ipsum</a></h4>
              <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
            </div>

            <div class="icon-box">
              <div class="icon"><i class="bx bx-gift"></i></div>
              <h4 class="title"><a href="">Nemo Enim</a></h4>
              <p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</p>
            </div>

            <div class="icon-box">
              <div class="icon"><i class="bx bx-atom"></i></div>
              <h4 class="title"><a href="">Dine Pad</a></h4>
              <p class="description">Explicabo est voluptatum asperiores consequatur magnam. Et veritatis odit. Sunt aut deserunt minus aut eligendi omnis</p>
            </div>
          </div>
        </div>

      </div>
    </section>
</body>
</html>