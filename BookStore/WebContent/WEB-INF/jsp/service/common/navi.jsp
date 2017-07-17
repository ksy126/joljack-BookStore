<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String cp = request.getContextPath(); %>
<header id="header">
	<div class="header-middle">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="logo pull-left">
						<a href="/main/main.do"><img src="<%=cp%>/image/Logo.jpg" alt="" style="width: 139px;"></a>
					</div>
				</div>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<ul class="nav navbar-nav">
						<c:if test="${sessionScope.sessionData.memberInfo.getMember_no() == null || sessionScope.sessionData.memberInfo.getMember_no() == ''}">
							<li><a href="/auth/login.do"><i class="fa fa-lock"></i>로그인</a></li>
						</c:if>
						<c:if test="${sessionScope.sessionData.memberInfo.getMember_no() != null && sessionScope.sessionData.memberInfo.getMember_no() != ''}">
							<li><a href="/auth/userLogout.do"><i class="fa fa-lock"></i>로그아웃</a></li>
						</c:if>
							<li><a href="/main/zzim.do"><i class="fa fa-star"></i> 장바구니</a></li>
							<li><a href="/main/purchaseList.do"><i class="fa fa-shopping-cart"></i>구매목록</a></li>
							<li><a href="/auth/join.do"><i class="fa fa-user"></i> 회원가입</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="header-bottom">
		<div class="container">
			<div class="row">
				<div class="col-sm-9">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span> <span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<div class="mainmenu pull-left">
						<ul class="nav navbar-nav collapse navbar-collapse">
							<li><a href="/main/main.do" id="menu_main">Home</a></li>
							<li class="dropdown"><a href="#">Book<i class="fa fa-angle-down"></i></a>
								<ul role="menu" class="sub-menu">
									<li><a href="/main/shop/list/it.do">IT</a></li>
									<li><a href="/main/shop/list/fiction.do">소설</a></li>
									<li><a href="/main/shop/list/selfdevelopment.do">자기개발</a></li>
									<li><a href="/main/shop/list/poem.do">시/에세이</a></li>
									<li><a href="/main/shop/list/science.do">과학</a></li>
									<li><a href="/main/shop/list/humanist.do">인문</a></li>
									<li><a href="/main/shop/list/religion.do">종교/역학</a></li>
									<li><a href="/main/shop/list/teenager.do">청소년</a></li>
									<li><a href="/main/shop/list/child.do">아동</a></li>
									<li><a href="/main/shop/list/baby.do">유아</a></li>
									<li><a href="/main/shop/list/travel.do">여행</a></li>
								</ul>
							</li>
							<li><a href="/main/notice.do" id="menu_notice">Notice</a></li>
							<li><a href="/main/qa.do">Q n A</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-3" align="center">
					<div class="search_box pull-right" onkeydown="javascript:if(event.keyCode==13){search.search();}">
						<input type="text" placeholder="Search" id="searchValue"/>
						<button onclick="search.search()" class="btn btn-default">검색</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>

<input type="hidden" value="${pageName}" id="pageName">

<script>
menuAddClass();
function menuAddClass(){
	var pageName = $('#pageName').val();
	if(pageName == 'main'){
		$('#menu_main').addClass('active');
	} else if(pageName == 'notice'){
		$('#menu_notice').addClass('active');
	}
}
</script>