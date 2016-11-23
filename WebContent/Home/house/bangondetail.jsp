<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.zhanwkj.fx2.model.*,com.zhanwkj.fx2.constant.*,java.util.*"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>蜂小二快租办公类房源详细信息</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/mui.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/fxe.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/page.css" />
<link
	href="${pageContext.request.contextPath}/Style/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/Style/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/Style/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/Style/js/mui.min.js"></script>
<script
	src="${pageContext.request.contextPath}/Style/js/jquery-1.8.3.min.js"></script>
<script
	src="${pageContext.request.contextPath}/Style/js/unslider.min.js"></script>
<script src="${pageContext.request.contextPath}/Manage/js/commom.js"></script>
<script
	src="${pageContext.request.contextPath}/Style/js/jquery2.min.js"></script>
<script
	src="${pageContext.request.contextPath}/Style/js/bootstrap3.min.js"></script>

<%
	RentHouse rentHouse = (RentHouse) session.getAttribute("RH");
	List<String> url = (List<String>) session.getAttribute("url");
	String[] equitment = (String[]) session.getAttribute("equitment");
%>
</head>
<body>

	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/top.jsp" />


	<section style="margin-bottom: 0px">
		<div id="myCarousel" class="carousel slide">

			<!-- 轮播（Carousel）项目 -->
			<div class="carousel-inner">
				<div class="item active" style="width: 100%;">
					<img src="${ pageContext.request.contextPath}<%=url.get(0)%>"
						alt="First slide" style="width: 100%;height:250px;">
				</div>
				<%for (int i = 1; i < url.size(); i++) {%>
				<div class="item" style="width: 100%;">
					<img src="${ pageContext.request.contextPath}<%=url.get(i)%>"
						alt="First slide" style="width: 100%; height:250px;">
				</div>
				<%}%>
			</div>
			<!-- 轮播（Carousel）导航 -->
			<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
			<a class="carousel-control right" href="#myCarousel"
				data-slide="next">&rsaquo;</a>
		</div>
	</section>

	<!--标题-->
	<section class="show_main_card padding-all">
		<ul class="flexbox">
			<li class="show_title">
				<h3><%=rentHouse.getTitle()%></h3>
				<h4><%=rentHouse.getAddress()%></h4>
			</li>
			<li class="show_title_op">
				<!-- 引入约看部件 --> <jsp:include page="/Home/include/issee.jsp" /> <!--<a class="bGreen" href='javascript:;'>已收藏</a>-->
				<span>已有 <%=rentHouse.getClicknum()%>人 浏览
			</span>
			</li>
		</ul>
	</section>

	<section class="addform">
		<table>
			<tr>
				<td class="TDleft">租金：<b style='font-size: 16px;'><%=rentHouse.getPrice()%>元/月</b></td>
			</tr>
		</table>

		<table>
			<tr>
				<td class="TDleft">建筑面积：</td>
				<td>
					<div class="nlinput"><%=rentHouse.getArea()%>m²
					</div>
				</td>
			</tr>
			<tr>
				<td class="TDleft">装修情况：</td>
				<td>
					<%for (int i = 0; i < RenovationType.RenovationTypes.length; i++) {
							if (RenovationType.RenovationTypes[i].equals(rentHouse.getRentrenovation())) {
					%>
					<div class="btn_1 get_re"
						style="background: #0FC527; color: #F7F7F7;"><%=RenovationType.RenovationTypes[i]%></div>
					<%} else {%>
					<div class="btn_1 get_re" style="color: gray;"><%=RenovationType.RenovationTypes[i]%></div>
					<%}}%>
				</td>

			</tr>
			<tr>
				<td class="TDleft">支付方式：</td>
				<td><div class="nlselect" style="border: #ffffff;"><%=rentHouse.getRentpaytype()%></div></td>
			</tr>
			<tr>
				<td class="TDleft">入住时间：</td>
				<td><div class="nlselect" style="border: #ffffff">
						<%=rentHouse.getChicktime()%>
					</div></td>
			</tr>
			<tr>
				<td class="TDleft">装修期：</td>
				<td><div class="nlselect" style="border: #ffffff"><%=rentHouse.getZxdate()%>天
					</div></td>
			</tr>
			<tr>
				<td class="TDleft">描 述：</td>
				<td><div style="border: 0px solid #bdc2c9">
						<textarea name="description" rows="5"><%=rentHouse.getDescription()%></textarea>
					</div></td>
			</tr>
		</table>

		<section class="show_main_card padding-bot">
			<div class="th_more">
				<i><h3>地 址：</h3> <span><%=rentHouse.getAddress()%></span></i>
			</div>
			<div class="show_map" style="height: 250px">
				<jsp:include page="/Api/baidumapapi/like.jsp" />
			</div>
		</section>

		<jsp:include page="/Home/include/tj2.jsp" />

		<!-- 引入收藏部件 -->
		<jsp:include page="/Home/include/iscollect.jsp" />
		<div class="visible"></div>
	</section>
</body>
	
<script type="text/javascript" charset="utf-8">
	var slider = mui("#slider");
	slider.slider({
		interval : 3000
	});
</script>
</html>
