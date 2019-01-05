<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/view/layout/taglib-include.jsp"%>

<ei:layoutRender name="/view/layout/basic-layout.jsp">
	<ei:layoutComponent name="eiLayoutTitle">로그인</ei:layoutComponent>
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
		<script src="jquery.js"></script>
		<script src="/jquery-validation-1.19.0/jquery.validate.js"></script>
		<script src="jquery.validate.js"></script>
		<script type="text/javascript">
			//로그인Action
		 	function DoLogin() {
				var f = document.form1;
				if (uif_CheckNullOrEmpty(f.user_id) || uif_CheckNullOrEmpty(f.login_passwd)) {
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
		</script>
		<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>

		<body>
		<ei:layoutComponent name="eiCssFormat">shero</ei:layoutComponent>
			<script
				src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
				integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
				crossorigin="anonymous"></script>

			<div id="page-container"
				style="width: 60%; margin-left: auto; margin-right: auto; margin-top: 50px; margin-bottom:300px;">
				<p class="font-weight-light"
					style="font-size: 50px; margin-bottom: 5px;">Login</p>
				<div style="margin-bottom:20px;">로그인</div>
				<hr width=”100%” noshade />
				<form method="post" name="form1" action="DoLogin();" FormEvent="true" style="margin-top: 20px;">
					<div class="form-group">
						<label for="formGroupExampleInput">아이디</label> 
						<input type="text"
							class="form-control" id="formGroupExampleInput" placeholder="ID"
							name="user_id" minlength="2" required>
					</div>
					<div class="form-group">
						<label for="formGroupExampleInput2">패스워드</label> <input
							type="password" class="form-control" id="formGroupExampleInput2"
							placeholder="PASSWORD" name="login_passwd">
					</div>
					<button type="submit" onclick="DoLogin();" class="btn btn-outline-secondary" id="login_btn" style="margin-top: 10px; float:right; width:15%">LOGIN</button>
					<div id="btn_group" style="width:100%;">
						<a href="/main/findIdPwForm.do">아이디&nbsp;&nbsp;|&nbsp;&nbsp;비밀번호찾기</a>
					</div>
				</form>
			</div>
		</body>
		</html>
	</ei:layoutComponent>
</ei:layoutRender>