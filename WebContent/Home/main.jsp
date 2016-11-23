<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>快租房平台首页</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/fxe.css" />
<script type="text/javascript">
	setTimeout(function() {
		window.location="${pageContext.request.contextPath }/Indez/index2.do";
	}, 1500);
</script>
</head>
<body>
	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/top.jsp" />
	<div style="margin-top: 100px;">
		<center>
			<img src="${pageContext.request.contextPath}/Style/img/load.gif"><br>
			<p>页面加载中......</p>
			<div id="remind" style="display: block; margin-top: 80px;">
				<center>
					(友情提醒：本平台适配移动端</br>在手机上体验更好哦！)
				</center>
			</div>
		</center>
	</div>
</body>
</html>