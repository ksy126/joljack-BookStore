<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<jsp:include page="common/script.jsp" />

<body>
	<jsp:include page="common/navigation.jsp" />

	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">상품 등록</h1>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="fa fa-bar-chart-o fa-fw"></i> 상품 등록하기
					</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-9 col-lg-offset-1">
								<div class="form-group">
									<label>상품 이미지 등록</label>
									<input type="hidden" id="fileUploadPath" name="fileUploadPath" value="" />
									<input type="hidden" id="fileNewName" name="fileNewName" value="" />
									<input type="hidden" id="destination" name="destination" value="" />
									<form id="file_upload" name="file_upload" method="post" accept="image/*;capture=camera" enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do?fileGbn=product">
										<input type="file" name="file" value="" id="file" style="height: 25px;" />
									</form>
								</div>
								<form role="form">
									<div class="form-group">
										<label>상품 이름</label>
										<input class="form-control" id="p_name" value="${productInfo.p_name }">
									</div>

									<div class="form-group">
										<label>상품 카테고리</label> <select class="form-control" id="p_category">
											<c:if test="${productInfo.p_category == 'it' }">
												<option value="it" selected="selected">IT</option>
												<option value="selfdevelopment">자기개발</option>
												<option value="poem">시/에세이</option>
												<option value="science">과학</option>
												<option value="humanist">인문</option>
												<option value="religion">종교/역학</option>
												<option value="teenager">청소년</option>
												<option value="child">아동</option>
												<option value="baby">유아</option>
												<option value="travel">여행</option>
											</c:if>
											<c:if test="${productInfo.p_category == 'fiction' }">
												<option value="it">IT</option>
												<option value="fiction" selected="selected">소설</option>
												<option value="selfdevelopment">자기개발</option>
												<option value="poem">시/에세이</option>
												<option value="science">과학</option>
												<option value="humanist">인문</option>
												<option value="religion">종교/역학</option>
												<option value="teenager">청소년</option>
												<option value="child">아동</option>
												<option value="baby">유아</option>
												<option value="travel">여행</option>
											</c:if>
											<c:if test="${productInfo.p_category == 'selfdevelopment' }">
												<option value="it">IT</option>
												<option value="fiction">소설</option>
												<option value="selfdevelopment" selected="selected">자기개발</option>
												<option value="poem">시/에세이</option>
												<option value="science">과학</option>
												<option value="humanist">인문</option>
												<option value="religion">종교/역학</option>
												<option value="teenager">청소년</option>
												<option value="child">아동</option>
												<option value="baby">유아</option>
												<option value="travel">여행</option>
											</c:if>
											<c:if test="${productInfo.p_category == 'poem' }">
												<option value="it">IT</option>
												<option value="fiction">소설</option>
												<option value="selfdevelopment">자기개발</option>
												<option value="poem" selected="selected">시/에세이</option>
												<option value="science">과학</option>
												<option value="humanist">인문</option>
												<option value="religion">종교/역학</option>
												<option value="teenager">청소년</option>
												<option value="child">아동</option>
												<option value="baby">유아</option>
												<option value="travel">여행</option>
											</c:if>
											<c:if test="${productInfo.p_category == 'science' }">
												<option value="it">IT</option>
												<option value="fiction">소설</option>
												<option value="selfdevelopment">자기개발</option>
												<option value="poem">시/에세이</option>
												<option value="science" selected="selected">과학</option>
												<option value="humanist">인문</option>
												<option value="religion">종교/역학</option>
												<option value="teenager">청소년</option>
												<option value="child">아동</option>
												<option value="baby">유아</option>
												<option value="travel">여행</option>
											</c:if>
											<c:if test="${productInfo.p_category == 'humanist' }">
												<option value="it">IT</option>
												<option value="fiction">소설</option>
												<option value="selfdevelopment">자기개발</option>
												<option value="poem">시/에세이</option>
												<option value="science">과학</option>
												<option value="humanist">인문</option>
												<option value="religion" selected="selected">종교/역학</option>
												<option value="teenager">청소년</option>
												<option value="child">아동</option>
												<option value="baby">유아</option>
												<option value="travel">여행</option>
											</c:if>
											<c:if test="${productInfo.p_category == 'religion' }">
												<option value="it">IT</option>
												<option value="fiction">소설</option>
												<option value="selfdevelopment">자기개발</option>
												<option value="poem">시/에세이</option>
												<option value="science">과학</option>
												<option value="humanist">인문</option>
												<option value="religion" selected="selected">종교/역학</option>
												<option value="teenager">청소년</option>
												<option value="child">아동</option>
												<option value="baby">유아</option>
												<option value="travel">여행</option>
											</c:if>
											<c:if test="${productInfo.p_category == 'teenager' }">
												<option value="it">IT</option>
												<option value="fiction">소설</option>
												<option value="selfdevelopment">자기개발</option>
												<option value="poem">시/에세이</option>
												<option value="science">과학</option>
												<option value="humanist">인문</option>
												<option value="religion">종교/역학</option>
												<option value="teenager" selected="selected">청소년</option>
												<option value="child">아동</option>
												<option value="baby">유아</option>
												<option value="travel">여행</option>
											</c:if>
											<c:if test="${productInfo.p_category == 'child' }">
												<option value="it">IT</option>
												<option value="fiction">소설</option>
												<option value="selfdevelopment">자기개발</option>
												<option value="poem">시/에세이</option>
												<option value="science">과학</option>
												<option value="humanist">인문</option>
												<option value="religion">종교/역학</option>
												<option value="teenager">청소년</option>
												<option value="child" selected="selected">아동</option>
												<option value="baby">유아</option>
												<option value="travel">여행</option>
											</c:if>
											<c:if test="${productInfo.p_category == 'baby' }">
												<option value="it">IT</option>
												<option value="fiction">소설</option>
												<option value="selfdevelopment">자기개발</option>
												<option value="poem">시/에세이</option>
												<option value="science">과학</option>
												<option value="humanist">인문</option>
												<option value="religion">종교/역학</option>
												<option value="teenager">청소년</option>
												<option value="child">아동</option>
												<option value="baby" selected="selected">유아</option>
												<option value="travel">여행</option>
											</c:if>
											<c:if test="${productInfo.p_category == 'travel' }">
												<option value="it">IT</option>
												<option value="fiction">소설</option>
												<option value="selfdevelopment">자기개발</option>
												<option value="poem">시/에세이</option>
												<option value="science">과학</option>
												<option value="humanist">인문</option>
												<option value="religion">종교/역학</option>
												<option value="teenager">청소년</option>
												<option value="child">아동</option>
												<option value="baby">유아</option>
												<option value="travel" selected="selected">여행</option>
											</c:if>
											<c:if test="${productInfo.p_category == null }">
												<option value="it">IT</option>
												<option value="fiction">소설</option>
												<option value="selfdevelopment">자기개발</option>
												<option value="poem">시/에세이</option>
												<option value="science">과학</option>
												<option value="humanist">인문</option>
												<option value="religion">종교/역학</option>
												<option value="teenager">청소년</option>
												<option value="child">아동</option>
												<option value="baby">유아</option>
												<option value="travel">여행</option>
											</c:if>
										</select>
									</div>

									<div class="form-group">
										<label>상품 가격</label> <input class="form-control" id="p_price"
											value="${productInfo.p_price}">
									</div>

									<div class="form-group">
										<label>상품 수량</label> <input class="form-control" id="p_amount"
											value="${productInfo.p_amount}">
									</div>

									<div class="form-group">
										<label>상품 상세 정보</label>
										<textarea class="form-control"
											style="resize: none; wrap: hard;" rows="6" id="p_info">${productInfo.p_info}</textarea>
									</div>

									<div>
										<c:if test="${type == 'write' }">
											<button type="button"
												class="btn btn-primary btn-lg btn-block" onclick="app.productWrite();">등록</button>
										</c:if>
										<c:if test="${type == 'modify' }">
											<input type="text" value="${productInfo.product_no }" id="product_no">
											<button type="button" class="btn btn-primary btn-lg btn-block" onclick="app.productModify();">수정</button>
										</c:if>
									</div>
									<input type="hidden" value="${type}" id="type">
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function App() {
			var _this = this;

			// ENV
			_this.env = {};
			_this.env.p_name = $('#p_name');
			_this.env.p_category = $('#p_category');
			_this.env.p_info = $('#p_info');
			_this.env.p_price = $('#p_price');
			_this.env.p_amount = $('#p_amount');

			// 상품 등록 버튼 클릭
			_this.productWrite = function() {
				// 이미지 파일부터 먼저 등록
				file_save();
			};

			// 상품 수정 버튼 클릭
			_this.productModify = function() {
				var file = $('#file').val();
				if (file == '' || file == 'undefined') {
					// 수정할때 사진 등록을 안할수도 있다.
					// 이럴땐 바로 수정하러 간다.
					_this.productUpdate();
				} else {
					var frm = $('#file_upload');
					save_file(frm);
					return false;
				}
			}

			_this.productUpdate = function() {

				var img_Name = $('#fileNewName').val();

				var params = {
					product_no : $('#product_no').val(),
					p_name : _this.env.p_name.val(),
					p_category : _this.env.p_category.val(),
					p_price : _this.env.p_price.val(),
					p_amount : _this.env.p_amount.val(),
					p_info : _this.env.p_info.val(),
					p_img : img_Name
				};

				$.ajax({
					type : "POST",
					async : true,
					url : "/admin/save/productModify.do",
					data : params,
					dataType : "json",
					timeout : 30000,
					cache : false,
					success : function(data) {
						alert("상품 수정이 완료 되었습니다.");
						location.reload();
					},
					error : function(request, status, error) {
						alert("작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오.");
					}
				});
			}

			// 상품 등록
			_this.productInsertData = function() {

				var img_Name = $('#fileNewName').val();

				var params = {
					p_name : _this.env.p_name.val(),
					p_category : _this.env.p_category.val(),
					p_price : _this.env.p_price.val(),
					p_amount : _this.env.p_amount.val(),
					p_info : _this.env.p_info.val(),
					p_img : img_Name
				};

				$.ajax({
					type : "POST",
					async : true,
					url : "/admin/save/product.do",
					data : params,
					dataType : "json",
					timeout : 30000,
					cache : false,
					success : function(data) {
						alert("상품 등록이 완료 되었습니다.");
						location.reload();
					},
					error : function(request, status, error) {
						alert("작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오.");
					}
				});
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
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							//-----------------//
							// 폼 전송후 콜백함수 호출   //
							//-----------------//
							var options = {
								dataType : "json",
								contentType : "application/x-www-form-urlencoded;charset=UTF-8",
								success : function(data) {
									if (data.resultCode == '1') {
										$("#fileUploadPath").val(
												data.fileUploadPath);
										$("#fileNewName").val(data.fileName);
										$("#destination").val(data.destination);
										saveCImgFile();
									} else {
										alert("첨부파일 등록에 실패하였습니다.");
									}
								},
								error : function(xhr, error, data) {
									alert("파일 업로드에 실패하였습니다.");
								}
							};
							$("#file_upload").ajaxForm(options);
						});//end document

		//저장전 유효성검사 및 파일업로드
		function file_save() {

			var file = $('#file').val();
			if (file == '' || file == 'undefined') {

			} else {
				var frm = $('#file_upload');
				save_file(frm);
				return false;
			}
		}

		function save_file(frm) {
			frm.submit();
		}

		function saveCImgFile() {
			var params = "";
			var file_name = jQuery("#fileNewName").val();
			var destination = jQuery("#destination").val();

			params = "fileNewName=" + jQuery("#fileNewName").val()
					+ "&fileUploadPath=" + jQuery("#fileUploadPath").val()
					+ "&destination=" + destination;

			$.ajax({
				type : "POST",
				async : true,
				url : "/admin/saveFile.do",
				data : params,
				dataType : "json",
				timeout : 30000,
				cache : false,
				error : function(request, status, error) {
					alert("작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오.");
				},
				success : function(data) {
					$("#fileUploadPath").val(data.fileUploadPath);
					$("#fileNewName").val(data.fileNewName);
					var type = $('#type').val();
					if (type == 'write') {
						app.productInsertData();
					} else {
						app.productUpdate();
					}
				}
			});
		}
	</script>
</body>
</html>
