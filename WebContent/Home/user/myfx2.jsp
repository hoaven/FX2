<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.zhanwkj.fx2.model.*,com.zhanwkj.fx2.constant.*,java.util.*"%>

<!DOCTYPE HTML>
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>我的快租客服</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/fxe.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Style/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/page.css" />
</head>
<%
List<SeeHouse> see = (List<SeeHouse>)session.getAttribute("seehouse");
Fans user = (Fans) session.getAttribute("user");
List<Fx2> myfx2 = (List<Fx2>)session.getAttribute("myfx2");
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
							case 1:
								sexx = "先生";
								break;
							case 2:
								sexx = "女士";
								break;
							case 0:
								sexx = " ";
								break;
							default:
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

	<div class="inner carditems lists">
		<%-- <c:forEach items="zzHouse" var="zz"> --%>
		<%for(int i=0;i<see.size();i++){ %>
		<a>
		<div class="carditems_dt">
			<img src="${pageContext.request.contextPath}<%=myfx2.get(i).getPic()%>">
		</div>
		<div class="carditems_dd">
			<h3>
				<span class="h4 new_price"> <span class="h3"><%=myfx2.get(i).getName()%></span></span>
				<span style="float: right; color: #DC0000;"><%=myfx2.get(i).getSunum()%>次成交</span>

			</h3>
			<h4>
				<%-- <span>最近一次约看：<%=see.get(i).getSeetime() %></span> --%>
				<span class="ad_price" style="font-size: 16px"><%=myfx2.get(i).getSeenum()%>&nbsp;次带看</span>

			</h4>

			<p>
				<span class="rbox6 bGreen" style="font-size: 12px"> <%=myfx2.get(i).getAddress()%></span>
				<button class="ad_collect bRed" style="color: #fff;"
					onclick="dashang()">打赏</button>
				<button class="ad_collect bYellow"
					style="color: #fff; position: relative; left: -5px;"
					onclick="com(<%=myfx2.get(i).getId()%>)">我要评价</button>
			</p>
		</div>
</a>
		<%} %>
	</div>


	<!-- 引入全局底部文件 -->
	<jsp:include page="/Home/include/bottom.jsp" />

	<div class="visible"></div>
</body>
<script>
    function qiandao(){
    
    	$.ajax({
    	     type: 'POST',
    	     url: '${pageContext.servletContext.contextPath}/User/qiandao.do',
    	     dataType :"text",
    	   
    	    success: function(data){
    	    	if(data=="true")
    	    		alert("恭喜你成功签到");
    	    
    	     if(data=="false")
    	    		alert("你已经签到成功");}}	
    	);
    
    }
    
    function dashang(){
    	//location.href="${pageContext.request.contextPath}/WxPay/getInfo.do?radio=10";//默认打赏10元
    }
    function com(id){
    	location.href="${pageContext.request.contextPath}/User/intoscore.do?hid="+id;
    }
    
  
</script>
</html>
