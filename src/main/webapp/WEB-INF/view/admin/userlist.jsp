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
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<link rel="stylesheet" href="style.css">
<style type="text/css">
.search{
    background: #fff;
    padding: 0px 10px;
    position: relative;
    border-radius: 4px;
    box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.1);
    text-align: left;
    width: 30%;
    margin-bottom: 15px;
}
.search form input[type="text"] {
    border: 0;
    padding: 4px 8px;
    width: calc(100% - 70px);
    outline: none;
}
 .search form input[type="submit"] {
    position: absolute;
    top: 0;
    right: -2px;
    bottom: 0;
    border: 0;
    background: none;
    font-size: 16px;
    padding: 0 20px;
    background: #49b5e7;
    color: #fff;
    transition: 0.3s;
    border-radius: 0 4px 4px 0;
    box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
}
</style>
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
          <div class="row">
             <div class="search">
             <form action="" method="post">
            <input type="text" name="text">
            <input type="submit" value="검색">
           </form>
           </div>
           <div style="width: calc(70% - 15px); text-align: right;">
              <a href="#info1" class="select">전체선택</a>&nbsp;|
                <a href="#info2">선택탈퇴</a>&nbsp;|
                <a href="#info3">선택메일전송</a>
           </div>
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