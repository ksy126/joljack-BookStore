<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% String cp = request.getContextPath(); %>

<script src="<%=cp%>/js/serviceJs/jquery.js"></script>
<script src="<%=cp%>/js/serviceJs/bootstrap.min.js"></script>
<script src="<%=cp%>/js/serviceJs/jquery.scrollUp.min.js"></script>
<script src="<%=cp%>/js/serviceJs/price-range.js"></script>
<script src="<%=cp%>/js/serviceJs/jquery.prettyPhoto.js"></script>
<script src="<%=cp%>/js/serviceJs/main.js"></script>

<input type="hidden" value="${pageName}" id="pageName">

<script>
menuAddClass();
function menuAddClass(){
	var pageName = $('#pageName').val();
	if(pageName == 'main'){
		$('#menu_main').addClass('active');
	}
}

</script>