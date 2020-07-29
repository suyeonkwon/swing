<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호아이디찾기</title>
<link href="${path}/assets/css/user-style.css" rel="stylesheet">
</head>
<body>
<section id="services" class="services section-bg">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-4 col-md-6" data-wow-delay="0.1s">
            <div class="icon-box">
              <div class="icon"><i class="las la-file-alt" style="color: #3fcdc7;"></i></div>
              <h4 class="title"><a href="">아이디 찾기</a></h4>
              <p class="description">가입된 이메일을 알려드려요.</p>
	          <form action="" method="post">
	              <input type="text" name="phone" placeholder="핸드폰 번호를 입력해주세요.">
	              <a href="#about" class="bnt">확인</a>
	          </form>
            </div>
          </div>
          <div class="col-lg-4 col-md-6" data-wow-delay="0.1s">
            <div class="icon-box">
              <div class="icon"><i class="las la-book" style="color:#41cf2e;"></i></div>
              <h4 class="title"><a href="">비밀번호 찾기</a></h4>
              <p class="description">이메일로 임시 비밀번호를 보내드려요.
              
	          <form action="" method="post">
	              <input type="text" name="phone" placeholder="가입된 이메일을 입력해주세요.">
	              <a href="#about" class="bnt">확인</a>
	          </form>
	          </p>
            </div>
          </div>
        </div>

      </div>
    </section>
</body>
</html>