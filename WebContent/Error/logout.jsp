<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.zhanwkj.fx2.model.*,com.zhanwkj.fx2.constant.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>蜂小二快租平台首页</title>
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
<script src="${pageContext.request.contextPath}/Style/js/zepto.js"></script>
<script
	src="${pageContext.request.contextPath}/Style/js/dropload.min.js"></script>
	
<script type="text/javascript">
function logouotTip(){
	if(confrim("对不起,您离线时间过长,已自动退出登录,是否重新登录？")){
		location.href="${pageContext.request.contextPath}/Indez/index.do";
	}else{
		window.close();
	}
}
</script>
</head>
<body onload="javascript:logoutTip();">
	<!-- 引入全局头部文件 -->
	<jsp:include  page="/Home/include/top.jsp"/>
	
	
	

	<!--底下的固定导航-->
	<nav class="bar_tab flexbox">
		<a class="active" href="${pageContext.request.contextPath }/Home/House/pubhouse.jsp"> <span class="fIcon icon_fbfy"></span>
			<h3>发布房源</h3>
		</a> <a href="${pageContext.request.contextPath }/Home/Look/seelist.jsp"> <span class="fIcon icon_yykf"></span>
			<h3>预约看房</h3>
		</a> <a href="${pageContext.request.contextPath }/Home/User/person.jsp"> <span class="fIcon icon_wd"></span>
			<h3>我的</h3>
		</a>
	</nav>

	<div class="visible"></div>
	<input type="hidden" id="get_p" value="2">

	<script src="${pageContext.request.contextPath}/Style/js/cbpFWTabs.js"></script>
	<script>
    (function() {
        [].slice.call( document.querySelectorAll( '.tabs' ) ).forEach( function( el ) {
            new CBPFWTabs( el );
        });
    })();
</script>

</body>

</html>
