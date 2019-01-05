<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/view/layout/taglib-include.jsp"%>

<ei:requestContext id="requestContext" newRequestData="true"
	newStatus="true" />
<ei:layoutDefinition>

	<!DOCTYPE html>
	<html lang="ko">
<head>
<meta charset="utf-8" name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
<title>${eiLayoutTitle}</title>

<link rel="stylesheet" href="/css/main.css">
<link type="text/css" href="/css/basic.css" rel="stylesheet" />
<link type="text/css" href="/css/layout.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<script type="text/javascript" src="/js/jquery/jquery-1.7.2.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="/js/eiwaf/eiwaf-1.1.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/test.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<!-- <script type="text/javascript" src="../ga.js"></script>
<script type="text/javascript" src="../ph-optin.js"></script> -->

<script type="text/javascript">
//<![CDATA[
	$(function() {
		eiwaf_InitDocumentReady(${requestContext.status});
	});
//]]>
</script>

<script type="text/javascript">
			//마이페이지 Action
		 	function DoMypage() {
				var f
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
			
			$('#btn_myPage').on('click',function(){
				var f
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
			});
		</script>
</head>



<body>
	<!-- header -->
	<section class="${eiCssFormat}">
		<header>
			<div class="wrapper">
				<a href="/main/mymain.do"><img src="/images/mainLogo.png"
					class="logo" alt="" titl="" style="padding: 30px;" /></a> <a href="#"
					class="hamburger"></a>
				<nav>
					<ul>
						<li><a href="/main/mymain.do">Main</a></li>
						<li><a href="/shop/shopmain.do">Shop</a></li>
						<li><a href="/shop/cart.do">Cart</a></li>
						<!-- 로그인O: Mypage 버튼, 로그인X: Join버튼-->
						<c:if test="${sessionID ne '' and sessionID ne null}">
							<li><a id="btn_myPage">My Page</a></li>
							<input type="hidden" value="${sessionID}}" name="user_id" />
						</c:if>
						<c:if test="${sessionID eq null}">
							<li><a href="/login/registerForm.do">Join</a></li>
						</c:if>
						<c:set var="auth">${sessionAuth}</c:set>
						<c:if test="${auth eq 's'}">
							<li><a href="/seller/main.do">Seller</a></li>
						</c:if>
						<c:if test="${'s' ne auth}"></c:if>
					</ul>
					<c:if test="${sessionID ne '' and sessionID ne null}">
						<a href="/main/logout.do" class="login_btn">Logout</a>
					</c:if>
					<c:if test="${sessionID eq null}">
						<a href="/login/loginForm.do" class="login_btn">Login</a>
					</c:if>
				</nav>
			</div>
		</header>
		<!--  end header section  -->
	</section>
	<!--  end hero section  -->
	${eiLayoutContent}

	<!-- start footer -->
	<footer>
		<div class="copyrights wrapper">
			Copyright © 2019 <a href="http://pixelhint.com" target="_blank"
				class="ph_link" title="Download more free Templates">xxx.com</a>.
			All Rights Reserved.
		</div>
	</footer>
	<!--  end footer  -->
</body>
	</html>
</ei:layoutDefinition>