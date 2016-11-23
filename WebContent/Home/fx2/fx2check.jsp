<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.zhanwkj.fx2.model.*,com.zhanwkj.fx2.constant.*,java.util.*"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>审核大厅</title>
<link
	href="${pageContext.request.contextPath}/Style/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/fxe.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/page.css" />
<script
	src="${pageContext.request.contextPath}/Style/js/jquery-1.8.3.min.js"></script>
<script
	src="${pageContext.request.contextPath}/Style/js/bootstrap.min.js"></script>
</head>
<%
	Fx2 fx2 = (Fx2) session.getAttribute("fx2");
	List<RentHouse> house = (List<RentHouse>) session.getAttribute("WSHHouse");
%>
<body>
	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/top2.jsp" />

	<div class="user_top_card">
		<div class="user_card" style="padding: 15px 0;">
			<a href="${pageContext.request.contextPath}/Fx2/Login.do"> <img
				src="${pageContext.request.contextPath}<%=fx2.getPic()%>"
				class="infor-img border-img rbox" /></a>
			<h4>
				快租房管家：<%=fx2.getName()%></h4>
			<span>服务电话<br /><%=fx2.getPhone()%>
			</span>
		</div>
		<div class="oa_lable">
			<ul class="flexbox">
				<li><span>负责业务<br /><%=fx2.getBusiness()%>
				</span></li>
				<li><span>负责区域<br /><%=fx2.getAddress()%>
				</span></li>
				<li><span>带看次数<br /><%=fx2.getSeenum()%>
				</span></li>
				<li><span>成交数<br /><%=fx2.getSunum()%>
				</span></li>
				<li><span>系统评分<br /><%=fx2.getScore()%>
				</span></li>
			</ul>
		</div>
	</div>

	<%
		for (int i = 0; i < house.size(); i++) {
	%>
	<a class="item"
		href="${pageContext.request.contextPath}/House/housedetail.do?id=<%=house.get(i).getId()%>">
		<div class="carditems_dt">
			<img
				src="${pageContext.request.contextPath}<%=house.get(i).getPicurl()%>">
		</div>
		<div class="carditems_dd">
			<span class="h3"><%=house.get(i).getTitle()%></span>
			</h3>
			<h4>
				<span class="h4 new_price"> <%=house.get(i).getRentaparttype()%>
					|&nbsp;<%=house.get(i).getArea()%>m²<%-- &nbsp;|<%=house.get(i).getFloor()%>层 --%>
				</span> <a class="bRed" style="float: right;"
					href="${pageContext.request.contextPath}/Check/doCheck.do?houseid=<%=house.get(i).getId() %>">审核</a>
			</h4>
			<p>
				<span class="h4 new_price"> <%=house.get(i).getAddress()%>

				</span> <span class="ad_price" style=""><strong><%=house.get(i).getPrice()%>元/月</strong></span>
				</span>
			</p>
			<p>
				<span class="rbox6 bGreen" style="font-size: 12px"> <%=house.get(i).getChicktime()%>入住
				</span><span class="ad_collect">已有 <%=house.get(i).getColnum()%>人收藏
			</p>
		</div>
	</a>
	<%
		}
	%>
	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/afbottom.jsp" />
	<div class="visible"></div>
</body>
<script src="${pageContext.request.contextPath}/Manage/js/commom.js"></script>
<script src="${pageContext.request.contextPath}/Style/ajax/fx2check.js"></script>
</html>
