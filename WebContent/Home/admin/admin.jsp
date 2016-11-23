<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.zhanwkj.fx2.model.*,java.util.*"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>快租房管家个人中心</title>
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
List<RentHouse> rs = (List<RentHouse>)session.getAttribute("rs");
%>

<body>
	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/top.jsp" />

	<div class="user_top_card">
		<div class="user_card" style="padding: 15px 0;">
			<img src="${pageContext.request.contextPath}/Style/img/3.jpg"
				class="infor-img border-img rbox" />
			<h4>管理员：胡先生</h4>
		</div>
	</div>

	<div class="panel-group" id="accordion">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion"
						href="#collapseOne">
						<aside class="th_list">
							<h3>待审核清单</h3>
						</aside>
					</a>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse collapse in">
				<div class="panel-body">
					<div class="carditems">

						<volist name='list_house' id='vo'> <a href="#">
							<div class="carditems_dt">
								<img src="${pageContext.request.contextPath}/Style/img/1.jpg">
							</div>
							<div class="carditems_dd">
								<h3>
									<span class="h3">康家知本大厦</span> <span class="ad_deposit"><button class="btn btn-success btn-sm">通过</button></span>
								</h3>

								<h4>
									<span class="h4">2室1厅 |&nbsp;117m²&nbsp;| 6层/10层</span> <span
										class="ad_price"><B>2400</B>元/月</span>
								</h4>

								<p>
									<!--<span class="rbox6 bRed">免佣金无中介费</span>-->
									<!--<span class="rbox6 bYellow">赠送搬家</span>-->
									<span class="ad_collect">已有 28 人收藏</span> <span> 蜂小二:<B>吴小丽</B>
									</span>
								</p>

							</div>
						</a> <a href="#">
							<div class="carditems_dt">
								<img src="${pageContext.request.contextPath}/Style/img/1.jpg">
							</div>
							<div class="carditems_dd">
								<h3>
									<span class="h3">康家知本大厦</span> <span class="ad_deposit"><button class="btn btn-success btn-sm">通过</button></span>
								</h3>
								<h4>
									<span class="h4">2室1厅 |&nbsp;117m²&nbsp;| 6层/10层</span> <span
										class="ad_price"><B>2400</B>元/月</span>
								</h4>
								<p>
									<!--<span class="rbox6 bRed">免佣金无中介费</span>-->
									<!--<span class="rbox6 bYellow">赠送搬家</span>-->
									<span class="ad_collect">已有 28 人收藏</span><span> 蜂小二:<B>吴小丽</B>
									</span>
								</p>
							</div>
						</a> </volist>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/afbottom.jsp" />

	<div class="visible"></div>
</body>
</html>
