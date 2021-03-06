<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>快租账户个人中心</title>
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

<body>
	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/top.jsp" />

	<c:forEach items="${fx2list}" var="fx2">
		<a href="${pageContext.request.contextPath}/fx2msg.do?fid=${fx2.id}">
			<div class="oa_lable"
				style="background-color: #09F709; width: 100%; height: 92px;">
				<ul class="flexbox">
					<li style="width: 20%;"><div class="user_card" style="padding: 15px 0;">
							<img src="${pageContext.request.contextPath}${fx2.pic}"
								class="infor-img border-img rbox" /></li>
					<li style="width: 40%;"><span>快租客服:${fx2.name}</span></li>
					<li style="width: 40%;"><span>服务电话:${fx2.phone} </span></li>
				</ul>
			</div>
		</a>
	</c:forEach>
	
<!-- 引入全局底部文件 -->
	<jsp:include  page="/Home/include/bottom.jsp"/>

	<div class="visible"></div>
</body>
</html>