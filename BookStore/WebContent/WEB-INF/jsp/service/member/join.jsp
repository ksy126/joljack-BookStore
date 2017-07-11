<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
	<section id="form" style="margin-top: 1em; margin-bottom: 10px;">
		<!--form-->
		<article class="container">
			<div class="col-md-12">
				<div class="page-header">
					<h1>
						회원가입 <small>horizontal form</small>
					</h1>
				</div>
				<div class="form-horizontal">
					<div class="form-group">
						<label class="col-sm-3 control-label" for="inputNumber">아이디</label>
						<div class="col-sm-6">
							<div class="input-group">
								<input type="text" class="form-control" id="user_id" placeholder="아이디를 입력하세요" />
								<input type="hidden" value="false" id="idConfirm">
								<span class="input-group-btn">
								<button onclick="app.idCheck()" class="btn btn-default">
									중복 확인 &nbsp;
									<i class="fa fa-mail-forward spaceLeft"></i>
								</button>
								</span>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
						<div class="col-sm-6">
							<input class="form-control" id="user_pwd" type="password" placeholder="비밀번호">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호 확인</label>
						<div class="col-sm-6">
							<input class="form-control" id="user_pwd_confirm" type="password" placeholder="비밀번호 확인">
							<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="inputName">이름</label>
						<div class="col-sm-6">
							<input class="form-control" id="name" type="text" placeholder="이름">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="inputNumber">휴대폰번호</label>
						<div class="col-sm-6">
							<div class="input-group">
								<input type="tel" class="form-control" id="phone" placeholder="- 없이 입력해 주세요" />
								<input type="hidden" value="false" id="phoneConfirm">
								<span class="input-group-btn">
									<button onclick="app.phoneCheck()" class="btn btn-default">
										중복 확인 &nbsp;
										<i class="fa fa-mail-forward spaceLeft"></i>
									</button>
								</span>
							</div>
							<p style="margin-left: 1em; margin-top: 0.3em;">입력한 휴대폰 번호는 [아이디/비밀번호] 찾기에 이용됩니다.</p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="inputNumberCheck">우편번호</label>
						<div class="col-sm-6">
							<div class="input-group">
								<input class="form-control" id="zip_code" type="text" placeholder="우편번호" readonly="readonly">
								<span class="input-group-btn">
									<button class="btn btn-success" type="button" onclick="daumPostcode()">
										주소 검색 &nbsp;
										<i class="fa fa-edit spaceLeft"></i>
									</button>
								</span>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="inputNumber">주소</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="address" placeholder="" readonly="readonly" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="inputNumber">상세주소</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="sub_address" placeholder="" />
						</div>
					</div>
					<div class="form-group">
						<div class="form-group text-center">
							<button class="btn btn-default" onclick="app.memberInsertData()">
								회원가입 &nbsp;<i class="fa fa-check spaceLeft"></i>
							</button>
							<button class="btn btn-default">
								가입취소 &nbsp;<i class="fa fa-times spaceLeft"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</article>
	</section>
	<!--/form-->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>
