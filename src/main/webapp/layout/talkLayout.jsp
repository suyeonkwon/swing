<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="decorator"
		   uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<c:set var="path" value="${pageContext.request.contextPath}"/>
<title><decorator:title/></title>
<link href="${path}/assets/css/talk.css" rel="stylesheet">
</head>
<decorator:head/>
<body>
	<div id="pop_qna">
		<div class="top">
		�ΰ�<span>
			�ǽð����� �����ϰ� �����ϼ���
			<span>
				<div class="close">x</div>
			</span>
		    </span>
		</div>
	</div>
	<decorator:body/>
</body>
</html>