<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/view/layout/taglib-include.jsp"%>

<ei:layoutRender name="/view/layout/basic-layout.jsp">
	<ei:layoutComponent name="eiLayoutTitle">마이페이지</ei:layoutComponent>
	<ei:layoutComponent name="eiLayoutContent">

<head>
<link rel="stylesheet" href="/css/login.css">
<link rel="stylesheet" href="/css/main.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
</head>
		<script type="text/javascript">
			//<![CDATA[
		function DoModify() {
				var f = document.form1;
				if (uif_CheckNullOrEmpty(f.usr_id)
						|| uif_CheckNullOrEmpty(f.usr_pwd)) {
					return;
				}
				svcf_Ajax("/login/register.do", f, {
					callbackFn : function(data) {

						svcf_Link("/main/intro.do");
					}
				});
			}
		</script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script>
			function sample6_execDaumPostcode() {
				new daum.Postcode(
					{
							oncomplete : function(data) {
								// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

								// 각 주소의 노출 규칙에 따라 주소를 조합한다.
								// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
								var addr = ''; // 주소 변수
								var extraAddr = ''; // 참고항목 변수

								//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
								if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
									addr = data.roadAddress;
								} else { // 사용자가 지번 주소를 선택했을 경우(J)
									addr = data.jibunAddress;
								}

								// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
								if (data.userSelectedType === 'R') {
									// 법정동명이 있을 경우 추가한다. (법정리는 제외)
									// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
									if (data.bname !== ''
											&& /[동|로|가]$/g.test(data.bname)) {
										extraAddr += data.bname;
									}
									// 건물명이 있고, 공동주택일 경우 추가한다.
									if (data.buildingName !== ''
											&& data.apartment === 'Y') {
										extraAddr += (extraAddr !== '' ? ', '
												+ data.buildingName
												: data.buildingName);
									}
									// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
									if (extraAddr !== '') {
										extraAddr = ' (' + extraAddr + ')';
									}
									// 조합된 참고항목을 해당 필드에 넣는다.
									document
											.getElementById("sample6_extraAddress").value = extraAddr;

								} else {
									document
											.getElementById("sample6_extraAddress").value = '';
								}

								// 우편번호와 주소 정보를 해당 필드에 넣는다.
								document.getElementById('sample6_postcode').value = data.zonecode;
								document.getElementById("sample6_address").value = addr;
								// 커서를 상세주소 필드로 이동한다.
								document
										.getElementById("sample6_detailAddress")
										.focus();
							}
						}).open();
			}
		</script>

		<body>
			<script
				src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
				integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
				crossorigin="anonymous"></script>

			<div id="page-container"
				style="width: 60%; margin-left: auto; margin-right: auto; margin-top: 50px; margin-bottom:300px;">
				<p class="font-weight-light"
					style="font-size: 50px; margin-bottom: 5px;">My Page</p>
				<div style="margin-bottom:20px;">나의 가입정보</div>
				<hr width=”100%” noshade />
				<form>
					<label style="margin-top: 10px;">가입정보</label>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">아이디</span>
							</div>
							<input type="text" class="form-control" name="usr_id"
								aria-describedby="basic-addon1" readonly value="${usr_id}"/>
						</div>
	
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">비밀번호</span>
							</div>
							<input type="password" class="form-control" aria-label="Password"
								aria-describedby="basic-addon1" name="usr_pwd" value="${usr_pwd}">
						</div>
	
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<label class="input-group-text" for="inputGroupSelect01">구분</label>
							</div>
							<input type="password" class="form-control" aria-label="Password"
								aria-describedby="basic-addon1" name="usr_cls" readonly value="${usr_cls}">
						</div>
	
						<label style="margin-top: 10px;">회원정보</label>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">이름</span>
							</div>
							<input type="text" class="form-control" aria-label="ID"
								aria-describedby="basic-addon1" name="usr_nm" value="${usr_nm}">
						</div>
	
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">이메일</span>
							</div>
							<input type="text" class="form-control" aria-label="ID"
								aria-describedby="basic-addon1" style="width: 40%;"
								name="usr_email" value="${usr_email}"> 
								<select class="custom-select"
								id="inputGroupSelect01">
								<option value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select>
						</div>
	
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">휴대폰</span>
							</div>
							<select class="custom-select" name="hp_ddd_no">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="017">017</option>
							</select> 
							<input type="text" class="form-control
								aria-label="
								ID" aria-describedby="basic-addon1" style="width: 50%;"
								name="hp_no" value="${hp_no}">
						</div>
	
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">우편번호</span>
							</div>
							<input type="text" class="form-control"
								aria-describedby="basic-addon1" id="sample6_postcode"
								name="zip_cd" readonly value="${zip_cd}"/>
							<div>&nbsp;&nbsp;</div>
							<button class="btn btn-outline-secondary" type="button"
								style="margin-top: 0px;" onclick="sample6_execDaumPostcode();">우편번호
								찾기</button>
						</div>
	
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">주소</span>
							</div>
							<input type="text" class="form-control" id="sample6_address"
								aria-describedby="basic-addon1" name="addr_first" readonly /> <input
								type="text" class="form-control" id="sample6_extraAddress"
								readonly name="zip_addr"> <input type="text"
								class="form-control" id="sample6_detailAddress"
								placeholder="상세주소" name="addr_detail">
						</div>
						<button type="submit" onclick="DoRegister();"
							class="btn btn-outline-secondary" id="login_btn"
							style="margin-top: 10px; float: right; width: 15%">수정하기</button>
					</form>
			</div>
		</body>
		</html>
	</ei:layoutComponent>
</ei:layoutRender>