<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.zhanwkj.fx2.model.*,com.zhanwkj.fx2.constant.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"
	charset="UTF-8" />
<title>快租平台首页</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/frozen.css" />
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
<!--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/css/tabstyles.css" />-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/index.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Style/css/font-awesome.min.css">
<script
	src="${pageContext.request.contextPath}/Style/js/modernizr.custom.js"></script>
<script
	src="${pageContext.request.contextPath }/Style/zepto/zepto.min.js"></script>
<script
	src="${pageContext.request.contextPath }/Style/zepto/dropload.min.js"></script>

</head>
<%
	Fans user = (Fans) session.getAttribute("user");
	List<RentHouse> mc = (List<RentHouse>) session.getAttribute("myhouse1");
	List<RentHouse> zz = (List<RentHouse>) session.getAttribute("zzhouse1");
	List<RentHouse> bg = (List<RentHouse>) session.getAttribute("bghouse1");
	List<RentHouse> sp = (List<RentHouse>) session.getAttribute("sphouse1");
%>
<body>
	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/top.jsp" />

	<section>
		<div class="tabs tabs-style-circlefill">

			<jsp:include page="/Home/include/toptype.jsp" />


			<!-- 筛选条件 -->
			<div class="content-wrap">
				<!-- 住宅类房源列表 -->
				<section id="section-circlefill-1 page-widget">
					<div class="fenggexian1">
						<aside class="th_td">
							<span class="fr"> <a class="bRed" href="#"
								onclick="xiajia1()">下 架</a>&nbsp;&nbsp;&nbsp;<a class="bYellow" href="#"
								onclick="shangjia1()">上 架</a>&nbsp;&nbsp;&nbsp;<a class="bGreen"
								href="${pageContext.request.contextPath }/Home/index.jsp">新增一套</a>
							</span>
							<h3 style="text-align: left">
								已发布的房源 （<%=zz.size()%>）
							</h3>
						</aside>
						<div class="b_float"></div>
						<div class="blank1"></div>
						<div class="inner carditems lists lists1">
							<%
								for (int i = 0; i < zz.size(); i++) {
							%>
							<div class="ui-form">
							<ul class="ui-list ui-list-text">
							<li class="ui-border-t">
							<a class="item"
								href="${pageContext.request.contextPath}/House/housedetail.do?id=<%=zz.get(i).getId()%>">
								<label class="ui-checkbox ui-checkbox-s"
								style="position: relative; top: 30px;"> <input
									type="checkbox" name="house1" value="<%=zz.get(i).getId()%>"
									style="float: left;" /></label>
								<div class="carditems_dt">
									<img
										src="${pageContext.request.contextPath}<%=zz.get(i).getPicurl()%>">
								</div>
								<div class="carditems_dd">
									<h3>
										<span class="h3"><%=zz.get(i).getTitle()%></span> <span
											class="ad_deposit"> <%
 	if (zz.get(i).getStatus() == 1) {
 %> <span class="bYellow">上架</span> <%
 	} else {
 %> <span class="bRed">下架</span><%
 	}
 %>

										</span>
									</h3>
									<h4>
										<span class="h4 new_price"> <%=zz.get(i).getRentaparttype()%>
											|&nbsp;<%=zz.get(i).getArea()%>m²<%-- &nbsp;|<%=zzHouse.get(i).getFloor()%>层 --%>
										</span> <span class="ad_price" style=""><%=zz.get(i).getPrice()%>元/月</span>
									</h4>
									<p>
										<span class="h4 new_price"> <%=zz.get(i).getAddress()%>
										</span> <span class="ad_collect">已有 <%=zz.get(i).getColnum()%>人收藏
										</span>
									</p>
									<p>
										<span class="rbox6 bGreen" style="font-size: 12px"> 
										<%
											String t = zz.get(i).getChicktime();
											String str="";
										if(t.equals("1"))
											 str ="随时入住";
										else
											str= t;
										%>
										 <%=str %>
										</span>
									</p>
								</div>
							</a>
							</li>
							</ul>
							</div>
							<%
								}
							%>
						</div>
						<div class="blank1"></div>
						<div class="page-tj">
							<aside class="th_td">
								<h3 style="text-align: left">发布房源小提示</h3>
							</aside>
							<ul class="dopeitems" style="padding: 0 15px">
								<li style="padding: 10px">
									<h4>怎样添加【随时住】绿标？</h4>
									<p style="color: #4a4a4b; text-align: left">随时住绿标是您发布房源时选择的入住时间生成的，房管家的快租平台定义您的出租房空房随时可入住，如您的出租房为正在出租，则可根据合同终止日填写入住时间，提前将您的出租房放置平台，避免短租；</p>
								</li>
								<li style="padding: 10px">
									<h4>托管的标志是啥意思，怎样点亮？</h4>
									<p style="color: #4a4a4b; text-align: left">快租房管家提供托管服务，即帮助房东管理钥匙，自助安排看房，租期临近将房屋出租信息自动上架、并在各大信息平台广播，最大限度保证您的出租房快租不断租。</p>
								</li>
							</ul>
						</div>
					</div>
				</section>


				<!-- 办公类房源列表 -->

				<section id="section-circlefill-2 page-widget">
					<div class="fenggexian1">
						<aside class="th_td">
							<span class="fr"> <a class="bRed" href="#"
								onclick="xiajia2()">下 架</a>&nbsp;&nbsp;&nbsp;<a class="bYellow" href="#"
								onclick="shangjia2()">上 架</a>&nbsp;&nbsp;&nbsp;<a class="bGreen"
								href="${pageContext.request.contextPath }/Home/index.jsp">新增一套</a>
							</span>
							<h3 style="text-align: left">
								已发布的房源 （<%=bg.size()%>）
							</h3>
						</aside>
						<div class="b_float"></div>
						<div class="blank1"></div>
						<div class="inner carditems lists lists1">
							<%
								for (int i = 0; i < bg.size(); i++) {
							%>
							<div class="ui-form">
							<ul class="ui-list ui-list-text">
							<li class="ui-border-t">
							<a class="item"
								href="${pageContext.request.contextPath}/House/housedetail.do?id=<%=bg.get(i).getId()%>">
								<label class="ui-checkbox ui-checkbox-s"
								style="position: relative; top: 30px;"> <input
									type="checkbox" name="house2" value="<%=bg.get(i).getId()%>"
									style="float: left;" /></label>
								<div class="carditems_dt">
									<img
										src="${pageContext.request.contextPath}<%=bg.get(i).getPicurl()%>">
								</div>
								<div class="carditems_dd">
									<h3>
										<span class="h3"><%=bg.get(i).getTitle()%></span> <span
											class="ad_deposit"> <%
 	if (bg.get(i).getStatus() == 1) {
 %> <span class="bYellow">上架</span><%
 	} else {
 %> <span class="bRed">下架</span> <%
 	}
 %>

										</span>
									</h3>
									<h4>
										<span class="h4 new_price"> <%=bg.get(i).getRentaparttype()%>
											|&nbsp;<%=bg.get(i).getArea()%>m²<%-- &nbsp;|<%=zzHouse.get(i).getFloor()%>层 --%>
										</span> <span class="ad_price" style=""><%=bg.get(i).getPrice()%>元/月</span>
									</h4>
									<p>
										<span class="h4 new_price"> <%=bg.get(i).getAddress()%>
										</span> <span class="ad_collect">已有 <%=bg.get(i).getColnum()%>人收藏
										</span>
									</p>
									<p>
										<span class="rbox6 bGreen" style="font-size: 12px"> 	<%
											String t = zz.get(i).getChicktime();
											String str="";
										if(t.equals("1"))
											 str ="随时入住";
										else
											str= t;
										%>
										 <%=str %>
										</span>
									</p>
								</div>
							</a>
							</li>
							</ul>
							</div>
							<%
								}
							%>
						</div>
						<div class="blank1"></div>
						<div class="page-tj">
							<aside class="th_td">
								<h3 style="text-align: left">发布房源小提示</h3>
							</aside>
							<ul class="dopeitems" style="padding: 0 15px">
								<li style="padding: 10px">
									<h4>怎样添加【随时住】绿标？</h4>
									<p style="color: #4a4a4b; text-align: left">随时住绿标是您发布房源时选择的入住时间生成的，快租房管家的快租平台定义您的出租房空房随时可入住，如您的出租房为正在出租，则可根据合同终止日填写入住时间，提前将您的出租房放置平台，避免短租；</p>
								</li>
								<li style="padding: 10px">
									<h4>托管的标志是啥意思，怎样点亮？</h4>
									<p style="color: #4a4a4b; text-align: left">快租房管家提供托管服务，即帮助房东管理钥匙，自助安排看房，租期临近将房屋出租信息自动上架、并在各大信息平台广播，最大限度保证您的出租房快租不断租。</p>
								</li>
							</ul>
						</div>
					</div>
				</section>


				<!-- 商铺类房源列表 -->

				<section id="section-circlefill-3 page-widget">
					<div class="fenggexian1">
						<aside class="th_td">
							<span class="fr"> <a class="bRed" href="#"
								onclick="xiajia3()">下 架</a>&nbsp;&nbsp;&nbsp;<a class="bYellow" href="#"
								onclick="shangjia3()">上 架</a>&nbsp;&nbsp;&nbsp;<a class="bGreen"
								href="${pageContext.request.contextPath }/Home/index.jsp">新增一套</a>
							</span>
							<h3 style="text-align: left">
								已发布的房源 （<%=sp.size()%>）
							</h3>
						</aside>
						<div class="b_float"></div>
						<div class="blank1"></div>
						<div class="inner carditems lists lists1">

							<%
								for (int i = 0; i < sp.size(); i++) {
							%>
							<div class="ui-form">
							<ul class="ui-list ui-list-text">
							<li class="ui-border-t">
							<a class="item"
								href="${pageContext.request.contextPath}/House/housedetail.do?id=<%=sp.get(i).getId()%>">
								<label class="ui-checkbox ui-checkbox-s"
								style="position: relative; top: 30px;"> <input
									type="checkbox" name="house3" value="<%=sp.get(i).getId()%>"
									style="float: left;" /></label>
							<div class="carditems_dt">
									<img
										src="${pageContext.request.contextPath}<%=sp.get(i).getPicurl()%>">
								</div>
								<div class="carditems_dd">
									<h3>
										<span class="h3"><%=sp.get(i).getTitle()%></span> <span
											class="ad_deposit"> <%
 	if (sp.get(i).getStatus() == 1) {
 %> <span class="bYellow">上架</span> <%
 	} else {
 %> <span class="bRed">下架</span> <%
 	}
 %>

										</span>
									</h3>
									<h4>
										<span class="h4 new_price"> <%=sp.get(i).getRentaparttype()%>
											|&nbsp;<%=sp.get(i).getArea()%>m²<%-- &nbsp;|<%=zzHouse.get(i).getFloor()%>层 --%>
										</span> <span class="ad_price" style=""><%=sp.get(i).getPrice()%>元/月</span>
									</h4>
									<p>
										<span class="h4 new_price"> <%=sp.get(i).getAddress()%>
										</span> <span class="ad_collect">已有 <%=sp.get(i).getColnum()%>人收藏
										</span>
									</p>
									<p>
										<span class="rbox6 bGreen" style="font-size: 12px"> 	<%
											String t = zz.get(i).getChicktime();
											String str="";
										if(t.equals("1"))
											 str ="随时入住";
										else
											str= t;
										%>
										 <%=str %>
										</span>
									</p>
								</div>
							</a>
							</li>
							</ul>
							</div>
							<%
								}
							%>
						</div>
						<div class="blank1"></div>
						<div class="page-tj">
							<aside class="th_td">
								<h3 style="text-align: left">发布房源小提示</h3>
							</aside>
							<ul class="dopeitems" style="padding: 0 15px">
								<li style="padding: 10px">
									<h4>怎样添加【随时住】绿标？</h4>
									<p style="color: #4a4a4b; text-align: left">随时住绿标是您发布房源时选择的入住时间生成的，快租房管家的快租平台定义您的出租房空房随时可入住，如您的出租房为正在出租，则可根据合同终止日填写入住时间，提前将您的出租房放置平台，避免短租；</p>
								</li>
								<li style="padding: 10px">
									<h4>托管的标志是啥意思，怎样点亮？</h4>
									<p style="color: #4a4a4b; text-align: left">快租房管家提供托管服务，即帮助房东管理钥匙，自助安排看房，租期临近将房屋出租信息自动上架、并在各大信息平台广播，最大限度保证您的出租房快租不断租。</p>
								</li>
							</ul>
						</div>
					</div>
				</section>
			</div>
			<!-- /content -->
		</div>
		<!-- /tabs -->
	</section>

	<!-- 微信拉取的数据提交 -->


	<!-- 引入全局底部文件 -->
	<jsp:include page="/Home/include/bottom.jsp" />

	<div class="visible"></div>
	<input type="hidden" id="get_p" value="2">

	<script src="${pageContext.request.contextPath}/Style/js/cbpFWTabs.js"></script>
	<script>
		(function() {
			[].slice.call(document.querySelectorAll('.tabs')).forEach(
					function(el) {
						new CBPFWTabs(el);
					});
		})();
	</script>
	<script src="${pageContext.request.contextPath}/Manage/js/commom.js"></script>

	<script type="text/javascript">
		function shangjia1() {
			var str = "";
			$("input[name='house1']:checked").each(function() {
				str = $(this).val() + "/" + str;
			})
			if (str == "") {
				alert("请选择！");
				return false;
			}
			$.post(getRootPath() + "/User/shangjia.do", {
				str : str
			}, function(data) {
				window.location.href = getRootPath() + "/User/myhouse.do"
			});
		}

		function xiajia1() {
			var str = "";
			$("input[name='house1']:checked").each(function() {
				str = $(this).val() + "/" + str;
			})
			if (str == "") {
				alert("请选择！");
				return false;
			}
			$.post(getRootPath() + "/User/xiajia.do", {
				str : str
			}, function(data) {
				window.location.href = getRootPath() + "/User/myhouse.do"
			});
		}
		function shangjia2() {
			var str = "";
			$("input[name='house2']:checked").each(function() {
				str = $(this).val() + "/" + str;
			})
			if (str == "") {
				alert("请选择！");
				return false;
			}
			$.post(getRootPath() + "/User/shangjia.do", {
				str : str
			}, function(data) {
				window.location.href = getRootPath() + "/User/myhouse.do"
			});
		}

		function xiajia2() {
			var str = "";
			$("input[name='house2']:checked").each(function() {
				str = $(this).val() + "/" + str;
			})
			if (str == "") {
				alert("请选择！");
				return false;
			}
			$.post(getRootPath() + "/User/xiajia.do", {
				str : str
			}, function(data) {
				window.location.href = getRootPath() + "/User/myhouse.do"
			});
		}
		function shangjia3() {
			var str = "";
			$("input[name='house3']:checked").each(function() {
				str = $(this).val() + "/" + str;
			})
			if (str == "") {
				alert("请选择！");
				return false;
			}
			$.post(getRootPath() + "/User/shangjia.do", {
				str : str
			}, function(data) {
				window.location.href = getRootPath() + "/User/myhouse.do"
			});
		}

		function xiajia3() {
			var str = "";
			$("input[name='house3']:checked").each(function() {
				str = $(this).val() + "/" + str;
			})
			if (str == "") {
				alert("请选择！");
				return false;
			}
			$.post(getRootPath() + "/User/xiajia.do", {
				str : str
			}, function(data) {
				window.location.href = getRootPath() + "/User/myhouse.do"
			});
		}
	</script>

</body>

</html>
