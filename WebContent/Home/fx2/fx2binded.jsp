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
<title>快租房管家绑定</title>
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
	List<RentHouse> rrlist = (List<RentHouse>) session.getAttribute("rrlist");
	Fx2 fx2 = (Fx2) session.getAttribute("fx2");
%>
<body>
	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/top2.jsp" />


	<div class="user_top_card">
		<div class="user_card" style="padding: 15px 0;">
			<a href="${pageContext.request.contextPath}/Fx2/Login.do"> <img
				src="${pageContext.request.contextPath}<%=fx2.getPic() %>"
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
	<div class="content-wrap">

		<%
			for (int i = 0; i < rrlist.size(); i++) {
		%>
		<a class="item"
			href="${pageContext.request.contextPath}/House/housedetail.do?id=<%=rrlist.get(i).getId()%>">
			<div class="carditems_dt">
				<img
					src="${pageContext.request.contextPath}<%=rrlist.get(i).getPicurl()%>">
			</div>
			<div class="carditems_dd">

				<h3>

					<span class="h3"><%=rrlist.get(i).getTitle()%></span>
		</a> <span style="position: relative:-10px; float: right;">
			<div value=<%=rrlist.get(i).getId()%> class="jc_bind"
				style="font-style: normal; border: 1px solid #ECC8C6; background-color: #FCF3F0; color: #CC0000; font-size: 0.5em; padding: 1px 2px;">解除绑定</div>
		</span> <a class="item"
			href="${pageContext.request.contextPath}/House/housedetail.do?id=<%=rrlist.get(i).getId()%>">

			<span class="ad_deposit"><em
				style="<%=rrlist.get(i).getTrusstyle()%>">托管</em> </span>

			</h3>

			<h4>
				<span class="h4 new_price"> <%=rrlist.get(i).getRentaparttype()%>
					|&nbsp;<%=rrlist.get(i).getArea()%>m²<%-- &nbsp;|<%=rrlist.get(i).getFloor()%>层 --%>
				</span> <span class="ad_price" style=""><%=rrlist.get(i).getPrice()%>元/月</span>
			</h4>
			<p>
				<span class="h4 new_price"> <%=rrlist.get(i).getAddress()%>
				</span> <span class="ad_collect">已有 <%=rrlist.get(i).getColnum()%>人收藏
				</span>
			</p>
			<p>
				<span class="rbox6 bGreen" style="font-size: 12px"> <%=rrlist.get(i).getChicktime()%>入住
				</span>
			</p>
	</div>
	</a>
	<%
		}
	%>
	</div>

	<!-- 微信拉取的数据提交 -->


	<!-- 引入全局底部文件 -->
	<jsp:include page="/Home/include/afbottom.jsp" />

	<div class="visible"></div>
	<input type="hidden" id="get_p" value="2">

</body>
<script src="${pageContext.request.contextPath}/Manage/js/commom.js"></script>

<script src="${pageContext.request.contextPath}/Style/ajax/jcbind.js"></script>

</html>
