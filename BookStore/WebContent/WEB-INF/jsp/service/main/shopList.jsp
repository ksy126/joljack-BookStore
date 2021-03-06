<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../common/header.jsp" />
<jsp:include page="../common/script.jsp" />
</head>

<body>
	<jsp:include page="../common/navi.jsp" />
	
	<section style="margin-top: 3em;margin-bottom: 3em; min-height: 450px;">
		<div class="container">
			<div class="row">
				<div class="col-sm-12" style="font-size: 14px;">
					<a href="#" style=" color: black;" onclick="app.categoryGetList('new')">신상품순</a> | 
					<a href="#" style=" color: black;" onclick="app.categoryGetList('best')">인기순</a> | 
					<a href="#" style=" color: black;" onclick="app.categoryGetList('highPrice')">높은가격순</a> | 
					<a href="#" style=" color: black;" onclick="app.categoryGetList('lowPrice')">낮은가격순</a>
				</div>		
				
				<div class="col-sm-12">
					<div class="features_items"><!--features_items-->
						<c:if test="${category == 'it'}">
							<h2 class="title text-center">IT</h2>
						</c:if>
						<c:if test="${category == 'fiction'}">
							<h2 class="title text-center">소설</h2>
						</c:if>
						<c:if test="${category == 'selfdevelopment'}">
							<h2 class="title text-center">자기개발</h2>
						</c:if>
						<c:if test="${category == 'poem'}">
							<h2 class="title text-center">시/에세이</h2>
						</c:if>
						<c:if test="${category == 'science'}">
							<h2 class="title text-center">과학</h2>
						</c:if>
						<c:if test="${category == 'humanist'}">
							<h2 class="title text-center">인문</h2>
						</c:if>
						<c:if test="${category == 'religion'}">
							<h2 class="title text-center">종교/역학</h2>
						</c:if>
						<c:if test="${category == 'teenager'}">
							<h2 class="title text-center">청소년</h2>
						</c:if>
						<c:if test="${category == 'child'}">
							<h2 class="title text-center">아동</h2>
						</c:if>
						<c:if test="${category == 'baby'}">
							<h2 class="title text-center">유아</h2>
						</c:if>
						<c:if test="${category == 'travel'}">
							<h2 class="title text-center">여행</h2>
						</c:if>
						
						
						<c:forEach var="row" items="${itemList}">
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center" onclick="navi.detailsPage('${row.product_no}')">
										<img src="/upload/img/${row.p_img}" alt=""  style="height: 355px;"/>
										<p>${row.p_name}</p>
										<h2><i class="fa fa-krw" aria-hidden="true"></i>${row.p_price}</h2>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
				</div>				
				<div class="col-sm-12" align="center">
					<ul class="pagination">
						<c:if test="${po == 0}">
						<li><a href="javascript:;" onclick="app.paging('first')">첫 페이지</a></li>
						</c:if>
						<c:if test="${po > 0}">
						<li><a href="javascript:;" onclick="app.paging('prev')">이전페이지</a></li>
						</c:if>
						<li class="active"><a href="">${po + 1}</a></li>
						<li><a href="javascript:;" onclick="app.paging('next')">다음페이지</a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp"/>
	<!-- 페이징 및 카테고리 정보 -->
	<input type="hidden" value="${category}" id="category">
	<input type="hidden" value="${po}" id="po">
	<input type="hidden" value="${type}" id="type">
	<input type="hidden" value="${search}" id="search">
<script type="text/javascript">
function App() {
    var _this = this;

    // 페이징
    _this.paging = function(type) {
    	var pageNum = $('#po').val();
    	var category = $('#category').val();
    	var defaultType = $('#type').val();
    	var search = $('#search').val();
    	if(type == 'prev') {
    		pageNum = Number(pageNum) - 1;
    		location.href="/main/shop/list/"+category+".do?po="+pageNum+"&type="+defaultType+"&search="+search;
    	} else if(type == 'next') {
    		pageNum = Number(pageNum) + 1;
    		location.href="/main/shop/list/"+category+".do?po="+pageNum+"&type="+defaultType+"&search="+search;
    	} else if (type == 'first') {
    		location.href="/main/shop/list/"+category+".do?po=0&type="+defaultType+"&search="+search;
    	}
    };
    
    // 물품 리스트 정렬
    _this.categoryGetList = function(type) {
    	var pageNum = $('#po').val();
    	var category = $('#category').val();
    	var search = $('#search').val();
    	
    	location.href="/main/shop/list/"+category+".do?po="+pageNum+"&type="+type+"&search="+search;
    };
    
    // 이벤트 바인드
    _this.eventBind = function() {
        
    };
    
    // Init
    _this.init = function() {
        _this.eventBind();
    }();
}    
var app = new App();
</script>
</body>
</html>
