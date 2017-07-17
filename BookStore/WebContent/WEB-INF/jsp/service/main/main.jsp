<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String cp = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../common/header.jsp" />
<jsp:include page="../common/script.jsp" />
</head>

<body>
	<jsp:include page="../common/navi.jsp" />

	<!-- Page  -->
	<section id="slider">
		<!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>

						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-11">
									<img src="<%=cp%>/image/serviceImg/slider/slider01.jpg"	class="girl img-responsive" style="height: 200px; width: 100%" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="col-sm-11">
									<img src="<%=cp%>/image/serviceImg/slider/slider02.jpg"	class="girl img-responsive" style="height: 200px; width: 100%" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="col-sm-11">
									<img src="<%=cp%>/image/serviceImg/slider/slider03.jpg"	class="girl img-responsive" style="height: 200px; width: 100%" alt="" />
								</div>
							</div>
						</div>

						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section>
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="features_items" style="margin-bottom: 2em; min-height: 100px;">
						<div class="col-xs-6">
							<h2 class="title text-center">NOTICE</h2>
							<ul class="list-group" style="margin-right: 2em; margin-left: 2em;">
								<c:forEach var="row" items="${noticeList}">
									<li class="list-group-item">${row.notice_title}<span class="badge">관리자</span></li>
								</c:forEach>
								<li class="list-group-item"	style="border-bottom: 0px; border-left: 0px; border-right: 0px;">&nbsp;
									<span class="badge">
									<a href="/main/notice.do" style="color: #fff;">공지사항&nbsp;
										<i class="fa fa-hand-o-right" aria-hidden="true"></i></a>
									</span>
								</li>
							</ul>
						</div>
						<div class="col-xs-6">
							<h2 class="title text-center">Q & A</h2>
							<ul class="list-group" style="margin-right: 2em; margin-left: 2em;">
								<c:forEach var="row" items="${qaList}">
									<li class="list-group-item">${row.qa_title}<span
										class="badge">${row.name}</span></li>
								</c:forEach>
								<li class="list-group-item" style="border-bottom: 0px; border-left: 0px; border-right: 0px;">&nbsp;
									<span class="badge">
										<a href="/main/qa.do" style="color: #fff;">Q & A&nbsp;
											<i class="fa fa-hand-o-right" aria-hidden="true"></i>
										</a>
									</span>
								</li>
							</ul>
						</div>
					</div>

					<!--new_items-->
					<div class="features_items" style="margin-bottom: 2em; min-height: 300px;">
						<h2 class="title text-center" id="newItem">NEW Items</h2>
						<c:forEach var="row" items="${newItemList}">
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center" onclick="navi.detailsPage('${row.product_no}')">
											<img src="/upload/img/${row.p_img}" alt="" />
											<p>${row.p_name}</p>
											<h2><i class="fa fa-krw" aria-hidden="true"></i>${row.p_price}</h2>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<!--new_items-->
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="../common/footer.jsp" />
</body>
</html>