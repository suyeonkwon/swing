<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수업 장소 및 시간 지정</title>
<link href="${path}/assets/css/apply.css" rel="stylesheet">
<link rel="stylesheet" href="style.css">
<style type="text/css">
.table .table-hover input[type="text"],input[type="date"] {
   width: 150px;
}
.table .table-hover input[type="time"]{
   width: 120px;
}
.table th{
   background-color: #e3e1e1;
   text-align: center;
}
.table td{
   border-bottom: 1px solid #e3e1e1;
}
.table{
font-size: 14px;
}
</style>
<script type="text/javascript">
function input(f,n){
  if (f.checked) {
     for(i=2; i<=n; i++){
        $('#place'+i).val($('#place1').val());
        $('#starttime'+i).val($('#starttime1').val());
        $('#endtime'+i).val($('#endtime1').val());
     }
  } 
  else{
     for(i=2; i<=n; i++){
        $('#place'+i).val($('').val());
        $('#starttime'+i).val($('').val());
        $('#endtime'+i).val($('').val());
     }
   }
}
function goPopup(){
	var pop = window.open("../popup/jusoPopup.shop","pop","width=570, height=420, scrollbars=yes, resizable=yes");
}
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
	document.classRegisterForm.zipNo.value = zipNo;
	document.classRegisterForm.roadFullAddr.value = roadFullAddr;
	document.classRegisterForm.addrDetail.value = addrDetail;
	self.close();
}
</script>
</head>
<body>
<section>
   <div class="container">
   <form:form method="post" modelAttribute="classinfoList" action="registerClassinfo.shop?classid=${c.classid}" enctype="multipart/form-data" id="classRegisterForm" name="classRegisterForm">
      <div class="tutor_cont">
         <div class="title_box">
            <h1>수업 등록
               <c:if test="${c.type==1}">(원데이)</c:if>
               <c:if test="${c.type==2}">(다회차)</c:if></h1>
         </div>
         <div class="class_title">
            ${c.subject}
         </div>
         <div class="apply">
            <div class="profile_box">
               <div class="profile" style="background-image:url('${path}/assets/img/${tutorimg}')"></div>
               <p class="triangle-border top gray" style="margin-top:50px">
                  곧 수업이 등록됩니다!<br>
                  <span>장소,날짜,시간</span>
                  을 선책해주세요
               </p>
            </div>
            <div class="sh_box class_price">
               <div class="head">
                  수업의 장소와 날짜 및 시간을 설정해주세요
               </div>
               <div class="regions" id="regions">
                  <div class="region" id="region">
                     <div class="option">
                        <div class="top">
                           <div class="text">
                              수업 : ${newclassno} 차수
                              <form:hidden path="classinfos[0].classid" value="${c.classid}" />
                           </div>
                            <div style="text-align:right">
                              <c:if test="${c.type==2}">
                              <input type="checkbox" name="checkbox" id="checkbox" onchange="input(this,${c.totaltime})"> 장소,시작시간,끝나는시간이 모두 같습니다.
                              </c:if>
                           </div>
                        </div>
                     </div>
                     <c:if test="${c.type==1}">
                     <form:hidden path="classinfos[0].classid" value="${c.classid}" />
                     <form:hidden path="classinfos[0].classno" value="${newclassno}" />
                     <form:hidden path="classinfos[0].classseq" value="${1}" />
                     <div class="option">
                        <div class="top">
                           <div class="text">
                 
                 <%-- callback까지 되는데 db 저장이 안됨 ㅠㅠ --%>
                 <div id="callBackDiv">           
                              장소: <input type="text" name="zipNo" path="classinfos[0].zipcode" onclick="goPopup()" placeholder="우편번호 클릭 후 검색" readonly="true"/><br>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="roadFullAddr" path="classinfos[0].address" style="width:500px;" placeholder="주소" readonly="true" ><br>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="addrDetail" path="classinfos[0].place" style="width:500px;" placeholder="상세주소" >
                </div>
                
                           </div>
                        </div>
                     </div>
                     <div class="option">
                        <div class="top">
                           <div class="text">
                              날짜:   <form:input type="date" path="classinfos[0].date" />
                           </div>
                        </div>
                     </div>
                     <div class="option">
                        <div class="top">
                           <div class="text">
                              시간: <form:input type="time" path="classinfos[0].starttime" /> 
                              ~ <form:input type="time" path="classinfos[0].endtime" /> 
                           </div>
                        </div>
                     </div>
                     </c:if>
                     <c:if test="${c.type==2}">
                     <div class="option">
                            <table class="table table-hover">
                           <tr><th>회차</th><th>장소</th><th>날짜</th><th>시작시간</th><th>끝나는시간</th></tr>
                           <c:forEach var="i" begin="1" end="${c.totaltime}">
                              <form:hidden path="classinfos[${i}].classid" value="${c.classid}" />
                              <form:hidden path="classinfos[${i}].classno" value="${newclassno}" />
                              <form:hidden path="classinfos[${i}].classseq" value="${i}" />
                              <tr><td>${i}회차</td>
                 
                 <%-- 원데이 장소 주소등록은 되는데 다회차 폼에서는 안됨 ㅠㅠ --%>                
                                 <td><div id="callBackDiv">           
                              장소: <input type="text" name="zipNo" path="classinfos[${i}].zipcode" style="width:100px;" onclick="goPopup()" placeholder="우편번호 클릭 후 검색" readonly="true"><br>
                      <input type="text" name="roadFullAddr" path="classinfos[${i}].address" placeholder="주소" readonly="true" ><br>
                      <input type="text" name="addrDetail" path="classinfos[${i}].place" placeholder="상세주소" >
                </div></td>
                
                                 <td><form:input type="date" path="classinfos[${i}].date" /></td>
                                 <td><form:input type="time" path="classinfos[${i}].starttime" id="starttime${i}" /></td>
                                 <td><form:input type="time" path="classinfos[${i}].endtime" id="endtime${i}" /></td></tr>
                           </c:forEach>
                        </table>
                     </div>
                     </c:if>
                  </div>
               </div>
            </div>
         </div>
         <div id="registerButton" class="next button" onclick="javascript:document.classRegisterForm.submit()">등록</div>
      </div>
   </form:form>
   </div>
</section>
</body>
</html>