<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/view/layout/taglib-include.jsp"%>

<ei:layoutRender name="/view/layout/basic-layout.jsp">
	<ei:layoutComponent name="eiLayoutTitle">아이디/비밀번호 찾기</ei:layoutComponent>
	<ei:layoutComponent name="eiLayoutContent">

		<script type="text/javascript">
			//<![CDATA[

			function DoLogin() {
				var f = document.form1;
				if (uif_CheckNullOrEmpty(f.user_id)
						|| uif_CheckNullOrEmpty(f.login_passwd)) {
					return;
				}
				svcf_Ajax("/main/login.do", f, {
					callbackFn : function(status, data) {
						if (status.code == 0) {
							svcf_Link("/main/mymain.do");
							return;
						}
						alert(status.message.br2nl());
					}
				});
			}
			//]]>
		</script>

		<head>
<link rel="stylesheet" href="/css/login.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
		</head>

		<body>
			<script
				src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
				integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
				crossorigin="anonymous"></script>

			<div id="page-container"
				style="width: 60%; margin-left: auto; margin-right: auto; margin-top: 50px; margin-bottom:300px;">
				
				<p class="font-weight-light"
					style="font-size: 50px; margin-bottom: 5px;">Find ID/Password</p>
				<div style="margin-bottom:20px;">아이디/비밀번호 찾기</div>

				<hr width=”100%” noshade />

				<form action="DoLogin();" method="post" name="form1"
					FormEvent="true" style="margin-top: 20px;">
					<div style="margin-bottom: 10px; font-size: 16px;">아이디 찾기</div>
					<div class="input-group">
						<div class="input-group-prepend" id="findId">
							<span class="input-group-text">가입 시 입력했던 이메일</span>
						</div>
						<input type="text" aria-label="First name" class="form-control">
						<select class="custom-select" id="inputGroupSelect01">
							<option selected>Choose...</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
					</div>

					<button type="submit" onclick="DoLogin();"
						class="btn btn-outline-secondary" id="login_btn"
						style="margin-top: 15px; float: right; width: 15%">아이디찾기</button>
				</form>

				<div style="height: 100px;"></div>

				<form>
					<div style="margin-bottom: 10px; font-size: 16px;">패스워드 찾기</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon3">아이디</span>
						</div>
						<input type="text" class="form-control" id="basic-url"
							aria-describedby="basic-addon3">
					</div>

					<div class="input-group">
						<div class="input-group-prepend" id="findId">
							<span class="input-group-text">가입 시 입력했던 이메일</span>
						</div>
						<input type="text" aria-label="First name" class="form-control">
						<select class="custom-select" id="inputGroupSelect01">
							<option selected>Choose...</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
					</div>

					<button type="submit" onclick="DoLogin();"
						class="btn btn-outline-secondary" id="login_btn"
						style="margin-top: 15px; float: right; width:15%;">비밀번호찾기</button>
				</form>
			</div>
		</body>
		</html>
	</ei:layoutComponent>
</ei:layoutRender>