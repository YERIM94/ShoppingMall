<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/view/layout/taglib-include.jsp"%>

<ei:layoutRender name="/view/layout/basic-layout.jsp">
	<ei:layoutComponent name="eiLayoutTitle">판매자용 상품등록</ei:layoutComponent>
	<ei:layoutComponent name="eiLayoutContent">
		<head>
<script type="text/javascript">
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
	
	$(document).ready(function() {
		$('#table_id').DataTable({
			"lengthMenu" : [ [ 5, 10, 50, -1 ], [ 5, 10, 50, "All" ] ]
		});
	});
</script>

<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
<link rel="stylesheet" href="/css/datatables.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/main.css">

<!-- <script type="text/javascript" src="js/jquery.js"></script>
						<script type="text/javascript" src="js/main.js"></script> -->
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>
<!-- 
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/r/bs-3.3.5/jq-2.1.4,dt-1.10.8/datatables.min.css" />
<script type="text/javascript"
	src="https://cdn.datatables.net/r/bs-3.3.5/jqc-1.11.3,dt-1.10.8/datatables.min.js"></script> -->
<script src="jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="/DataTables/datatables.min.css"/>
<script type="text/javascript" src="/DataTables/datatables.min.js"></script>


		</head>

		<body>
		<ei:layoutComponent name="eiCssFormat">shero</ei:layoutComponent>
		
			<section
				style="width: 60%; margin-left: auto; margin-right: auto; margin-top: 50px; margin-bottom:300px;">
					<p class="font-weight-light"
					style="font-size: 50px; margin-bottom: 5px;">Item Upload</p>
				<div style="margin-bottom:20px;">상품 업로드</div>
				<hr width=”100%” noshade />
				<div style="height:10px;"></div>
				<!-- datatables 테이블 -->
				<table id="table_id"  style="width:100%; ">
					<thead>
						<tr bgcolor="#DEE2E8">
							<th>상품번호</th>
							<th>카테고리</th>
							<th>상품명</th>
							<th>판매금액</th>
							<th>판매수량 / 상품수량</th>
							<th>판매여부</th>
							<th>등록일자</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Tiger Nixon</td>
							<td>System Architect</td>
							<td>Edinburgh</td>
							<td>61</td>
							<td>2011/04/25</td>
							<td>$320,800</td>
							<td>$320,800</td>
						</tr>
						<tr>
							<td>Garrett Winters</td>
							<td>Accountant</td>
							<td>Tokyo</td>
							<td>63</td>
							<td>2011/07/25</td>
							<td>$170,750</td>
							<td>$320,800</td>
						</tr>
						<tr>
							<td>Ashton Cox</td>
							<td>Junior Technical Author</td>
							<td>San Francisco</td>
							<td>66</td>
							<td>2009/01/12</td>
							<td>$86,000</td>
							<td>$320,800</td>
						</tr>
						<tr>
							<td>Tiger Nixon</td>
							<td>System Architect</td>
							<td>Edinburgh</td>
							<td>61</td>
							<td>2011/04/25</td>
							<td>$320,800</td>
							<td>$320,800</td>
						</tr>
						<tr>
							<td>Ashton Cox</td>
							<td>Junior Technical Author</td>
							<td>San Francisco</td>
							<td>66</td>
							<td>2009/01/12</td>
							<td>$86,000</td>
							<td>$320,800</td>
						</tr>
						<tr>
							<td>Ashton Cox</td>
							<td>Junior Technical Author</td>
							<td>San Francisco</td>
							<td>66</td>
							<td>2009/01/12</td>
							<td>$86,000</td>
							<td>$320,800</td>
						</tr>
						<tr>
							<td>Garrett Winters</td>
							<td>Accountant</td>
							<td>Tokyo</td>
							<td>63</td>
							<td>2011/07/25</td>
							<td>$170,750</td>
							<td>$320,800</td>
						</tr>
						<tr>
							<td>Ashton Cox</td>
							<td>Junior Technical Author</td>
							<td>San Francisco</td>
							<td>66</td>
							<td>2009/01/12</td>
							<td>$86,000</td>
							<td>$320,800</td>
						</tr>
						<tr>
							<td>Ashton Cox</td>
							<td>Junior Technical Author</td>
							<td>San Francisco</td>
							<td>66</td>
							<td>2009/01/12</td>
							<td>$86,000</td>
							<td>$320,800</td>
						</tr>
					</tbody>
				</table>

				<button id="btn_goodsReg" type="submit" class="btn btn-outline-dark"
					style="float: right; width: 10%;"
					onclick="location.href='/seller/goodsRegisterForm.do'">신규등록</button>
			</section>
			<!--  end hero section  -->
		</body>
	</ei:layoutComponent>
</ei:layoutRender>