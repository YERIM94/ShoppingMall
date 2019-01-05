<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%@ include file="/view/layout/taglib-include.jsp"%>
<%@ page import="net.e4net.eiwaf.service.resource.*"%>
<%@ page import="net.e4net.eiwaf.web.handler.*"%>

<ei:requestContext id="requestContext" newRequestData="true"/>
<%
	response.setStatus(HttpServletResponse.SC_OK);

	StatusException statusException = null;
	
	Status status = statusException.getStatus();
	String title = requestContext.getRequestProperty(RequestDataProperty.TITLE);
	String layout = requestContext.getRequestProperty(RequestDataProperty.LAYOUT);

	if (StringUtil.isNullOrEmpty(title)) {
		title = "불편을 드려서 죄송합니다.";
	}
	if (StringUtil.isNullOrEmpty(layout)) {
		layout = "/view/layout/main-layout.jsp";
	} else {
		layout = "/view/layout/"+ layout +"-layout.jsp";
	}
%>
<ei:layoutRender name="<%= layout %>">
<ei:layoutComponent name="eiLayoutTitle"><%= title %></ei:layoutComponent>
<ei:layoutComponent name="eiLayoutContent">

<script type="text/javascript">
//<![CDATA[
	function eiwaf_DocumentReady(status) {
		
	}
//]]>
</script>

<table style="width:650px; margin:25px auto;">
	<tr>
		<td style="background-image:url('/images/msg_top.gif');height:65px"></td>
	</tr>
	<tr>
		<td class="serverror_topbg" style="padding:15px 0px 15px 0px">
			<table style="width:600px;">
				<tr>
					<td align="center" width="150px"><img src="/images/msg_img.gif" alt=""/></td>
					<td>
						<span class="msg"><%= title %></span>
						<div style="margin:0 0 0 10px;">
							처리중 오류가 발생하였습니다.<br/><%= status.getMessage() %>
						</div>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td class="serverror_botbg" height="55" style="padding-right:15px">
			<div>
				<div class="right btn02">
					<span class="button basic" style="display:none;"><button type="button" onclick="">오류보내기</button></span>
				</div>
			</div>
		</td>
	</tr>
</table>

</ei:layoutComponent>
</ei:layoutRender>