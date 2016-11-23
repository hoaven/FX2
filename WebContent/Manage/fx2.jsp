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

<title>蜂小二管理| 后台管理</title>

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
					<h1 class="page-header">蜂小二管理</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading" style="height: 50px;">
							蜂小二管理
							<button class="btn btn-info pull-right" onclick="addFx2()">添加蜂小二</button>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="dataTable_wrapper">
								<table class="table table-striped table-bordered table-hover"
									id="dataTables-example">
									<thead>
										<tr>
											<th>id</th>
											<th>姓名</th>
											<th>性别</th>
											<th>密码</th>
											<th>头像</th>
											<th>电话</th>
											<th>业务</th>
											<th>负责区域</th>
											<th>带看次数</th>
											<th>成交次数</th>
											<th>综合评分</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${fs}" var="f">
											<tr>
												<td>${f.id }</td>
												<td>${f.name }</td>
												<td><c:if test="${f.sex==1 }">
														男
													</c:if> <c:if test="${f.sex==2 }">
														女
													</c:if> <c:if test="${f.sex==3 }">
														未知
													</c:if></td>
												<td>${f.password }</td>
												<td><img height="120px;" width="120px;"
													src="${pageContext.request.contextPath }${f.pic }"
													class="img-circle"></td>
												<td>${f.phone }</td>
												<td>${f.business }</td>
												<td>${f.address }</td>
												<td>${f.seenum }</td>
												<td>${f.sunum }</td>
												<td>${f.score }</td>
												<td><button type="button" class="btn btn-success"
														onclick="upFx2(${f.id})">修改</button>
													<button type="button" class="btn btn-danger"
														onclick="deleteFx2(${f.id})">删除</button></td>
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


	<!-- 修改蜂小二 -->
	<div class="modal fade bs-example-modal-lg" id="upfx2modal"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改蜂小二</h4>
				</div>
				<div class="modal-body">
					<form method="post">
						<input type="hidden" name="id" id="id1" />
						<table class="table table-bordered">
							<input type="hidden" name="id" id="id1">
							<tr>
								<td>姓名：</td>
								<td><input type="text" name="name" id="name1" size="50" /></td>
							</tr>

							<tr>
								<td>性别：</td>
								<td><select name="sex" id="sex1">
										<option value="1">男</option>
										<option value="2">女</option>
										<option value="3">未知</option>
								</select></td>
							</tr>
							<tr>
								<td>密码：</td>
								<td><input type="text" name="password" id="psd1" size="50" /></td>
							</tr>
							<tr>
								<td>头像：(不更换请不要选择)</td>
								<td><input type="file" id="file" name="file"
									onchange="checkImgType(this)"> <br /> <input
									type="hidden" id="flag" name="flag" value="ajax文件上传" /></td>
							</tr>
							<tr>
								<td>电话：</td>
								<td><input type="text" name="phone" id="phone1" size="50" /></td>
							</tr>
							<tr>
								<td>业务：</td>
								<td><input type="text" name="business" id="business1"
									size="50" /></td>
								</td>
							</tr>
							<tr>
								<td>负责区域：</td>
								<td><input type="text" name="address" id="address1"
									size="50" /></td>
								</td>
							</tr>
							<tr>
								<td>带看次数：</td>
								<td><input type="text" name="seenum" id="seenum1" size="50"
									onkeyup="checkRate(this.id)" /></td>
								</td>
							</tr>
							<tr>
								<td>成交次数：</td>
								<td><input type="text" name="sunum" id="sunum1" size="50"
									onkeyup="checkRate(this.id)" /></td>
								</td>
							</tr>
							<tr>
								<td>综合评分：</td>
								<td><input type="text" name="score" id="score1" size="50" /></td>
								</td>
							</tr>
						</table>
					</form>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
					<button type="button" onclick="upFx2ById()" class="btn btn-primary">修改</button>
				</div>
			</div>
		</div>
	</div>

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
					<h4 class="modal-title" id="myModalLabel">添加蜂小二</h4>
				</div>
				<div class="modal-body">
					<form method="post" id="addFx2form">
						<table class="table table-bordered">
							<tr>
								<td>姓名：</td>
								<td><input type="text" name="name" id="name2" size="50" /></td>
							</tr>
							<tr>
								<td>性别：</td>
								<td><select name="sex" id="sex2">
										<option value="1">男</option>
										<option value="2">女</option>
										<option value="3">未知</option>
								</select></td>
							</tr>
							<tr>
								<td>密码：</td>
								<td><input type="text" name="password" id="psd2" size="50" /></td>
							</tr>
							<tr>
								<td>头像：</td>
								<td><input type="file" id="file1" name="file1"
									onchange="checkImgType(this)"> <br /> <input
									type="hidden" id="flag" name="flag" value="ajax文件上传" /></td>
							</tr>
							<tr>
								<td>电话：</td>
								<td><input type="text" name="phone" id="phone2" size="50" /></td>
							</tr>
							<tr>
								<td>业务：</td>
								<td><input type="text" name="business" id="business2"
									size="50" /></td>
							</tr>
							<tr>
								<td>负责区域：</td>
								<td><input type="text" name="address" id="address2"
									size="50" /></td>
							</tr>
							<tr>
								<td>带看次数：</td>
								<td><input type="text" name="seenum" id="seenum2" size="50"
									onkeyup="checkRate(this.id)" /></td>
							</tr>
							<tr>
								<td>成交次数：</td>
								<td><input type="text" name="sunum" id="sunum2" size="50"
									onkeyup="checkRate(this.id)" /></td>
							</tr>
							<tr>
								<td>综合评分：</td>
								<td><input type="text" name="score" id="score2" size="50" /></td>
							</tr>
						</table>
					</form>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
					<button type="button" onclick="addFx2ById()"
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
	<script
		src="${pageContext.request.contextPath }/Manage/js/commom.js"></script>
	<!-- fx2.js -->
	<script src="${pageContext.request.contextPath }/Manage/js/fx2.js"></script>
	
</body>
</html>