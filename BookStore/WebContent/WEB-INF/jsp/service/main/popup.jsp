<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="../common/script.jsp" />
<script>
	function linkToOpener(URL) {
		if (window.opener && !window.opener.closed)
			window.opener.location = URL;
		window.close();
	}
</script>
</head>

<body style="width: 414px; height: 400px;">
	<img src="<%=cp%>/image/serviceImg/popSlider/pop01.png" style="width: 100%;"></a>
</body>
</html>