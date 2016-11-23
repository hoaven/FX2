<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
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
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0; background-color: #3388FF;">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" style="color: #fff;"
					href="${pageContext.request.contextPath }/Manage/index1.jsp"><strong>蜂小二后台管理</strong></a>
			</div>
			<!-- /.navbar-header -->

			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown" style="color: #fff;"><a
					class="dropdown-toggle" style="color: #fff;" data-toggle="dropdown"
					href="#">管理员<font color="red"> ${manage.username }</font>,欢迎您！
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-alerts">
						<li><a href="#updatepass" data-toggle="modal">
								<div>
									<i class="fa fa-envelope fa-fw"></i>修改密码
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a
							href="${pageContext.request.contextPath }/Manage/loginout.do">
								<div>
									<i class="fa fa-twitter fa-fw"></i> 安全退出
								</div>
						</a></li>
					</ul> <!-- /.dropdown-alerts --></li>
				<!-- /.dropdown -->
			</ul>

			<!-- /.navbar-top-links -->
			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li><a
							href="${pageContext.request.contextPath }/Manage/index1.jsp"><i
								class="fa fa-dashboard fa-fw"></i> 后台首页</a></li>
						<li><a
							href="${pageContext.request.contextPath }/Manage/findRenthouse1.do?operation=1"><i
								class="fa fa-edit fa-fw"></i> 住宅管理</a></li>
						<li><a
							href="${pageContext.request.contextPath }/Manage/findRenthouse1.do?operation=2"><i
								class="fa fa-edit fa-fw"></i> 办公管理</a></li>
						<li><a
							href="${pageContext.request.contextPath }/Manage/findRenthouse1.do?operation=3"><i
								class="fa fa-edit fa-fw"></i> 商铺管理</a></li>
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>
		<!-- 密码修改 -->
		<div class="modal fade" id="updatepass" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">修改密码</h4>
					</div>
					<div class="modal-body">
						<form
							action="${pageContext.request.contextPath }/manage/uppassword.do"
							method="post">
							<input type="hidden" name="manageId" id="manageId"
								value="${manage.id }" />
							<table class="table table-bordered">
								<tr>
									<td>旧密码：</td>
									<td><input type="password" name="password1" id="password1"
										size="30" /></td>
								</tr>
								<tr>
									<td>新密码：</td>
									<td><input type="password" name="password2" id="password2"
										size="30" /></td>
								</tr>
								<tr>
									<td>确认密码：</td>
									<td><input type="password" name="password3" id="password3"
										size="30" /></td>
								</tr>
							</table>
						</form>
					</div>
					<div class="modal-footer">
						<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
						<button type="button" onclick="updatepassword()"
							class="btn btn-primary">修改</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">蜂小二后台管理中心</h1>
				</div>
				<!-- /.col-lg-12 -->
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
	<script src="${pageContext.request.contextPath }/Manage/js/commom.js"></script>

</body>
</html>