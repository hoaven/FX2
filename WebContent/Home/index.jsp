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
<title>快租房平台首页</title>
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
	List<RentHouse> zzHouse = (List<RentHouse>) session.getAttribute("zzHouse");
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
						<div class="cardTab">
							<ul class="cardTab_title flexbox">
								<li id="sub01"><a><i><span style="font-size: 14px">价格</span></i></a></li>
								<li id="sub02"><a><i><span style="font-size: 14px">户型</span></i></a></li>
								<li id="sub03"><a><i><span style="font-size: 14px">区域</span></i></a></li>
							</ul>
							<div class="cont cont_sub01 cont1" style="display: none;">
								<ul class="Zmenu">
									<li><a href="#" data-id="sub01" data-key='0,500'>500元以下</a></li>
									<li><a href="#" data-id="sub01" data-key='500,800'>500元-800元</a></li>
									<li><a href="#" data-id="sub01" data-key='800,1200'>800元-1200元</a></li>
									<li><a href="#" data-id="sub01" data-key='1200,1600'>1200元-1600元</a></li>
									<li><a href="#" data-id="sub01" data-key='1600,8000'>1600以上</a></li>
								</ul>
							</div>
							<div class="cont cont_sub02 cont1" style="display: none;">
								<ul class="Zmenu">
									<li><a href="#" data-id="sub06" data-key='一室'>一室</a></li>
									<li><a href="#" data-id="sub06" data-key='一室一厅'>一室一厅</a></li>
									<li><a href="#" data-id="sub06" data-key='一室两厅'>一室两厅</a></li>
									<li><a href="#" data-id="sub06" data-key='一室一厅一卫'>一室一厅一卫</a></li>
									<li><a href="#" data-id="sub06" data-key='两室一厅一卫'>两室一厅一卫</a></li>
									<li><a href="#" data-id="sub06" data-key='两室两厅两卫'>两室两厅两卫</a></li>
									<li><a href="#" data-id="sub06" data-key='三室一厅一卫'>三室一厅一卫</a></li>
									<li><a href="#" data-id="sub06" data-key='三室两厅两卫'>三室两厅两卫</a></li>
									<li><a href="#" data-id="sub06" data-key='五室以上'>五室以上</a></li>
								</ul>
							</div>
							<div class="cont cont_sub03 cont1" style="display: none;">
								<ul class="Zmenu">
									<li><a href="#" data-id="sub03" data-key='黄石港'>黄石港区</a></li>
									<li><a href="#" data-id="sub03" data-key='西塞山'>西塞山区</a></li>
									<li><a href="#" data-id="sub03" data-key='开发区'>开发区</a></li>
									<li><a href="#" data-id="sub03" data-key='西塞山'>西塞山区</a></li>
									<li><a href="#" data-id="sub03" data-key='下陆'>下陆区</a></li>
									<li><a href="#" data-id="sub03" data-key='大冶'>大冶城区</a></li>
								</ul>
							</div>
						</div>
						<!-- 页码 -->
						<input type="hidden" name="zzpage" class="zzpage" id="zzpage"
							value="1" />
						<div class="b_float"></div>
						<div class="blank1"></div>
						<div class="inner carditems lists lists1">

							<%
								for (int i = 0; i < zzHouse.size(); i++) {
							%>
							<a class="item"
								href="${pageContext.request.contextPath}/House/housedetail.do?id=<%=zzHouse.get(i).getId()%>">
								<div class="carditems_dt">
									<img
										src="${pageContext.request.contextPath}<%=zzHouse.get(i).getPicurl()%>">
								</div>
								<div class="carditems_dd">
									<h3>
										<span class="h3"><%=zzHouse.get(i).getTitle()%></span> <span
											class="ad_deposit"><em style="<%=zzHouse.get(i).getTrusstyle()%>">托管</em>
										</span>
									</h3>
									<h4>
										<span class="h4 new_price"> <%=zzHouse.get(i).getRentaparttype()%>
											|&nbsp;<%=zzHouse.get(i).getArea()%>m²<%-- &nbsp;|<%=zzHouse.get(i).getFloor()%>层 --%>
										</span> <span class="ad_price" style=""><%=zzHouse.get(i).getPrice()%>元/月</span>
									</h4>
									<p>
										<span class="h4 new_price"> <%=zzHouse.get(i).getAddress()%>
										</span> <span class="ad_collect">已有 <%=zzHouse.get(i).getColnum()%>人收藏
										</span>
									</p>
									<p>
										<span class="rbox6 bGreen" style="font-size: 12px"> <%=zzHouse.get(i).getChicktime()%>入住
										</span>
									</p>
								</div>
							</a>
							<%
								}
							%>
						</div>
					</div>
				</section>

				<!-- 办公类房源列表 -->

				<section id="section-circlefill-2 page-widget">
					<div class="fenggexian1">
						<div class="cardTab">
							<ul class="cardTab_title flexbox">
								<li id="sub05"><a><i><span style="font-size: 14px">价格</span></i></a></li>
								<li id="sub06"><a><i><span style="font-size: 14px">面积</span></i></a></li>
								<li id="sub07"><a><i><span style="font-size: 14px">区域</span></i></a></li>
							</ul>
							<div class="cont cont_sub05 cont2" style="display: none;">
								<ul class="Zmenu">
									<li><a href="#" data-id="sub05" id="1" data-key='0,500'>500元以下</a></li>
									<li><a href="#" data-id="sub05" data-key='500,800'>500元-800元</a></li>
									<li><a href="#" data-id="sub05" data-key='800,1200'>800元-1200元</a></li>
									<li><a href="#" data-id="sub05" data-key='1200,1600'>1200元-1600元</a></li>
									<li><a href="#" data-id="sub05" data-key='1600,8000'>1600以上</a></li>
								</ul>
							</div>
							<div class="cont cont_sub06 cont2" style="display: none;">
								<ul class="Zmenu">
									<li><a href="#" data-id="sub02" data-key='0,50'>50m²以下</a></li>
									<li><a href="#" data-id="sub02" data-key='50,100'>50m²-100m²</a></li>
									<li><a href="#" data-id="sub02" data-key='100,150'>100m²-150m²</a></li>
									<li><a href="#" data-id="sub02" data-key='150,200'>150m²-200m²</a></li>
									<li><a href="#" data-id="sub02" data-key='200,1000'>200m²以上</a></li>
								</ul>
							</div>
							<div class="cont cont_sub07 cont2" style="display: none;">
								<ul class="Zmenu">
									<li><a href="#" data-id="sub07" data-key='黄石港'>黄石港区</a></li>
									</li>
									<li><a href="#" data-id="sub07" data-key='西塞山'>西塞山区</a></li>
									<li><a href="#" data-id="sub07" data-key='开发区'>开发区</a></li>
									<li><a href="#" data-id="sub07" data-key='西塞山'>西塞山区</a></li>
									<li><a href="#" data-id="sub07" data-key='下陆'>下陆区</a></li>
									<li><a href="#" data-id="sub07" data-key='大冶'>大冶城区</a></li>
								</ul>
							</div>
						</div>
						<!-- 页码 -->
						<input type="hidden" name="bgpage" class="bgpage" id="bgpage"
							value="1" />
						<div class="b_float"></div>
						<div class="blank1"></div>
						<div class="inner carditems lists lists2">
							<!-- 此处在首次加载的时候不进行数据获取，稍后通过Ajax进行无刷新获取 -->
						</div>
					</div>
				</section>


				<!-- 商铺类房源列表 -->

				<section id="section-circlefill-3 page-widget">
					<div class="fenggexian1">
						<div class="cardTab">
							<ul class="cardTab_title flexbox">
								<li id="sub09"><a><i><span style="font-size: 14px">价格</span></i></a></li>
								<li id="sub010"><a><i><span style="font-size: 14px">面积</span></i></a></li>
								<li id="sub011"><a><i><span style="font-size: 14px">区域</span></i></a></li>
							</ul>
							<div class="cont cont_sub09 cont3" style="display: none;">
								<ul class="Zmenu">
									<li><a href="#" data-id="sub09" data-key='0,500'>500元以下</a></li>
									<li><a href="#" data-id="sub09" data-key='500,800'>500元-800元</a></li>
									<li><a href="#" data-id="sub09" data-key='800,1200'>800元-1200元</a></li>
									<li><a href="#" data-id="sub09" data-key='1200,1600'>1200元-1600元</a></li>
									<li><a href="#" data-id="sub09" data-key='1600,8000'>1600以上</a></li>
								</ul>
							</div>
							<div class="cont cont_sub010 cont3" style="display: none;">
								<ul class="Zmenu">
									<li><a href="#" data-id="sub02" data-key='0,50'>50m²以下</a></li>
									<li><a href="#" data-id="sub02" data-key='50,100'>50m²-100m²</a></li>
									<li><a href="#" data-id="sub02" data-key='100,150'>100m²-150m²</a></li>
									<li><a href="#" data-id="sub02" data-key='150,200'>150m²-200m²</a></li>
									<li><a href="#" data-id="sub02" data-key='200,1000'>200m²以上</a></li>
								</ul>
							</div>
							<div class="cont cont_sub011 cont3" style="display: none;">
								<ul class="Zmenu">
									<li><a href="#" data-id="sub011" data-key='黄石港'>黄石港区</a></li>
									<li><a href="#" data-id="sub011" data-key='西塞山'>西塞山区</a></li>
									<li><a href="#" data-id="sub011" data-key='开发区'>开发区</a></li>
									<li><a href="#" data-id="sub011" data-key='西塞山'>西塞山区</a></li>
									<li><a href="#" data-id="sub011" data-key='下陆'>下陆区</a></li>
									<li><a href="#" data-id="sub011" data-key='大冶'>大冶城区</a></li>
								</ul>
							</div>
						</div>
						<!-- 页码 -->
						<input type="hidden" name="sppage" class="sppage" id="sppage"
							value="1" />
						<div class="b_float"></div>
						<div class="blank1"></div>
						<div class="inner carditems lists lists3">
							<!-- 此处在首次加载的时候不进行数据获取，稍后通过Ajax进行无刷新获取 -->
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
	<%-- <script src="${pageContext.request.contextPath}/Style/ajax/wxapi.js"></script> --%>
	<script src="${pageContext.request.contextPath}/Style/ajax/index.js"></script>

</body>

</html>
