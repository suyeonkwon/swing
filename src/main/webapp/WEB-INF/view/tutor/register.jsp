<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>튜터 수업 추가 페이지</title>
<link href="${path}/assets/css/tutor-style.css" rel="stylesheet">
</head>
<body>
<section id="team" class="team">
      <div class="container">
          <div style="text-align: right;">
          <a href="#"><h2>튜터 등록</h2></a>
          <a href="#" class="select">01기본정보</a>&nbsp;>
          <a href="#">02제목/이미지</a>&nbsp;>
          <a href="#">03가격</a>&nbsp;>
          <a href="#">04수업</a>
          <hr>
          </div>
     </div>
    </section>
    
    <section id="contact" class="contact">
      <div class="container">
        <div class="row mt-5">
          <div class="col-lg-4">
            <div class="info">
              <div class="address">
                <i class="icofont-google-map"></i>
                <h4>기본정보</h4>
                <p>프로필,별명,인증</p>
              </div>

              <div class="phone">
                <i class="icofont-phone"></i>
                <h4>수업등록</h4>
                <p>지역,카테고리,수업형태,<br>참여인원,제목,이미지</p>
              </div>
              <div class="phone">
                <i class="icofont-phone"></i>
                <h4>가격</h4>
                <p>가격/시간/횟수,총 가격</p>
              </div>
              <div class="phone">
                <i class="icofont-phone"></i>
                <h4>수업소개</h4>
                <p>튜터소개,수업소개</p>
              </div>

            </div>

          </div>

          <div class="col-lg-8 mt-5 mt-lg-0">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
            
              <div class="form-group">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject">
                <div class="validate"></div>
              </div>
              <div class="form-row">
                <div class="form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="ex)스윙대학교" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
                  <div class="validate"></div>
                </div>
                <div class="form-group">
                  <input type="email" class="form-control" name="email" id="email" placeholder="ex)스윙학과" data-rule="email" data-msg="Please enter a valid email">
                  <div class="validate"></div>
                </div>
                
              <div class="form-group">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="ex)토익900" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject">
                <div class="validate"></div>
              </div>
              
              <div class="text-center"><button type="submit">업로드</button></div>
              </div>
              <div class="form-group">
                <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                <div class="validate"></div>
              </div>
              <div class="mb-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
            </form>

          </div>

        </div>

      </div>
    </section>
</body>
</html>