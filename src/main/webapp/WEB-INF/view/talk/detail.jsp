<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실시간톡메인</title>
<link href="${path}/assets/css/talk.css" rel="stylesheet">
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
			$("#message").on("keydown",function(evt){
				if(evt.keyCode==13){ //enter key 코드 값
					var msg = $("#message").val();
					ws.send(msg); //서버로 입력된 내용 전송
					$("#message").val("");
				}
			})
		}
		//서버에서 메세지 수신한 경우
		ws.onmessage = function(event){
			//event.data: 서버에서 보내 준 메세지
			console.log(event.data);
			var obj = JSON.parse(event.data);
			var sessionid = obj.sessionid;
			var message = obj.message;
			var profile = obj.profile;
			var date = obj.date;
			var name = obj.name;
			var current_session=$('#sessionuserid').val();
			console.log('current session id:'+current_session);
			if(sessionid==current_session){ //내가 보낸 message
				/*
				<dl class="my">
				<dt>
					<div class="profile" style="background-image:url'${path}/assets/img/user.png'">
					</div>
					<div class="name">튜티</div>
				</dt>
				<dd class="blo">
					뚝썸유원지에서만 진행하시는 건가요?
					<span class="date">2020-08-04 17:49:29</span>
				</dd>
				</dl>
				*/
				var printHTML = "<dl class='my'><dt>"+
				"<div class='profile' style='background-image:url'/swing/assets/img/"
				+profile+"'></div><div class='name'>"+name+"</div></dt>"+
				"<dd class='blo'>"+message+
				"<span class='date'>"+date+"</span></dd></dl>"
				$(".content").append(printHTML);
			}else{ //상대방 메시지
				/*
							<dl class="other">
				<dt>
					<div class="profile" style="background-image:url'${path}/assets/img/user.png'">
					</div>
					<div class="name">튜터</div>
				</dt>
				<dd class="blo">
					네 뚝섬유원지에서 진행될 예정입니다! 다만, 우천시 실내로 변경되어서
					장소가 바뀌세요
					<span class="date">2020-08-04 17:55:29</span>
				</dd>			
			</dl>
				*/
				var printHTML = "<dl class='other'><dt>"+
				"<div class='profile' style='background-image:url'/swing/assets/img/"
				+profile+"'></div><div class='name'>"+name+"</div></dt>"+
				"<dd class='blo'>"+message+
				"<span class='date'>"+date+"</span></dd></dl>"
				$(".content").append(printHTML);
			}
			console.log('chatting data:'+data);
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
			<div class="info">
				수업일정과 강의 내용에 대해 문의해보세요.<br>
				(연락처 문의 또는 직접 알려주는 것은 불가)
			</div>
			<dl class="my">
				<dt>
					<div class="profile" style="background-image:url'${path}/assets/img/user.png'">
					</div>
					<div class="name">튜티</div>
				</dt>
				<dd class="blo">
					뚝썸유원지에서만 진행하시는 건가요?
					<span class="date">2020-08-04 17:49:29</span>
				</dd>
			</dl>
			<dl class="other">
				<dt>
					<div class="profile" style="background-image:url'${path}/assets/img/user.png'">
					</div>
					<div class="name">튜터</div>
				</dt>
				<dd class="blo">
					네 뚝섬유원지에서 진행될 예정입니다! 다만, 우천시 실내로 변경되어서
					장소가 바뀌세요
					<span class="date">2020-08-04 17:55:29</span>
				</dd>			
			</dl>
		</div>
		<!-- 리스트 끝 -->
		<input type="hidden" id="sessionuserid" name="seuserid" value="${sessionuser.userid}">
	</form>
</div>
<div class="q_write">
	<textarea id="message" name="Message"></textarea>
	<a href="#" onclick="message();" class="qwbtn">전송</a>
</div>
<p>
<div id="chatStatus"></div>
<textarea id="chatMsg" name="chatMsg" rows="15" cols="40"></textarea><br>
메시지 입력: <input type="text" name="chatInput">
</body>
</html>