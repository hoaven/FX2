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

<title>委托服务| 后台管理</title>

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
					<h1 class="page-header">委托服务管理</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading" style="height: 50px;">
							未处理委托服务
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="dataTable_wrapper">
								<table class="table table-striped table-bordered table-hover dataTables-example"
									>
									<thead>
										<tr>
											<th>id</th>
											<th>房屋名称</th>
											<th>地址</th>
											<th>房屋类型</th>
											<th>查看详细</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${rhs1}" var="r1">
											<tr>
												<td>${r1.id }</td>
												<td>${r1.title}</td>
												<td>${r1.address }</td>
												<td><c:if test="${r1.type==1 }">
														住宅
													</c:if> <c:if test="${r1.type==2 }">
														办公
													</c:if> <c:if test="${r1.type==3 }">
														商铺
													</c:if></td>
												<td><button type="button" class="btn btn-info"
														onclick="findrenthouse(${r1.id})">查看详细</button></td>
												<td><button type="button" class="btn btn-success"
														onclick="tongguo(${r1.id})">通过</button>
													<button type="button" class="btn btn-danger"
														onclick="jujue(${r1.id})">拒绝</button></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
						
								<!--  -->
							</div>
							<!-- /.table-responsive -->
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading" style="height: 50px;">
							已处理委托服务
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="dataTable_wrapper">
								<table class="table table-striped table-bordered table-hover dataTables-example"
									>
									<thead>
										<tr>
											<th>id</th>
											<th>房屋名称</th>
											<th>地址</th>
											<th>房屋类型</th>
											<th>查看详细</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${rhs2}" var="r2">
											<tr>
												<td>${r2.id }</td>
												<td>${r2.title}</td>
												<td>${r2.address }</td>
												<td><c:if test="${r2.type==1 }">
														住宅
													</c:if> <c:if test="${r2.type==2 }">
														办公
													</c:if> <c:if test="${r2.type==3 }">
														商铺
													</c:if></td>
												<td><button type="button" class="btn btn-info"
														onclick="findrenthouse(${r2.id})">查看详细</button></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
						
								<!--  -->
							</div>
							<!-- /.table-responsive -->
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading" style="height: 50px;">
							已拒绝委托服务
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="dataTable_wrapper">
								<table class="table table-striped table-bordered table-hover dataTables-example"
									>
									<thead>
										<tr>
											<th>id</th>
											<th>房屋名称</th>
											<th>地址</th>
											<th>房屋类型</th>
											<th>查看详细</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${rhs0}" var="r0">
											<tr>
												<td>${r0.id }</td>
												<td>${r0.title}</td>
												<td>${r0.address }</td>
												<td><c:if test="${r0.type==1 }">
														住宅
													</c:if> <c:if test="${r0.type==2 }">
														办公
													</c:if> <c:if test="${r0.type==3 }">
														商铺
													</c:if></td>
												<td><button type="button" class="btn btn-info"
														onclick="findrenthouse(${r0.id})">查看详细</button></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
						
								<!--  -->
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

	<!-- 查看房源-->
	<div class="modal fade bs-example-modal-lg" id="findrhModal"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">房源详细信息</h4>
				</div>
				<div class="modal-body">
					<form method="post">
						<table class="table table-bordered">
							<tr>
								<td>房屋名称：</td>
								<td id="title"></td>
							</tr>
							<tr>
								<td>地址：</td>
								<td id="address"></td>
							</tr>
							<tr>
								<td>房屋图片</td>
								<td id="picurl"></td>
							</tr>
							<tr>
								<td>户型：</td>
								<td id="aparttype"></td>
							</tr>
							<tr>
								<td>面积：</td>
								<td id="area"></td>
							</tr>
							<tr>
								<td>楼层：</td>
								<td id="louceng"></td>
							</tr>
							<tr>
								<td>配套设施：</td>
								<td id="equitment"></td>
							</tr>
							<tr>
								<td>装修情况：</td>
								<td id="renovation"></td>
							</tr>
							<tr>
								<td>入住时间：</td>
								<td id="chicktime"></td>
							</tr>
							<tr>
								<td>租金：</td>
								<td id="price"></td>
							</tr>
							<tr>
								<td>描述：</td>
								<td id="description"></td>
							</tr>
							<tr>
								<td>支付方式：</td>
								<td id="paytype"></td>
							</tr>
							<tr>
								<td>发布账户id：</td>
								<td id="uid"></td>
							</tr>
							<tr>
								<td>姓名：</td>
								<td id="name"></td>
							</tr>
							<tr>
								<td>性别：</td>
								<td id="sex"></td>
							</tr>
							<tr>
								<td>电话：</td>
								<td id="phone"></td>
							</tr>
							<tr>
								<td>绑定蜂小二：</td>
								<td id="fid"></td>
							</tr>
							<tr>
								<td>推荐人：</td>
								<td id="tjname"></td>
							</tr>
							<tr>
								<td>推荐人号码：</td>
								<td id="tjtel"></td>
							</tr>
							<tr>
								<td>审核状态：</td>
								<td id="studio"></td>
							</tr>
							<tr>
								<td>是否签约：</td>
								<td id="iswrite"></td>
							</tr>
							<tr>
								<td>上架状态：</td>
								<td id="status"></td>
							</tr>
							<tr>
								<td>是否托管：</td>
								<td id="trus"></td>
							</tr>
							<tr>
								<td>点击量：</td>
								<td id="clicknum"></td>
							</tr>
							<tr>
								<td>收藏量：</td>
								<td id="colnum"></td>
							</tr>
						</table>
					</form>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
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
			$('.dataTables-example').DataTable({
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
	<script src="${pageContext.request.contextPath }/Manage/js/wtfu.js"></script>
	
</body>
</html>