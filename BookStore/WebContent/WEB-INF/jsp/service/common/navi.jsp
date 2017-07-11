<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
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
							<li><a href="/member/login.do"><i class="fa fa-lock"></i>로그인</a></li>
							<li><a href="#"><i class="fa fa-star"></i> 장바구니</a></li>
							<li><a href="#"><i class="fa fa-shopping-cart"></i>구매목록</a></li>
							<li><a href="/member/join.do"><i class="fa fa-user"></i> 회원가입</a></li>
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
									<li><a href="#">Products</a></li>
									<li><a href="#">Product Details</a></li>
									<li><a href="#">Checkout</a></li>
									<li><a href="#">Cart</a></li>
								</ul>
							</li>
							<li><a href="/main/notice.do" id="menu_notice">Notice</a></li>
							<li><a href="/main/qa.do">Q n A</a></li>
						</ul>
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