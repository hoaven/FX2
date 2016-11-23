<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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


<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation"
	style="margin-bottom: 0; background-color: #3388FF;">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" style="color: #fff;"
			href="${pageContext.request.contextPath }/Manage/index.jsp"><strong>蜂小二后台管理</strong></a>
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
					href="${pageContext.request.contextPath }/Manage/index.jsp"><i
						class="fa fa-dashboard fa-fw"></i> 后台首页</a></li>
				<li><a
					href="${pageContext.request.contextPath }/Manage/findFx2.do"><i
						class="fa fa-edit fa-fw"></i> 蜂小二管理</a></li>
				<li><a href="#"><i class="fa fa-wrench fa-fw"></i> 房源管理<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a
							href="${pageContext.request.contextPath }/Manage/findRenthouse.do?operation=1">住宅</a></li>
						<li><a
							href="${pageContext.request.contextPath }/Manage/findRenthouse.do?operation=2">办公</a></li>
						<li><a
							href="${pageContext.request.contextPath }/Manage/findRenthouse.do?operation=3">商铺</a></li>
					</ul></li>
				<li><a
					href="${pageContext.request.contextPath }/Manage/findFans.do"><i
						class="fa fa-edit fa-fw"></i> 用户管理</a></li>
				<!--  
				<li><a
					href="http://sitecenter.baidu.com/sc-web/18440473/home/site/index?from=3&castk=83458jn7015784172d919"><i
						class="fa fa-edit fa-fw"></i> 运行数据</a></li>-->
				<li><a
					href="${pageContext.request.contextPath }/Manage/tradedata.do"><i
						class="fa fa-edit fa-fw"></i> 交易数据</a></li>
				<li><a
					href="${pageContext.request.contextPath }/Manage/qxmanage.do"><i
						class="fa fa-edit fa-fw"></i> 权限管理</a></li>
				<li><a
					href="${pageContext.request.contextPath }/Manage/fygb.do"><i
						class="fa fa-edit fa-fw"></i> 房源广播</a></li>
				<li><a
					href="${pageContext.request.contextPath }/Manage/wtfu.do"><i
						class="fa fa-edit fa-fw"></i> 委托服务</a></li>
			</ul>
		</div>
		<!-- /.sidebar-collapse -->
	</div>
	<!-- /.navbar-static-side -->
</nav>