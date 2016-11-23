<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.zhanwkj.fx2.model.*,com.zhanwkj.fx2.constant.*,java.util.*"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <title>我的中心</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/css/fxe.css"/>
    <script type="text/javascript"
		src="${pageContext.request.contextPath}/Style/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/css/page.css" />
</head>
<%Fans user = (Fans) session.getAttribute("user"); %>
<body>

	<!-- 引入全局头部文件 -->
	<jsp:include  page="/Home/include/top.jsp"/>

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
        <a href="#"><span class="fIcon icon_hb"></span>红 包</a>
        <a href="#"><span class="fIcon icon_yhq"></span>优惠券</a>
        <a href="#"><span class="fIcon icon_jf"></span>积  分</a>
        <a href="#" onclick="qiandao()" id="myDIV"><span class="fIcon icon_qd"></span>签  到</a>
    </div>
</div>

<section class="user_main_card">
    <div class="user_nav border-box">
        <a href="${pageContext.request.contextPath }/Collect/lookCollect.do"><span class="fIcon icon_fysc"></span><h4>房源收藏</h4></a>
        <a href="${pageContext.request.contextPath }/Look/lookForm.do"><span class="fIcon icon_ykqd"></span><h4>约看清单</h4></a>
        <a href="${pageContext.request.contextPath }/User/myfx2.do"><span class="fIcon icon_wdfxe"></span><h4>我的客服</h4></a>
        <a href="${pageContext.request.contextPath }/User/myhistoryMsg.do"><span class="fIcon icon_wdzf"></span><h4>我的支付</h4></a>
        <a href="#"><span class="fIcon icon_wdfw"></span><h4>我的服务</h4></a>
        <a href="${pageContext.request.contextPath }/User/myhouse.do"><span class="fIcon icon_wsfd"></span><h4>我是房东</h4></a>
    </div>
</section>


<jsp:include  page="/Home/include/daytj.jsp"/>

<!-- 引入全局底部文件 -->
	<jsp:include  page="/Home/include/bottom.jsp"/>

	<div class="visible"></div>
	<input type="hidden" id="get_p" value="2">

	<script src="${pageContext.request.contextPath}/Style/js/cbpFWTabs.js"></script>

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
    	    		alert("你已经签到成功");
    	     }
    	     });
    	
    }
</script>
</html>
