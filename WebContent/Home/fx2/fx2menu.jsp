<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.zhanwkj.fx2.model.*,com.zhanwkj.fx2.constant.*,java.util.*"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>快租房管家账户个人中心</title>
<link
	href="${pageContext.request.contextPath}/Style/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/fxe.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/page.css" />
<script src="${pageContext.request.contextPath}/Style/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/Style/js/bootstrap.min.js"></script>
</head>
<%
	Fx2 fx2 = (Fx2)session.getAttribute("fx2");
%>
<body>
	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/top2.jsp" />

	<div class="user_top_card">
		<div class="user_card" style="padding: 15px 0;">
		<a href="${pageContext.request.contextPath}/Fx2/Login.do">
			<img src="${pageContext.request.contextPath}<%=fx2.getPic() %>"
				class="infor-img border-img rbox" /></a>
			<h4>快租房管家：<%=fx2.getName() %></h4>
			<span>服务电话<br /><%=fx2.getPhone() %>
			</span>
		</div>
		<div class="oa_lable">
			<ul class="flexbox">
				<li><span>负责业务<br /><%=fx2.getBusiness() %>
				</span></li>
				<li><span>负责区域<br /><%=fx2.getAddress() %>
				</span></li>
				<li><span>带看次数<br /><%=fx2.getSeenum() %>
				</span></li>
				<li><span>成交数<br /><%=fx2.getSunum() %>
				</span></li>
				<li><span>系统评分<br /><%=fx2.getScore() %>
				</span></li>
			</ul>
		</div>
	</div>

<section class="user_main_card">
    <div class="user_nav border-box">
        <a href="${pageContext.request.contextPath }/Fx2/fx2Check.do"><span class="fIcon icon_fysc"></span><h4>审核大厅</h4></a>
        <a href="${pageContext.request.contextPath }/Fx2/LookYK.do"><span class="fIcon icon_wdfxe"></span><h4>约看业务</h4></a>
        <a href="${pageContext.request.contextPath }/Look/lookFX2Form.do"><span class="fIcon icon_ykqd"></span><h4>约看清单</h4></a>
        <a href="${pageContext.request.contextPath }/Fx2/fx2Bind.do"><span class="fIcon icon_wdfxe"></span><h4>我的绑定</h4></a>
        <a href="#"><span class="fIcon icon_wdfxe"></span><h4>我的业务</h4></a>
    </div>
</section>
	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/afbottom.jsp" />

	<div class="visible"></div>
</body>
</html>
