<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실시간톡메인</title>
<c:set var="port" value="${pageContext.request.localPort}"/>
<c:set var="server" value="${pageContext.request.serverName}"/>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		var ws = new WebSocket("ws://${server}:${port}${path}/chatting.shop");
		//socket 연결시
		ws.onopen=function(){
			$("#chatStatus").text("info:connection opened")
			$("input[name=chatInput]").on("keydown",function(evt){
				if(evt.keyCode==13){ //enter key 코드 값
					var msg = $("input[name=chatInput]").val();
					ws.send(msg); //서버로 입력된 내용 전송
					$("input[name=chatInput]").val("");
				}
			})
		}
		//서버에서 메세지 수신한 경우
		ws.onmessage = function(event){
			//event.data: 서버에서 보내 준 메세지
			$("textarea").eq(0).prepend(event.data+"\n");
		}
		//socket 닫혔을시
		ws.onclose = function(event){
			$("#chatStatus").text("info:connection close");
		}
	})
</script>  
</head>
<body>
<h1 class="qna_title">
	튜터님과의 대화
	<a href="" class="btn_list">목록</a>
</h1>
<div id="qna_view" class="qna_view" style="height:474px;">
	<form method="POST" id="" enctype="multipart/form-data">
		<div class="content">
			
		</div>
		<input type="hidden" id="Id" name="Id" value="">
	</form>
</div>
<div class="q_write">
	<textarea id="message" name="Message"></textarea>
	<a href="#" onclick="message();" class="qwbtn">전송</a>
</div>
<p>
<div id="chatStatus"></div>
<textarea name="chatMsg" rows="15" cols="40"></textarea><br>
메시지 입력: <input type="text" name="chatInput">
</body>
</html>