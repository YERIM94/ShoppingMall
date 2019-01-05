<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/view/layout/taglib-include.jsp"%>

<ei:layoutRender name="/view/layout/main-layout.jsp">
	<ei:layoutComponent name="eiLayoutTitle">상품등록</ei:layoutComponent>
	<ei:layoutComponent name="eiLayoutContent">

		<head>
<script type="text/javascript">
	//<![CDATA[

	function DoRegister() {
		var f = document.form1;
		if (uif_CheckNullOrEmpty(f.gds_nm)) {
			return;
		}
		svcf_Ajax("/seller/goodsRegister.do", f, {
			callbackFn : function(data) {
				svcf_Link("/seller/main.do");
			}
		});
	}
	//]]>
</script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" href="/css/main.css">
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
				style="width: 50%; margin-left: auto; margin-right: auto; margin-top: auto; margin-botton: auto; padding-top: 50px;">
				<img src="/images/mainLogo.png" alt="" titl=""
					style="padding-bottom: 20px;" />
				<div><a href="/main/intro.do">Main</a> > Seller > 상품등록</div>
				<hr width=”100%” noshade />

				<form action="DoRegister();" method="post" name="form1" FormEvent="true">
						<label>상품정보</label>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<label class="input-group-text" for="inputGroupSelect01">카테고리</label>
							</div>
							<select class="custom-select" id="inputGroupSelect01"
								style="font-size: 16px;" name="catg_no">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
							</select>
						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">상품명</span>
							</div>
							<input type="text" class="form-control" aria-label="Password"
								aria-describedby="basic-addon1" name="gds_nm">
						</div>
						
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">상품수량</span>
							</div>
							<input type="number" class="form-control" aria-label="Password"
								aria-describedby="basic-addon1" name="gds_qtt">
						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">상품설명</span>
							</div>
							<textarea class="form-control" aria-label="Password"
								aria-describedby="basic-addon1" name="gds_desc" style="height:150px;"></textarea>
						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="inputGroupFileAddon01">상품 이미지</span>
							</div>
							<div class="custom-file">
								<input type="file" class="custom-file-input"
									id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
								<label class="custom-file-label" for="inputGroupFile01">Choose
									file</label>
							</div>
						</div>

						<label style="margin-top: 10px;">판매정보</label>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">판매금액</span>
							</div>
							<input type="text" class="form-control" aria-label="ID"
								aria-describedby="basic-addon1" name="gds_amt" placeholder="원">
						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<label class="input-group-text" for="inputGroupSelect01">배송비용</label>
							</div>
							<select class="custom-select" id="inputGroupSelect01"
								style="font-size: 16px;" name="gds_shpp_cost">
								<option value="0">0</option>
								<option value="1000">1000</option>
								<option value="1500">1500</option>
								<option value="2000">2000</option>
								<option value="2500">2500</option>
								<option value="3000">3000</option>
								<option value="3500">3500</option>
								<option value="4000">4000</option>
							</select>
						</div>

					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">판매수량</span>
						</div>
						<input type="text" class="form-control"
							aria-describedby="basic-addon1" id="sample6_postcode"
							name="" />
					</div>

					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">판매종료일자</span>
						</div>
						<input type="text" class="form-control"
							aria-describedby="basic-addon1" id="sample6_postcode"
							name="buy_cncl_dt" />
					</div>
					
					<input type="hidden" name="selr_usr_no" value="22"/>

					<button type="submit" onclick="DoRegister();"
						class="btn btn-outline-secondary" id="login_btn"
						style="margin-top: 10px; float: right; width: 15%">등록</button>
				</form>
			</div>
			<div style="height: 200px;'"></div>
		</body>
		</html>
	</ei:layoutComponent>
</ei:layoutRender>