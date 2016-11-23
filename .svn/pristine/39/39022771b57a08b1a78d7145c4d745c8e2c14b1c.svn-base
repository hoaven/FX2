<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.zhanwkj.fx2.model.*,com.zhanwkj.fx2.constant.*,java.util.*"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>约看清单提交</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/frozen.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/fxe.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/page.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Style/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/Style/jweixin-1.0.0.js"></script>
</head>
<%
	Fx2 fx2 = new Fx2();
	fx2 = (Fx2) session.getAttribute("FX");
	int hnum = (Integer)session.getAttribute("hnum");
%>
<body>

	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/top.jsp" />

	<section class="page-dope">
		<div class="summary_examine">
			<span class="hIcon ico_success"></span>
			<h2>
				约看清单提交完成，系统正在规划<br>稍后我们的蜂小二会与您联系
			</h2>
		</div>
	</section>

	<section class="user_main_card">
		<a href="${pageContext.request.contextPath}/User/intoscore.do?hid=<%=fx2.getId()%>">
			<div class="user_card" style="padding-bottom: 5px;">
				<img src="${pageContext.request.contextPath}/Style/img/3.jpg"
					class="infor-img border-img rbox" />
				<h4>
					蜂小二：<%=fx2.getName()%></h4>
				<span>服务评星</span>
			</div>
		</a>
		<div class="fxe_star_card">
			<%
				//计算星星数值
				Float score = Float.valueOf(fx2.getScore());
				Float star = score * 20;
			%>
			<span class="fxe_star"><i class="star"
				style="width: <%=star%>%;"></i></span> <span class="fxe_star_text"><%=score%></span>
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
				<li><a href=""><span class="hIcon icon_dh"></span></a></li>
			</ul>
		</div> 
		<div style="padding: 25px 35px">
			<div class="ui-form">
			<form action="${pageContext.request.contextPath }/WxPay/getInfo.do" method="POST">
				<ul class="ui-list ui-list-text">
					<li class="ui-border-t"><label
						class="ui-checkbox ui-checkbox-s"> <input type="radio"
							name="radio" value="99" />
							<h3 class="zhifu_radio_big" style="color: #4b4a4a">99元带看服务费用</h3>
							<h4 class="zhifu_radio_little" style="font-weight: 200">提供7天优惠带看，推荐房源服务，并协助完成议价签约</h4>
					</label></li>
					<li class="ui-border-t"><label
						class="ui-checkbox ui-checkbox-s"> <input type="radio"
							name="radio" value="150" />
							<h3 class="zhifu_radio_big" style="color: #4b4a4a">签署支付15天佣金</h3>
							<h4 class="zhifu_radio_little" style="font-weight: 200">免费提供带看，推荐房源服务，成功签约后支付15天佣金</h4>
					</label></li>
					<div>
						<input name="button" type="submit" id="button" class="sh_button"
							value="确认支付">
					</div>
				</ul>
				</form>
			</div>
		</div>
	</section>

	<!-- 引入全局底部文件 -->
	<jsp:include page="/Home/include/bottom.jsp" />

	<div class="visible"></div>

</body>
</html>
