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

<title>交易数据 - 蜂小二后台管理</title>

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
<!-- DataTables CSS -->
<link
	href="${pageContext.request.contextPath }/Style/Admin/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link
	href="${pageContext.request.contextPath }/Style/Admin/bower_components/datatables-responsive/css/dataTables.responsive.css"
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
					<h1 class="page-header">交易数据</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="" style="width: 100%;">
					<div class="panel panel-default" style="width: 100%;">
						<div class="panel-body">
							<a href="#" class="btn btn-primary">约看数量</a><span class="text-info" style="margin-left: 30px;"><strong>${yknum }</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="#" class="btn btn-success">签约数量</a><span class="text-info"  style="margin-left: 30px;"><strong>${qxnum }</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="#" class="btn btn-danger">交易金额</a><span class="text-info"  style="margin-left: 30px;"><strong>￥${jymoney }</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading" style="height: 50px;">交易数据</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="dataTable_wrapper">
								<table class="table table-striped table-bordered table-hover"
									id="dataTables-example">
									<thead>
										<tr>
											<th>id</th>
											<th>姓名</th>
											<th>房源</th>
											<th>蜂小二</th>
											<th>是否支付</th>
											<th>预约时间</th>
											<th>带看次数</th>
											<th>付账时间</th>
											<th>付账类型</th>
											<th>服务评价</th>
											<th>是否结束</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${shs}" var="f">
											<tr>
												<td>${f.id }</td>
												<td>${f.fansname }</td>
												<td>${f.rentname }</td>
												<td>${f.fx2name }</td>
												<td><c:if test="${f.ispay==1 }">
														已支付
													</c:if> <c:if test="${f.ispay==2 }">
														未支付
													</c:if></td>
												<td>${f.yytime }</td>
												<td>${f.seenum }</td>
												<td>${f.seetime }</td>
												<td><c:if test="${f.paytype==1 }">
														99元带看服务费用
													</c:if> <c:if test="${f.paytype==2 }">
														签署支付15天佣金
													</c:if></td>
												<td>${f.comment }</td>
												<td><c:if test="${f.status==1 }">
														未结束
													</c:if> <c:if test="${f.status==2 }">
														已结束
													</c:if></td>
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

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath }/Style/Admin/bower_components/jquery/dist/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath }/Style/Admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath }/Style/Admin/bower_components/metisMenu/dist/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script
		src="${pageContext.request.contextPath }/Style/Admin/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/Style/Admin/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script
		src="${pageContext.request.contextPath }/Style/Admin/dist/js/sb-admin-2.js"></script>
		
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

</body>
</html>