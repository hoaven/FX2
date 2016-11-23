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

<title>房源管理| 后台管理</title>

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
					<h1 class="page-header">商铺房源</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading" style="height: 50px;">
							商铺房源管理
							<button class="btn btn-info pull-right" onclick="addFx2()">添加房源</button>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="dataTable_wrapper">
								<table class="table table-striped table-bordered table-hover"
									id="dataTables-example">
									<thead>
										<tr>
											<th>id</th>
											<th>类型</th>
											<th>房屋名称</th>
											<th>地址</th>
											<th>装修情况</th>
											<th>转手费</th>
											<th>目前经营</th>
											<th>租金</th>
											<th>入住方式</th>
											<th>发布人</th>
											<th>身份</th>
											<th>电话</th>
											<th>蜂小二</th>
											<th>点击量</th>
											<th>收藏量</th>
											<th>上架/下架</th>
											<th>操作</th>
											<th>查看详细</th>
											<th>照片管理</th>
											<th>蜂小二</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${rhs}" var="f">
											<tr>
												<td>${f.id }</td>
												<td><c:if test="${f.sptype==1 }">
														街铺
													</c:if> <c:if test="${f.sptype==2 }">
														百货超市
													</c:if> <c:if test="${f.sptype==3 }">
														专业市场
													</c:if> <c:if test="${f.sptype==4 }">
														其他
													</c:if></td>
												<td>${f.title }</td>
												<td>${f.address }</td>
												<td><c:if test="${f.renovation==1 }">
														简装
													</c:if> <c:if test="${f.renovation==2 }">
														精装
													</c:if> <c:if test="${f.renovation==3 }">
														毛胚
													</c:if></td>
												<td>${f.transferfee }</td>
												<td><c:if test="${f.shanpuwork==1 }">
														服装类
													</c:if> <c:if test="${f.shanpuwork==2 }">
														电器类
													</c:if> <c:if test="${f.shanpuwork==3 }">
														食品类
													</c:if> <c:if test="${f.shanpuwork==4 }">
														其他类
													</c:if></td>
												<td>${f.price }</td>
												<td>${f.chicktime }</td>
												<td>${f.name }</td>
												<td><c:if test="${f.sex==1 }">
														业主
													</c:if> <c:if test="${f.sex==2 }">
														租客
													</c:if> <c:if test="${f.sex==3 }">
														管理员
													</c:if></td>
												<td>${f.phone }</td>
												<td>${f.fx2name}</td>
												<td>${f.clicknum }</td>
												<td>${f.colnum }</td>
												<td><c:if test="${f.status==1 }">
														已上架
													</c:if> <c:if test="${f.status==2 }">
														已下架
													</c:if></td>
												<td><c:if test="${f.status==1 }">
														<button class="btn btn-danger"
															onclick="shangjia2(${f.id})">下架</button>
													</c:if> <c:if test="${f.status==2 }">
														<button class="btn btn-danger"
															onclick="shangjia1(${f.id})">上架</button>
													</c:if></td>
												<td>
													<button type="button" class="btn btn-info"
														onclick="findrenthouse(${f.id})">查看详细</button>
												</td>
												<td><a
													href="${pageContext.request.contextPath }/Manage/picurl33.do?id=${f.id}"
													class="btn btn-primary">照片管理</a></td>
												<td>
													<button type="button" class="btn btn-success"
														onclick="bdrenthouse(${f.id})">绑定</button>
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

	
	<!-- 添加房源信息-->
	<div class="modal fade bs-example-modal-lg" id="addrhModal"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">添加房源</h4>
				</div>
				<div class="modal-body">
					<form method="post" id="addrhform">
						<table class="table table-bordered">
							<tr>
								<td>类型：</td>
								<td><select name="sptype" id="sptype1">
										<option value="1">街铺</option>
										<option value="2">百货超市</option>
										<option value="3">专业市场</option>
										<option value="4">其他</option>
								</select></td>
							</tr>
							<tr>
								<td>房屋名称：</td>
								<td><input type="text" name="title" id="title1" /></td>
							</tr>
							<tr>
								<td>地址：</td>
								<td><input type="text" name="address" id="address1" /></td>
							</tr>
							
							<tr>
								<td>面积：</td>
								<td><input type="text" name="area" id="area1" />平方米</td>
							</tr>
							<tr>
								<td>装修情况：</td>
								<td><select name="renovation" id="renovation1">
										<option value="1">简装</option>
										<option value="2">精装</option>
										<option value="3">毛胚</option>
								</select></td>
							</tr>
							<tr>
								<td>目前经营：</td>
								<td><select name="shanpuwork" id="shanpuwork1">
										<option value="1">服装类</option>
										<option value="2">电器类</option>
										<option value="3">食品类</option>
										<option value="4">其他类</option>
								</select></td>
							</tr>
							<tr>
								<td>装修期：</td>
								<td><input type="text" name="zxdate" id="zxdate1"/>个月</td>
							</tr>
							<tr>
								<td>入住时间：</td>
								<td><input type="text" name="chicktime" id="chicktime1" /></td>
							</tr>
							<tr>
								<td>租赁期限：</td>
								<td><input type="text" name="renttime" id="renttime1"
									onkeyup="checkRate(this.id)" />个月</td>
							</tr>
							<tr>
								<td>转手费：</td>
								<td><input type="text" name="transferfee" id="transferfee1"
									onkeyup="checkRate(this.id)" />元</td>
							</tr>
							<tr>
								<td>租金：</td>
								<td><input type="text" name="price" id="price1"
									onkeyup="checkRate(this.id)" />元/月</td>
							</tr>
							<tr>
								<td>描述：</td>
								<td><textarea name="description" id="description1">
									</textarea></td>
							</tr>
							<tr>
								<td>支付方式：</td>
								<td><select name="paytype" id="paytype1">
										<option value="1">押一付一</option>
										<option value="2">押一付二</option>
										<option value="3">押二付一</option>
										<option value="4">押二付二</option>
										<option value="5">押二付三</option>
										<option value="6">押三付一</option>
										<option value="7">押三付二</option>
										<option value="8">押三付三</option>
										<option value="9">押三付六</option>
								</select></td>
							</tr>
							<tr>
								<td>发布账户id：</td>
								<td><input type="text" name="uid" id="uid1"
									onkeyup="checkRate(this.id)" /></td>
							</tr>
							<tr>
								<td>姓名：</td>
								<td><input type="text" name="name" id="name1" /></td>
							</tr>
							<tr>
								<td>身份：</td>
								<td><select name="shenfen" id="shenfen1">
										<option value="1">业主</option>
										<option value="2">租客</option>
										<option value="3">管理员</option>
								</select></td>
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
								<td>电话：</td>
								<td><input type="text" name="phone" id="phone1" /></td>
							</tr>
							<tr>
								<td>审核状态：</td>
								<td><select name="studio" id="studio1">
										<option value="1">通过</option>
										<option value="2">不通过</option>
								</select></td>
							</tr>
							<tr>
								<td>是否签约：</td>
								<td><select name="iswrite" id="iswrite1">
										<option value="1">签约</option>
										<option value="2">不签约</option>
								</select></td>
							</tr>
							<tr>
								<td>上架状态：</td>
								<td><select name="status" id="status1">
										<option value="1">上架</option>
										<option value="2">不上架</option>
								</select></td>
							</tr>
							<tr>
								<td>是否托管：</td>
								<td><select name="trus" id="trus1">
										<option value="1">托管</option>
										<option value="2">不托管</option>
								</select></td>
							</tr>
						</table>
					</form>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
					<button type="button" onclick="addrthouse()"
						class="btn btn-primary">添加</button>
				</div>
			</div>
		</div>
	</div>
	

	<!-- 查看房源信息-->
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
								<td>类型：</td>
								<td id="sptype"></td>
							</tr>
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
								<td>面积：</td>
								<td id="area"></td>
							</tr>
							<tr>
								<td>装修情况：</td>
								<td id="renovation"></td>
							</tr>
							<tr>
								<td>装修期：</td>
								<td id="zxdate"></td>
							</tr>
							<tr>
								<td>转手费：</td>
								<td id="transferfee"></td>
							</tr>
							<tr>
								<td>租赁期限：</td>
								<td id="renttime"></td>
							</tr>
							<tr>
								<td>目前经营：</td>
								<td id="shanpuwork"></td>
							</tr>
							<tr>
								<td>支付方式：</td>
								<td id="paytype"></td>
							</tr>
							<tr>
								<td>入住时间：</td>
								<td id="chicktime"></td>
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
								<td>身份：</td>
								<td id="shenfen"></td>
							</tr>
							<tr>
								<td>电话：</td>
								<td id="phone"></td>
							</tr>
							<tr>
								<td>蜂小二：</td>
								<td id="fid"></td>
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
	
	<!-- 绑定蜂小二-->
	<div class="modal fade bs-example-modal-lg" id="bdfx2Modal"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">绑定蜂小二</h4>
				</div>
				<div class="modal-body">
					<form method="post">
					<input type="hidden" id="renthid"/>
						选择蜂小二：<select id="fx2"	size="5">
								</select>
					</form>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
					<button type="button" onclick="bdfx2ById()"
						class="btn btn-primary">绑定</button>
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

	<!-- commom.js -->
	<script
		src="${pageContext.request.contextPath }/Manage/js/commom.js"></script>

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

	<!-- fx2.js -->
	<script
		src="${pageContext.request.contextPath }/Manage/js/renthouse33.js"></script>
</body>
</html>