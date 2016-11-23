<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.zhanwkj.fx2.model.*,com.zhanwkj.fx2.constant.*,java.util.*"%>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>我的支付历史</title>
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
	List<SeeHouse> see = (List<SeeHouse>) session.getAttribute("history");
%>
<%
	List<SeeHouse> seelist = (List<SeeHouse>) session.getAttribute("seelist");
%>
<%
	Fans user = (Fans) session.getAttribute("user");
%>
<%
	List<String> paysty = (List<String>) session.getAttribute("paysty");
%>
<body>
	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/top.jsp" />
	<div class="user_top_card">
		<div class="user_card">
			<a href="${pageContext.request.contextPath}/Home/user/register.jsp">
				<img src="<%=user.getHeadimgurl()%>" class="infor-img rbox" />
			</a>
			<h3>
				<%
					if (!user.getTruename().equals("") && user.getTruename() != null) {
				%>
				<%=user.getTruename()%>
				<%
					} else {
				%>
				<%=user.getNickname()%>
				<%
					}
					String sexx = null;
					switch (user.getSex()) {
						case 1 :
							sexx = "先生";
							break;
						case 2 :
							sexx = "女士";
							break;
						case 0 :
							sexx = " ";
							break;
						default :
							break;
					}
				%>
				<%=sexx%>
			</h3>
			<span>手机:<%=user.getMobile()%></span>
		</div>
		<div class="user_lable flexbox">
			<a href="#"><span class="fIcon icon_hb"></span>红 包</a> <a href="#"><span
				class="fIcon icon_yhq"></span>优惠券</a> <a href="#"><span
				class="fIcon icon_jf"></span>积 分</a> <a href="#" onclick="qiandao()"
				id="myDIV"><span class="fIcon icon_qd"></span>签 到</a>
		</div>
	</div>
	<%for (int i = 0; i < see.size(); i++) {%>
	<% if(see.get(i).getIspay()==1){ %>
	<a href="${pageContext.request.contextPath}/User/dhouse.do?id=<%=see.get(i).getRentid()%>">
		<div class="carditems_dd">
			<h4>
				<span>付账时间：<B><%=see.get(i).getYytime()%></B></span>
			</h4>
			<p>
				<span>支付类型：<B> <%if (see.get(i).getPaytype() == 1) {%> <span>99元带看服务费用</span>
						<%} else {%> <span>签署支付15天佣金</span> <%} %>
				</B>
				</span>
			</p>
			<h3></h3>
		</div>
	</a>
	<%
		}}
	%>

	</div>
	<!-- 引入全局底部文件 -->
	<jsp:include page="/Home/include/bottom.jsp" />

	<div class="visible"></div>
</body>
<script>
	function qiandao() {
		$.ajax({
			type : 'POST',
			url : '${pageContext.servletContext.contextPath}/User/qiandao.do',
			dataType : "text",

			success : function(data) {
				if (data == "true")
					alert("恭喜你成功签到");

				if (data == "false")
					alert("你已经签到成功");
			}
		});

	}
</script>
</html>