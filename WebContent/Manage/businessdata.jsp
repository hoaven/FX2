<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>运营数据 - 蜂小二后台管理</title>

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
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">运营数据</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="" style="width: 100%;">
					<div class="panel panel-default" style="width: 100%;">
						<div class="panel-body">
							<button type="button" class="btn btn-primary">用户量</button><span class="text-info" style="margin-left: 30px;"><strong>${fansnum }</strong></span><br/><br/><br/>
							<button type="button" class="btn btn-success">蜂小二数量</button><span class="text-info"  style="margin-left: 30px;"><strong>${fx2num }</strong></span><br/><br/><br/>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
			</div>
			<!-- /.row -->
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