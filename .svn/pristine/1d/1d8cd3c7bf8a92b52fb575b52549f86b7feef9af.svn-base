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

<title>权限管理| 后台管理</title>

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

		<c:import url="/Manage/include/top.jsp" />
		<c:import url="/Manage/include/other.jsp" />

		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">权限管理</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading" style="height: 50px;">
							权限管理
							<button class="btn btn-info pull-right" onclick="addFx2()">添加权限</button>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="dataTable_wrapper">
								<table class="table table-striped table-bordered table-hover"
									id="dataTables-example">
									<thead>
										<tr>
											<th>id</th>
											<th>用户名</th>
											<th>权限</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${fs}" var="f">
											<tr>
												<td>${f.id }</td>
												<td>${f.username }</td>
												<td><c:if test="${f.roll==1 }">
														管理员
													</c:if> <c:if test="${f.roll==2 }">
														客服
													</c:if></td>
												<td><button type="button" class="btn btn-success"
														onclick="upFx2(${f.id})">修改</button>
													<button type="button" class="btn btn-danger"
														onclick="deFx2(${f.id})">删除</button></td>
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


	<div class="modal fade bs-example-modal-lg" id="upfx2modal"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改权限</h4>
				</div>
				<div class="modal-body">
					<form method="post">
						<input type="hidden" name="id" id="id1" />
						<table class="table table-bordered">
							<input type="hidden" name="id" id="id1">
							<tr>
								<td>用户名：</td>
								<td><input type="text" name="username" id="username1"
									size="50" /></td>
							</tr>
							<tr>
								<td>密码：</td>
								<td><input type="password" name="password" id="password1"
									size="50" /></td>
							</tr>
							<tr>
								<td>权限：</td>
								<td>
									<select name="roll" id="roll1">
										<option value="1">管理员</option>
										<option value="2">客服</option>
									</select>
								</td>
							</tr>
							
						</table>
					</form>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
					<button type="button" onclick="upFansById()"
						class="btn btn-primary">修改</button>
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="modal fade bs-example-modal-lg" id="addfx2modal"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">添加用户</h4>
				</div>
				<div class="modal-body">
					<form method="post" id="addFx2form">
						<input type="hidden" name="id" id="id1" />
						<table class="table table-bordered">
							<tr>
								<td>用户名：</td>
								<td><input type="text" name="username" id="username2"
									size="50" /></td>
							</tr>
							<tr>
								<td>密码：</td>
								<td><input type="password" name="password" id="password5"
									size="50" /></td>
							</tr>
							<tr>
								<td>权限：</td>
								<td>
									<select name="roll" id="roll2">
										<option value="1">管理员</option>
										<option value="2">客服</option>
									</select>
								</td>
							</tr>
						</table>
					</form>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
					<button type="button" onclick="addFansById()"
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
	<!-- fx2.js -->
	<script src="${pageContext.request.contextPath }/Manage/js/qxmanage.js"></script>

</body>
</html>