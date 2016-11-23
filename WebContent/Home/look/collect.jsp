<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.zhanwkj.fx2.model.*,com.zhanwkj.fx2.constant.*,java.util.*"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>蜂小二快租我的收藏</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/frozen.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/fxe.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/page.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/tabs.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/test.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/index.css" />
<script
	src="${pageContext.request.contextPath}/Style/js/modernizr.custom.js"></script>
<script src="${pageContext.request.contextPath}/Style/js/zepto.js"></script>
<script
	src="${pageContext.request.contextPath}/Style/js/dropload.min.js"></script>
<script src="${pageContext.request.contextPath}/Style/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/Style/js/bootstrap.min.js"></script>

<%
	List<RentHouse> mc = (List<RentHouse>) session.getAttribute("myCollectHouse");
%>
</head>
<body>

	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/top.jsp" />
	<form action="${pageContext.request.contextPath}/Look/sendFormMore.do"
		method="post">
		<section>
			<div class="tabs tabs-style-circlefill">
				<!-- 顶部大型分类 -->
				<jsp:include page="/Home/include/toptype.jsp" /> 

				<div class="content-wrap">

					<section id="section-circle-fill-1" class="page-list">
						<div class="blank1"></div>
						<div class="fenggexian1">
							<aside class="th_td">
								<span class="fr"> <a class="bRed" href="#"
									onclick="deletecollect1()">删 除</a> <a class="bYellow"
									href="${pageContext.request.contextPath }/Home/index.jsp">再去选几组</a>
								</span>
								<h3 style="text-align: left">已收藏的房源</h3>
							</aside>
							<ul class="carditems" style="padding: 0">
								<form method="post" class="J_ajaxForm" action="#">
									<div class="inner carditems lists lists1">
										<%
											for (int i = 0; i < mc.size(); i++) {
												if (mc.get(i).getType() == 1) {
										%>
										<div class="ui-form">
											<ul class="ui-list ui-list-text">
												<li class="ui-border-t"><a class="item"
													href="${pageContext.request.contextPath}/House/housedetail.do?id=<%=mc.get(i).getId()%>">
														<label class="ui-checkbox ui-checkbox-s"
														style="position: relative; top: 30px;"> <input
															type="checkbox" name="house1" value="<%=mc.get(i).getId()%>"
															style="float: left;" /></label>
														<div class="carditems_dt">
															<img
																src="${pageContext.request.contextPath}<%=mc.get(i).getPicurl()%>">
														</div>
														<div class="carditems_dd">
															<h3>
																<span class="h3"><%=mc.get(i).getTitle()%></span> <span
																class="ad_deposit"><em style="<%=mc.get(i).getTrusstyle()%>">托管</em></span>
															</h3>
															<h4>
																<span class="h4" style="font-size: 12px"><%=mc.get(i).getRentaparttype()%>
																	|&nbsp;<%=mc.get(i).getArea()%>m² </span> <span
																	class="ad_price" style="font-size: 16px"><%=mc.get(i).getPrice()%>&nbsp;元/月</span>
															</h4>
															<p>
																<!--<span class="rbox6 bGreen" style="font-size: 12px">随时住</span>-->
																<!--<span class="rbox6 bYellow" style="font-size: 12px;margin-left: 15px">赠送搬家</span>-->
																<span class="ad_collect">已<%=mc.get(i).getColnum()%>人收藏
																</span>
															</p>
														</div>
												</a></li>


											</ul>
										</div>
										<%
											}
											}
										%>

									</div>

								</form>
							</ul>
							<div class="blank1"></div>

							<jsp:include page="/Home/include/collecttj1.jsp" />

							<div class="foot_button">
								<input name="button" type="submit" id="btn_ok" class="bl_button"
									value="提交约看">
							</div>
							<div class="visible"></div>
						</div>
					</section>
					<section id="section-circle-fill-2 page-widget">
						<div class="blank1"></div>
						<div class="fenggexian1">
							<div class="fenggexian1">
								<aside class="th_td">
									<span class="fr"> <a class="bRed" href=""
										onclick="deletecollect2()">删 除</a> <a class="bYellow"
										href="${pageContext.request.contextPath }/Home/index.jsp">再去选几组</a>
									</span>
									<h3 style="text-align: left">已收藏的房源</h3>
								</aside>
								<ul class="carditems" style="padding: 0">
									<form method="post" class="J_ajaxForm" action="#">
										<div class="inner carditems lists lists1">
											<%
												for (int i = 0; i < mc.size(); i++) {
													if (mc.get(i).getType() == 2) {
											%>
											<div class="ui-form">
												<ul class="ui-list ui-list-text">
													<li class="ui-border-t"><a class="item"
														href="${pageContext.request.contextPath}/House/housedetail.do?id=<%=mc.get(i).getId()%>">
															<label class="ui-checkbox ui-checkbox-s"
															style="position: relative; top: 30px;"> <input
																type="checkbox" name="house2" value="<%=mc.get(i).getId()%>"
																style="float: left;" /></label>
															<div class="carditems_dt">
																<img
																	src="${pageContext.request.contextPath}<%=mc.get(i).getPicurl()%>">
															</div>
															<div class="carditems_dd">
																<h3>
																	<span class="h3"><%=mc.get(i).getTitle()%></span> <span
																		class="ad_deposit"><em style="<%=mc.get(i).getTrusstyle()%>">托管</em></span>
																</h3>
																<h4>
																	<span class="h4" style="font-size: 12px"><%=mc.get(i).getRentaparttype()%>
																		|&nbsp;<%=mc.get(i).getArea()%>m² </span> <span
																		class="ad_price" style="font-size: 16px"><%=mc.get(i).getPrice()%>&nbsp;元/月</span>
																</h4>
																<p>
																	<!--<span class="rbox6 bGreen" style="font-size: 12px">随时住</span>-->
																	<!--<span class="rbox6 bYellow" style="font-size: 12px;margin-left: 15px">赠送搬家</span>-->
																	<span class="ad_collect">已<%=mc.get(i).getColnum()%>人收藏
																	</span>
																</p>
															</div>
													</a></li>
												</ul>
											</div>
											<%
												}
												}
											%>
										</div>
									</form>
								</ul>
								<div class="blank1"></div>

								<jsp:include page="/Home/include/collecttj2.jsp" />

								<div class="foot_button">
									<input name="button" type="submit" id="btn_ok"
										class="bl_button" value="提交约看">
								</div>
								<div class="visible"></div>
							</div>
						</div>
					</section>
					<section id="section-circle-fill-3 page-widget">
						<div class="fenggexian1">
							<div class="blank1"></div>
							<div class="fenggexian1">
								<aside class="th_td">
									<span class="fr"> <a class="bRed" href=""
										onclick="deletecollect3()">删 除</a> <a class="bYellow"
										href="${pageContext.request.contextPath }/Home/index.jsp">再去选几组</a>
									</span>
									<h3 style="text-align: left">已收藏的房源</h3>
								</aside>
								<ul class="carditems" style="padding: 0">
									<form method="post" class="J_ajaxForm" action="#">
										<div class="inner carditems lists lists1">
											<%
												for (int i = 0; i < mc.size(); i++) {
													if (mc.get(i).getType() == 3) {
											%>
											<div class="ui-form">
												<ul class="ui-list ui-list-text">
													<li class="ui-border-t"><a class="item"
														href="${pageContext.request.contextPath}/House/housedetail.do?id=<%=mc.get(i).getId()%>">
															<label class="ui-checkbox ui-checkbox-s"
															style="position: relative; top: 30px;"> <input
																type="checkbox" name="house3" value="<%=mc.get(i).getId()%>"
																style="float: left;" /></label>
															<div class="carditems_dt">
																<img
																	src="${pageContext.request.contextPath}<%=mc.get(i).getPicurl()%>">
															</div>
															<div class="carditems_dd">
																<h3>
																	<span class="h3"><%=mc.get(i).getTitle()%></span> <span
																		class="ad_deposit"><em style="<%=mc.get(i).getTrusstyle()%>">托管</em></span>
																</h3>
																<h4>
																	<span class="h4" style="font-size: 12px"><%=mc.get(i).getRentaparttype()%>
																		|&nbsp;<%=mc.get(i).getArea()%>m² </span> <span
																		class="ad_price" style="font-size: 16px"><%=mc.get(i).getPrice()%>&nbsp;元/月</span>
																</h4>
																<p>
																	<!--<span class="rbox6 bGreen" style="font-size: 12px">随时住</span>-->
																	<!--<span class="rbox6 bYellow" style="font-size: 12px;margin-left: 15px">赠送搬家</span>-->
																	<span class="ad_collect">已<%=mc.get(i).getColnum()%>人收藏
																	</span>
																</p>
															</div>
													</a></li>


												</ul>
											</div>
											<%
												}
												}
											%>
										</div>
									</form>
								</ul>
								<div class="blank1"></div>

								<jsp:include page="/Home/include/collecttj3.jsp" />


								<div class="foot_button">
									<input name="button" type="submit" id="btn_ok"
										class="bl_button" value="提交约看">
								</div>
								<div class="visible"></div>
							</div>
						</div>
					</section>
				</div>
				<!-- /content -->
			</div>
			<!-- /tabs -->
		</section>
	</form>

	<div class="visible"></div>
	<input type="hidden" id="get_p" value="2">

	<script src="${pageContext.request.contextPath}/Style/js/cbpFWTabs.js"></script>
	<script src="${pageContext.request.contextPath}/Manage/js/commom.js"></script>


	<script>
		(function() {
			[].slice.call(document.querySelectorAll('.tabs')).forEach(
					function(el) {
						new CBPFWTabs(el);
					});

		})();
	</script>
	<script type="text/javascript">
		function deletecollect1() {
			var str = "";
			$("input[name='house1']:checked").each(function() {
				str = $(this).val() + "/" + str;
			})
			if (str == "") {
				alert("请选择！");
				return false;
			}
			$.post(getRootPath() + "/Collect/deleteCollect.do", {
				str : str
			}, function(data) {
				window.location.href = getRootPath()
						+ "/Collect/lookCollect.do"
			});
		}
		function deletecollect2() {
			var str = "";
			$("input[name='house2']:checked").each(function() {
				str += $(this).val() + "/";
			})
			if (str == "") {
				alert("请选择！");
				return false;
			}
			$.post(getRootPath() + "/Collect/deleteCollect.do", {
				str : str
			}, function(data) {
				window.location.href = getRootPath()
						+ "/Collect/lookCollect.do"
			});
		}
		function deletecollect3() {
			var str = "";
			$("input[name='house3']:checked").each(function() {
				str += $(this).val() + "/";
			})
			if (str == "") {
				alert("请选择！");
				return false;
			}
			$.post(getRootPath() + "/Collect/deleteCollect.do", {
				str : str
			}, function(data) {
				window.location.href = getRootPath()
						+ "/Collect/lookCollect.do"
			});
		}
	</script>

</body>
</html>
