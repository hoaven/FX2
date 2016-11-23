<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>照片管理| 后台管理</title>

<!-- Bootstrap Core CSS -->
<link
	href="${pageContext.request.contextPath }/Style/Admin/bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link
	href="${pageContext.request.contextPath }/Style/Admin/bower_components/metisMenu/dist/metisMenu.min.css"
	rel="stylesheet">

<!-- DataTables CSS -->
<link
	href="${pageContext.request.contextPath }/Style/Admin/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link
	href="${pageContext.request.contextPath }/Style/Admin/bower_components/datatables-responsive/css/dataTables.responsive.css"
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
				href="#">管理员<font color="red"> ${manage.username }</font>,欢迎您！ <i
					class="fa fa-caret-down"></i>
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
		<!-- /.navbar-static-side --> </nav>
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
					<h1 class="page-header">照片管理</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading" style="height: 50px;">
							照片管理
							<button class="btn btn-info pull-right" onclick="addFx2()">上传照片</button>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<input type="hidden" name="renthouseid" id="renthouseid" value="${renthouseid}" />
							<div class="dataTable_wrapper">
								<table class="table table-striped table-bordered table-hover"
									id="dataTables-example">
									<thead>
										<tr>
											<th>id</th>
											<th>照片</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${list}" var="f">
											<tr>
												<td>1</td>
												<td><img src="${pageContext.request.contextPath }${f }"></td>
												<td>
													<button type="button" class="btn btn-danger"
														onclick="deletepicurl('${f}')">删除</button>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- /.table-responsive -->
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
		</div>
		<!-- /#page-wrapper -->
	</div>
	<!-- /#wrapper -->



	<!-- 添加蜂小二-->
	<div class="modal fade bs-example-modal-lg" id="addFx2Modal"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">上传照片</h4>
				</div>
				<div class="modal-body">
					<form method="post" id="addFx2form">
						<input type="file" id="file" name="file"
							onchange="checkImgType(this)"> <br /> <input
							type="hidden" id="flag" name="flag" value="ajax文件上传" />
					</form>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
					<button type="button" onclick="addpicurl()"
						class="btn btn-primary">添加</button>
				</div>
			</div>
		</div>
	</div>

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

	<!-- DataTables JavaScript -->
	<script
		src="${pageContext.request.contextPath }/Style/Admin/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/Style/Admin/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

	<!-- ajaxFile -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/Style/Admin/js/ajaxfileupload.js"></script>

	<script>
		$(document).ready(function() {
			$('#dataTables-example').DataTable({
				responsive : true,
				"oLanguage" : {
					"sLengthMenu" : "每页显示 _MENU_ 条记录",
					"sZeroRecords" : "抱歉， 没有找到",
					"sInfo" : "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
					"sInfoEmpty" : "没有数据",
					"sInfoFiltered" : "(从 _MAX_ 条数据中检索)",
					"sZeroRecords" : "没有检索到数据",
					"sSearch" : "搜索:",
					"oPaginate" : {
						"sFirst" : "首页",
						"sPrevious" : "前一页",
						"sNext" : "后一页",
						"sLast" : "尾页"
					}
				},
				"columnDefs" : [ {
					"targets" : [ 0 ],
					"visible" : false,
					"searchable" : false
				} ],
				"aaSorting" : [ [ 0, "desc" ] ],
			});
		});
	</script>

	<!-- commom.js -->
	<script src="${pageContext.request.contextPath }/Manage/js/commom.js"></script>
	<script src="${pageContext.request.contextPath }/Manage/js/picurl22.js"></script>

</body>
</html>