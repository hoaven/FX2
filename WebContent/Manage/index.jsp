<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>主页 - 蜂小二后台管理</title>

<!-- Bootstrap Core CSS -->
<link
	href="${pageContext.request.contextPath }/Style/Admin/bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link
	href="${pageContext.request.contextPath }/Style/Admin/bower_components/metisMenu/dist/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="${pageContext.request.contextPath }/Style/Admin/dist/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="${pageContext.request.contextPath }/Style/Admin/bower_components/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">




</head>
<body>
	<div id="wrapper">
		 <c:import url="/Manage/include/top.jsp" />
		 <c:import url="/Manage/include/other.jsp" />

		<!-- Page Content -->
		<div id="page-wrapper">
			<iframe src="http://sitecenter.baidu.com/sc-web/18440473/home/site/index?from=3&castk=83458jn7015784172d919" width="100%" height="1200px">
		</div>
		<!-- /#page-wrapper -->
	</div>
	<!-- /#wrapper -->
	
 	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath }/Style/Admin/bower_components/jquery/dist/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath }/Style/Admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath }/Style/Admin/bower_components/metisMenu/dist/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script
		src="${pageContext.request.contextPath }/Style/Admin/dist/js/sb-admin-2.js"></script>
	
	<!-- commom.js -->	
	<script
		src="${pageContext.request.contextPath }/Manage/js/commom.js"></script>
		
</body>
</html>