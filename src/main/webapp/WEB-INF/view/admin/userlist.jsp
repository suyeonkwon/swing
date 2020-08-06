<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수업 신청 목록</title>
<link href="${path}/assets/css/tutor-style.css" rel="stylesheet">
<link href="${path}/assets/css/admin-style.css" rel="stylesheet">
<style type="text/css"></style>
</head>
<body>
<section id="team" class="team">
      <div class="container">
          <div style="text-align: right;">
          <a href="#info1"><h2>회원 목록</h2></a>
          <a href="#info1" class="select">전체(3)</a>&nbsp;|
          <a href="#info2">튜터(2)</a>&nbsp;|
          <a href="#info3">튜티(1)</a>
          <hr style="margin-top: 15px;">
          </div>
          <table class="table table-hover">
                      <thead>
                        <tr>
                          <th>no.</th>
                          <th>아이디</th>
                          <th>이름</th>
                          <th colspan="2">회원유형</th>
                          <th>이메일</th>
                          <th colspan="2">회원관리</th>
                          <th><input class="checkbox" type="checkbox"></th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>1</td>
                          <td>user1</td>
                          <td>김모모</td>
                          <td></td>
                          <td><label class="badge badge-warning">튜터</label><br><a href="classlist.shop" class="text-danger">수강목록보기</a></td>
                          <td>momo@naver.com</td>
                          <td><a href="#">수정</a></td>
                          <td><a href="#">탈퇴</a></td>
                          <td><input class="checkbox" type="checkbox"></td>
                        </tr>
                        <tr>
                          <td>2</td>
                          <td>user2</td>
                          <td>박썬칩</td>
                          <td><label class="badge badge-info">튜티</label><br><a href="classlist.shop" class="text-info">수강목록보기</a></td>
                          <td><label class="badge badge-warning">튜터</label><br><a href="classlist.shop" class="text-danger">수강목록보기</a></td>
                          <td>sun@naver.com</td>
                          <td><a href="#">수정</a></td>
                          <td><a href="#">탈퇴</a></td>
                          <td><input class="checkbox" type="checkbox"></td>
                        </tr>
                        <tr>
                          <td>3</td>
                          <td>user3</td>
                          <td>설모</td>
                          <td><label class="badge badge-info">튜티</label><br><a href="classlist.shop" class="text-info">수강목록보기</a></td>
                          <td><label class="badge badge-warning">튜터</label><br><a href="classlist.shop" class="text-danger">수강목록보기</a></td>
                          <td>kim31@naver.com</td>
                          <td><a href="#">수정</a></td>
                          <td><a href="#">탈퇴</a></td>
                          <td><input class="checkbox" type="checkbox"></td>
                        </tr>
                      </tbody>
                    </table>
     </div>
 </section>
            
</body>
</html>