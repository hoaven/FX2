-<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.zhanwkj.fx2.model.*,com.zhanwkj.fx2.constant.*,java.util.*"%>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<!--<meta http-equiv=refresh content="2;url=/">-->
<title>蜂小二发布审核</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/tabs.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/test.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/fxe.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/Style/css/page.css" />
	<script
	src="${pageContext.request.contextPath}/Style/js/jquery-1.8.3.min.js"></script>
</head>
<%
	RentHouse r = (RentHouse)session.getAttribute("FBHouse");
%>
<body>
	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/top.jsp" />
	
	<input type="hidden" name="rid" id="rid" value="<%=r.getId()%>"/>


	<section class="page-dope">
		<div class="summary_examine">
			<span class="hIcon ico_success"></span>
			<h2>房源信息提交成功，正在审核中</h2>
		</div>
	</section>
	<section class="page-tj">
		<aside class="th_more">
			<h3 style="color: #4a4a4b">蜂小二房管家 快租三板斧</h3>
		</aside>
		<ul class="butler_fxe">
			<!--  <li>
            <h2>一键生成房源卡秀</h2>
            <h4>将您的房源信息生成漂亮的卡秀分享朋友圈</h4>
            <a href="#" class="bOrange">立即体验</a>
        </li> -->
			<li>
				<h2>一键启动房源广播</h2>
				<h4>在58同城等各大信息平台进行房源信息发布</h4> <a href="#" class="bOrange fygb">立即体验</a>
			</li>
			<li>
				<h2>全程无忧委托服务</h2>
				<h4>
					免除电话骚扰、看房跑路、签约谈判等繁琐<br /> 优先发布房源与速配租客、实现快租不断租
				</h4> <a href="${pageContext.request.contextPath}/User/myhouse.do" class="bOrange wtfw">立即委托</a>
			</li>
		</ul>
	</section>

	<!-- 引入全局底部文件 -->
	<jsp:include page="/Home/include/bottom.jsp" />

	<div class="visible"></div>
</body>
<script src="${pageContext.request.contextPath}/Manage/js/commom.js"></script>
	<script src="${pageContext.request.contextPath}/Style/ajax/dosuccess.js"></script>
</html>
