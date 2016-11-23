<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.zhanwkj.fx2.model.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>快租房管家修改房源</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/fxe.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/page.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/tabs.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/test.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/font-awesome.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/common.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/index.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/fabu.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/frozen.css" />
<script language="javascript" type="text/javascript"
	src="${pageContext.request.contextPath}/Style/comment/My97DatePicker/WdatePicker.js"></script>
<script src="${pageContext.request.contextPath}/Style/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/Style/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/Style/js/modernizr.custom.js"></script>
<script src="${pageContext.request.contextPath}/Style/js/zepto.js"></script>
<script
	src="${pageContext.request.contextPath}/Style/js/dropload.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/Style/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Style/js/upload.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Style/js/mobileBUGFix.mini.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Style/js/date.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Style/js/iscroll.js"></script>
<style>
body {
	font-family: "Microsoft YaHei";
}
</style>
</head>
<%
	RentHouse rent = (RentHouse) session.getAttribute("rrhouse");
	List<String> url = (List<String>) session.getAttribute("rrurl");
	String[] equitment = (String[]) session.getAttribute("rrequitment");
%>
<body>

	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/top2.jsp" />

	<input type="hidden" name="houseid" id="houseid"
		value="<%=rent.getType()%>" />

	<section>

		<div class="tabs tabs-style-circlefill">

			<nav style="margin-top: 0">
				<ul style="height: 50px">
					<li style="width: 31.5%; float: left; height: 100%"><a
						href="#section-circlefill-1" class="row">
							<div class="col-sm-3 col-sm-offset-1 col-xs-3 col-xs-offset-1">
								<i class="fa fa-home icon_font" style="font-size: 36px"></i>
							</div>
							<div class="col-sm-4 col-sm-offset-1 col-xs-4 col-xs-offset-1">
								<span id="sty"
									style="font-size: 21px; margin-top: 7px; display: block"
									value="1" onclick="getspan1()">住宅</span>
							</div>

					</a></li>
					<li style="width: 31.5%; float: left; height: 100%"><a
						href="#section-circlefill-2" class="row">
							<div class="col-sm-3 col-sm-offset-1 col-xs-3 col-xs-offset-1">
								<i class="fa fa-university icon_font" style="font-size: 28px"></i>
							</div>
							<div class="col-sm-4 col-sm-offset-1 col-xs-4 col-xs-offset-1"
								onclick="getspan()">
								<span id="sty"
									style="font-size: 21px; margin-top: 7px; display: block"
									value="2" onclick="getspan2()">办公</span>
							</div>
					</a></li>
					<li style="width: 31.5%; float: left; height: 100%"><a
						href="#section-circlefill-3" class="row">
							<div class="col-sm-3 col-sm-offset-1 col-xs-3 col-xs-offset-1">
								<i class="fa fa-building icon_font" style="font-size: 30px"></i>
							</div>
							<div class="col-sm-4 col-sm-offset-1 col-xs-4 col-xs-offset-1">
								<span id="sty"
									style="font-size: 21px; margin-top: 7px; display: block"
									value="3" onclick="getspan3()">商铺</span>
							</div>
					</a></li>
				</ul>
			</nav>

			<div class="content-wrap">

				<section id="section-circle-fill-1" class="addform">
					<form
						action="${pageContext.request.contextPath }/Check/doUpdateCheck.do?hid=1"
						onsubmit="return passw()" method="POST">
						<input type="hidden" name="id" value="<%=rent.getId()%>" />
						<div class="addPhoto">
							<div id="myCarousel" class="carousel slide">
								<!-- 轮播（Carousel）项目 -->
								<div class="carousel-inner">
									<div class="item active" style="width: 100%;">
										<img src="${pageContext.request.contextPath}<%=url.get(0)%>"
											alt="First slide" style="width: 100%; height: 250px;">
									</div>
									<%
											for (int i = 1; i < url.size(); i++) {
										%>
									<div class="item" style="width: 100%;">
										<img src="${pageContext.request.contextPath}<%=url.get(i)%>"
											alt="First slide" style="width: 100%; height: 250px;">
									</div>
									<%
											}
										%>
								</div>
								<!-- 轮播（Carousel）导航 -->
								<a class="carousel-control left" href="#myCarousel"
									data-slide="prev">&lsaquo;</a> <a
									class="carousel-control right" href="#myCarousel"
									data-slide="next">&rsaquo;</a>
							</div>
						</div>
						<div class="table">
							<ul>
								<li class="container">
									<div class="row">
										<div class="col-sm-2 col-xs-4">小区名称：</div>
										<div class="col-sm-8 col-xs-8" style="margin-left: -20px;">
											<input name="title" id="xiaoqu" type="text"
												value="<%=rent.getTitle()%>" placeholder="">
										</div>
									</div>
								</li>
								<li class="container">
									<div class="row">
										<div class="col-sm-2 col-xs-4">小区地址：</div>
										<div class="col-sm-8 col-xs-8" style="margin-left: -20px;">
											<input name="address" type="text"
												value="<%=rent.getAddress()%>" id="xq_address"
												placeholder="地址须详细到门牌号" />

										</div>
									</div>
								</li>
								<li class="container">
									<div class="row">
										<div class="col-sm-2 col-xs-5">建筑面积(m²):</div>
										<div class="col-sm-8 col-xs-7" style="margin-left: -20px;">
											<input name="area" id="area" type="text"
												value="<%=rent.getArea()%>">
										</div>
									</div>
								</li>
								<li class="container">
									<div class="row">
										<div class="col-sm-2 col-xs-5">租金:</div>
										<div class="col-sm-10 col-xs-7" style="margin-left: -40px;">
											<input name="zujin" id="zujin" type="text"
												value="<%=rent.getPrice()%>" placeholder="请输入整数"
												onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')">
										</div>
									</div>
								</li>
								<li class="container">
									<div class="row">
										<div class="col-sm-2 col-xs-3">楼层:</div>
										<div class="col-sm-8 col-xs-9">
											<div class="row">
												<div class="col-sm-6 col-xs-6" style="text-align: center">
													第<input name="di" id="di" value="<%=rent.getFloor()%>"
														type="text" placeholder="第几层"
														onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')">
													层
												</div>
												<div class="col-sm-6 col-xs-6" style="text-align: center">
													共<input name="gong" id="gong"
														value="<%=rent.getFloorcount()%>" type="text"
														placeholder="共几层"
														onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')">
													层
												</div>
											</div>
										</div>
									</div>
								</li>
								<li class="container">
									<div class="row">
										<div class="col-sm-2 col-xs-4">装修情况:</div>
										<div class="ui-form col-sm-10 col-xs-8">
											<div class="row">
												<ul class="ui-list ui-list-text">
													<li class="col-sm-4 col-xs-4"
														style="padding: 0; margin-left: 0px;"><label
														class="ui-checkbox ui-checkbox-s"> <input
															type="radio" name="zhuangxiu" value="1"
															<%if (rent.getRenovation() == 1) {%> checked <%}%> />精装
													</label></li>
													<br>
													<li class="col-sm-4 col-xs-4"
														style="border-top: 0; padding: 0; margin-left: 0px;">
														<label class="ui-checkbox ui-checkbox-s"> <input
															type="radio" name="zhuangxiu" value="2"
															<%if (rent.getRenovation() == 2) {%> checked <%}%> />简装
													</label>
													</li>
													<br>
													<li class="col-sm-4 col-xs-4"
														style="border-top: 0; padding: 0; margin-left: 0px;">
														<label class="ui-checkbox ui-checkbox-s"> <input
															type="radio" name="zhuangxiu" value="3"
															<%if (rent.getRenovation() == 3) {%> checked <%}%> />毛坯
													</label>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</li>
								<li class="container">
									<div class="row">
										<div class="col-sm-2 col-xs-3">户型:</div>
										<div class="col-sm-10 col-xs-9">
											<select style="width: 100%" name="aparttype">
												<option value="1" <%if (rent.getAparttype() == 1) {%>
													checked <%}%>>一室</option>
												<option value="2" <%if (rent.getAparttype() == 2) {%>
													checked <%}%>>一室一厅</option>
												<option value="3" <%if (rent.getAparttype() == 3) {%>
													checked <%}%>>一室两厅</option>
												<option value="4" <%if (rent.getAparttype() == 4) {%>
													checked <%}%>>一室一厅一卫</option>
												<option value="5" <%if (rent.getAparttype() == 5) {%>
													checked <%}%>>两室一厅一卫</option>
												<option value="6" <%if (rent.getAparttype() == 6) {%>
													checked <%}%>>两室两厅两卫</option>
												<option value="7" <%if (rent.getAparttype() == 7) {%>
													checked <%}%>>三室一厅一卫</option>
												<option value="8" <%if (rent.getAparttype() == 8) {%>
													checked <%}%>>三室两厅两卫</option>
												<option value="9" <%if (rent.getAparttype() == 9) {%>
													checked <%}%>>五室以上</option>
											</select>
										</div>
									</div>
								</li>
								<li class="container">
									<div class="row">
										<div class="col-sm-2 col-xs-4">配套设施:</div>
										<div class="ui-form col-sm-10 col-xs-8">
											<ul class="ui-list ui-list-text row">
												<li class="col-sm-4 col-xs-4"
													style="padding: 0; margin-left: 0px;"><label
													class="ui-checkbox ui-checkbox-s"> <input
														type="checkbox" name="checkbox" value="1"
														<%if (equitment[0].equals("1")) {%> checked <%}%> />&nbsp;床铺
												</label></li>
												<li class="col-sm-5 col-xs-5"
													style="padding: 0; border-top: 0px; margin-left: 0px;"><label
													class="ui-checkbox ui-checkbox-s"> <input
														type="checkbox" name="checkbox" value="3"
														<%if (equitment[2].equals("1")) {%> checked <%}%> />洗衣机
												</label></li>
											</ul>
											<ul class="ui-list ui-list-text row">
												<li class="col-sm-4 col-xs-4"
													style="border-top: 0; padding: 0; margin-left: 0px;">
													<label class="ui-checkbox ui-checkbox-s"> <input
														type="checkbox" name="checkbox" value="2"
														<%if (equitment[1].equals("1")) {%> checked <%}%> />&nbsp;电视
												</label>
												</li>
												<li class="col-sm-5 col-xs-5"
													style="border-top: 0; padding: 0; margin-left: 0px;">
													<label class="ui-checkbox ui-checkbox-s"> <input
														type="checkbox" name="checkbox" value="6"
														<%if (equitment[5].equals("1")) {%> checked <%}%> />热水器
												</label>
												</li>
											</ul>
											<ul class="ui-list ui-list-text row">
												<li class="col-sm-4 col-xs-4"
													style="padding: 0; margin-left: 0px;"><label
													class="ui-checkbox ui-checkbox-s"> <input
														type="checkbox" name="checkbox" value="4"
														<%if (equitment[3].equals("1")) {%> checked <%}%> />&nbsp;空调
												</label></li>
												<li class="col-sm-4 col-xs-4"
													style="border-top: 0; padding: 0; margin-left: 0px;">
													<label class="ui-checkbox ui-checkbox-s"> <input
														type="checkbox" name="checkbox" value="5"
														<%if (equitment[4].equals("1")) {%> checked <%}%> />&nbsp;冰箱
												</label>
												</li>
											</ul>
											<ul class="ui-list ui-list-text row">
												<li class="col-sm-4 col-xs-4"
													style="border-top: 0; padding: 0; margin-left: 0px;">
													<label class="ui-checkbox ui-checkbox-s"> <input
														type="checkbox" name="checkbox" value="7"
														<%if (equitment[6].equals("1")) {%> checked <%}%> />&nbsp;宽带
												</label>
												</li>
												<li class="col-sm-4 col-xs-4"
													style="border-top: 0; padding: 0; margin-left: 0px;">
													<label class="ui-checkbox ui-checkbox-s"> <input
														type="checkbox" name="checkbox" value="8"
														<%if (equitment[7].equals("1")) {%> checked <%}%> />&nbsp;厨卫
												</label>
												</li>
											</ul>
										</div>
									</div>
								</li>
								<li class="container">
									<div class="row">
										<div class="col-sm-2 col-xs-4">入住时间：</div>
										<div class="col-sm-10 col-xs-8" style="margin-left: -20px">
											<select name="check_in_date" onchange="valueOnChangex()"
												id="datex" style="width: 50%">
												<option value="1" <%if (rent.getChicktime().equals("1")) {%>
													checked <%}%>>随时入住</option>
												<option value="2"
													<%if (!rent.getChicktime().equals("1")) {%> checked <%}%>><%=rent.getChicktime()%></option>
											</select>
											<div id="datadox" style='display: none'>
												<input name="datadox" id="datado1" class="Wdate" type="text"
													onClick="WdatePicker()">
											</div>
										</div>

									</div>
								</li>
								<li id="add" class="show_date">
									<div class="input_left">选择日期：</div>
									<div class="input_right">
										<input name="check_in_date" id="beginTime" class="kbtn" />
									</div>
								</li>
								<li class="container">
									<div class="row">
										<div class="col-sm-2 col-xs-4">支付方式：</div>
										<div class="col-sm-10 col-xs-8" style="margin-left: -20px">
											<select name="price_type" style="width: 100%">
												<option value="押一付一" <%if (rent.getPaytype() == 1) {%>
													checked <%}%>>押一付一</option>
												<option value="押一付二" <%if (rent.getPaytype() == 2) {%>
													checked <%}%>>押一付二</option>
												<option value="押一付三" <%if (rent.getPaytype() == 3) {%>
													checked <%}%>>押一付三</option>
												<option value="押二付一" <%if (rent.getPaytype() == 4) {%>
													checked <%}%>>押二付一</option>
												<option value="押二付二" <%if (rent.getPaytype() == 5) {%>
													checked <%}%>>押二付二</option>
												<option value="押二付三" <%if (rent.getPaytype() == 6) {%>
													checked <%}%>>押二付三</option>
												<option value="押三付一" <%if (rent.getPaytype() == 7) {%>
													checked <%}%>>押三付一</option>
												<option value="押三付二" <%if (rent.getPaytype() == 8) {%>
													checked <%}%>>押三付二</option>
												<option value="押三付三" <%if (rent.getPaytype() == 9) {%>
													checked <%}%>>押三付三</option>
												<option value="押三付六" <%if (rent.getPaytype() == 10) {%>
													checked <%}%>>押三付六</option>
											</select>
										</div>
									</div>
								</li>

								<li class="container">
									<div class="row">
										<div class="col-sm-2 col-xs-3">描述:</div>
										<div class="col-sm-8 col-xs-9" style="margin-left: -20px">
											<textarea cols="100%" rows="3"
												style="font-size: 15px; border: 0px solid #bdc2c9"
												name="txazw"><%=rent.getDescription()%></textarea>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="table">
							<ul>
								<li class="container">
									<div class="row">
										<div class="col-sm-2 col-xs-3">姓名：</div>
										<div class="col-sm-5 col-xs-4" style="margin-left: -20px">
											<input name="name" id="name" type="text"
												value="<%=rent.getName()%>">
										</div>
										<div class="col-sm-4 col-xs-5">
											<select name="sex">
												<option value="1" <%if (rent.getSex() == 1) {%> checked
													<%}%>>&nbsp;先&nbsp;&nbsp;生&nbsp;</option>
												<option value="2" <%if (rent.getSex() == 2) {%> checked
													<%}%>>&nbsp;女&nbsp;&nbsp;士&nbsp;</option>
											</select>
										</div>
									</div>
								</li>
								<li class="container">
									<div class="row">
										<div class="col-sm-2 col-xs-3">电话：</div>
										<div class="col-sm-5 col-xs-4" style="margin-left: -20px">
											<input type="text" value="<%=rent.getPhone()%>"
												style="width: 100%;" name="tel" id="tel">
										</div>
									</div>
								</li>
								<!-- <li class="container">
									<div class="row">
										<div class="col-sm-2 col-xs-4">验证码：</div>
										<div class="col-sm-5 col-xs-4">
											<input name="sms" type="text" id="sms" value="">
										</div>
										<div class="col-sm-4 col-xs-4">
											<input type="button" value="获取验证码"
												style="font-size: 13px; padding: 6px;" />
										</div>
									</div>
								</li> -->
								<li class="container">
									<div class="row">
										<div class="col-sm-2 col-xs-4">推荐人：</div>
										<div class="col-sm-5 col-xs-4" style="margin-left: -30px">
											<input name="referee_truename" id="tjname" type="text"
												value="<%=rent.getTjpersonid()%>">
										</div>
									</div>
								</li>
								<li class="container">
									<div class="row">
										<div class="col-sm-2 col-xs-5">推荐人电话：</div>
										<div class="col-sm-5 col-xs-4" style="margin-left: -30px">
											<input name="referee_truetel" id="tjtel" style="width: 100%;"
												type="text" value="<%=rent.getTjtel()%>">
										</div>

									</div>
								</li>

							</ul>

						</div>
						<div
							class="add-form_lable ui-form-item ui-form-item-checkbox ui-border-b">

							<label class="ui-checkbox"> <input type="checkbox"
								checked id="checkbox1"
								onclick="if (this.checked==false) {enable()} else {disable()}">
							</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span> <a
								href="${pageContext.request.contextPath }/Files/readfile.do">查看《用户须知》</a>
								<br /> <span id="spanid1"
								style="color: red; font-size: 5px; display: none;"><strong>必须先同意此协议!</strong></span>
							</span>

						</div>

						<div class="foot_button">
							<input name="button" type="submit" id="tj-button1"
								onclick="passw_ens()" class="sh_button" value="确认修改">
						</div>
						<div class="visible"></div>
					</form>
				</section>




				<section id="section-circle-fill-2 page-widget">
					<form
						action="${pageContext.request.contextPath }/Check/doUpdateCheck.do?hid=2"
						onsubmit="return passx()" method="POST">
						<input type="hidden" name="id" value="<%=rent.getId()%>" />
						<div class="fenggexian1">
							<div class="addPhoto">
								<div id="myCarousel" class="carousel slide">
									<!-- 轮播（Carousel）项目 -->
									<div class="carousel-inner">
										<div class="item active" style="width: 100%;">
											<img src="${pageContext.request.contextPath}<%=url.get(0)%>"
												alt="First slide" style="width: 100%; height: 250px;">
										</div>
										<%
											for (int i = 1; i < url.size(); i++) {
										%>
										<div class="item" style="width: 100%;">
											<img src="${pageContext.request.contextPath}<%=url.get(i)%>"
												alt="First slide" style="width: 100%; height: 250px;">
										</div>
										<%
											}
										%>
									</div>
									<!-- 轮播（Carousel）导航 -->
									<a class="carousel-control left" href="#myCarousel"
										data-slide="prev">&lsaquo;</a> <a
										class="carousel-control right" href="#myCarousel"
										data-slide="next">&rsaquo;</a>
								</div>
							</div>
							<div class="table">
								<ul>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-5">写字楼名称：</div>
											<div class="col-sm-8 col-xs-7" style="margin-left: -20px">
												<input name="title" id="title2" type="text"
													value="<%=rent.getTitle()%>" placeholder="区域 项目或小区">
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-5">写字楼地址：</div>
											<div class="col-sm-8 col-xs-7" style="margin-left: -20px">
												<input name="address" type="text"
													value="<%=rent.getAddress()%>" id="xq_address2"
													placeholder="地址须详细到门牌号" />
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-5">租金:</div>
											<div class="col-sm-10 col-xs-7" style="margin-left: -20px">
												<input name="zujin" id="zujin2" type="text"
													value="<%=rent.getPrice()%>" placeholder="请输入整数"
													onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')">
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">类型:</div>
											<div class="col-sm-10 col-xs-8">
												<select name="bangong_type" style="width: 100%">
													<option value="1" <%if (rent.getBgtype() == 1) {%> checked
														<%}%>>高级写字楼</option>
													<option value="2" <%if (rent.getBgtype() == 2) {%> checked
														<%}%>>商务写字楼</option>
													<option value="3" <%if (rent.getBgtype() == 3) {%> checked
														<%}%>>普通写字楼</option>
													<option value="4" <%if (rent.getBgtype() == 4) {%> checked
														<%}%>>甲级写字楼</option>
													<option value="5" <%if (rent.getBgtype() == 5) {%> checked
														<%}%>>乙级写字楼</option>
												</select>
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-5">装修情况:</div>
											<div class="ui-form col-sm-10 col-xs-7">
												<div class="row">
													<ul class="ui-list ui-list-text">
														<li class="col-sm-4 col-xs-4"
															style="padding: 0; margin-left: 0px;"><label
															class="ui-checkbox ui-checkbox-s"> <input
																type="radio" name="zhuangxiu_bangong" value="1"
																<%if (rent.getRenovation() == 1) {%> checked <%}%> />精装
														</label></li>
														<br>
														<li class="col-sm-4 col-xs-4"
															style="border-top: 0; padding: 0; margin-left: 0px;">
															<label class="ui-checkbox ui-checkbox-s"> <input
																type="radio" name="zhuangxiu_bangong" value="2"
																<%if (rent.getRenovation() == 2) {%> checked <%}%> />简装
														</label>
														</li>
														<br>
														<li class="col-sm-4 col-xs-4"
															style="border-top: 0; padding: 0; margin-left: 0px;">
															<label class="ui-checkbox ui-checkbox-s"> <input
																type="radio" name="zhuangxiu_bangong" value="3"
																<%if (rent.getRenovation() == 3) {%> checked <%}%> />毛坯
														</label>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-5">面积:</div>
											<div class="col-sm-10 col-xs-7" style="margin-left: -20px">
												<select style="width: 100%" name="area" id="area2">
													<option value="200" <%if (rent.getArea() == 200) {%>
														checked <%}%>>200m²</option>
													<option value="300" <%if (rent.getArea() == 300) {%>
														checked <%}%>>300m²</option>
													<option value="400" <%if (rent.getArea() == 400) {%>
														checked <%}%>>400m²</option>
													<option value="500" <%if (rent.getArea() == 500) {%>
														checked <%}%>>500m²</option>
													<option value="600" <%if (rent.getArea() == 600) {%>
														checked <%}%>>600m²</option>
													<option value="700" <%if (rent.getArea() == 700) {%>
														checked <%}%>>700m²</option>
													<option value="800" <%if (rent.getArea() == 800) {%>
														checked <%}%>>800m²</option>
												</select>
											</div>
										</div>
									</li>

									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">入住时间：</div>
											<div class="col-sm-10 col-xs-8">
												<select name="check_in_date" onchange="valueOnChangey()"
													id="datey" style="width: 50%">
													<option value="1"
														<%if (rent.getChicktime().equals("1")) {%> checked <%}%>>随时入住</option>
													<option value="2"
														<%if (!rent.getChicktime().equals("1")) {%> checked <%}%>><%=rent.getChicktime()%></option>
												</select>
												<div id="datadoy" style='display: none'>
													<input name="datadoy" id="datado2" class="Wdate"
														type="text" onClick="WdatePicker()">
												</div>
											</div>
									</li>
									<li id="add" class="show_date">
										<div class="input_left">选择日期：</div>
										<div class="input_right">
											<input name="check_in_date" id="beginTime" class="kbtn" />
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">支付方式：</div>
											<div class="col-sm-10 col-xs-8">
												<select name="price_type" style="width: 100%">
													<option value="押一付一" <%if (rent.getPaytype() == 1) {%>
														checked <%}%>>押一付一</option>
													<option value="押一付二" <%if (rent.getPaytype() == 2) {%>
														checked <%}%>>押一付二</option>
													<option value="押一付三" <%if (rent.getPaytype() == 3) {%>
														checked <%}%>>押一付三</option>
													<option value="押二付一" <%if (rent.getPaytype() == 4) {%>
														checked <%}%>>押二付一</option>
													<option value="押二付二" <%if (rent.getPaytype() == 5) {%>
														checked <%}%>>押二付二</option>
													<option value="押二付三" <%if (rent.getPaytype() == 6) {%>
														checked <%}%>>押二付三</option>
													<option value="押三付一" <%if (rent.getPaytype() == 7) {%>
														checked <%}%>>押三付一</option>
													<option value="押三付二" <%if (rent.getPaytype() == 8) {%>
														checked <%}%>>押三付二</option>
													<option value="押三付三" <%if (rent.getPaytype() == 9) {%>
														checked <%}%>>押三付三</option>
													<option value="押三付六" <%if (rent.getPaytype() == 10) {%>
														checked <%}%>>押三付六</option>
												</select>
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">装修期(天):</div>
											<div class="col-sm-10 col-xs-8">
												<input name="zxdate" id="zxdate2"
													value="<%=rent.getZxdate()%>"
													onkeyup="this.value=this.value.replace(/\D/g,'')"
													onafterpaste="this.value=this.value.replace(/\D/g,'')" />
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-3">描述:</div>
											<div class="col-sm-8 col-xs-9" style="margin-left: -20px">
												<textarea cols="100%" rows="3"
													value="<%=rent.getDescription()%>"
													style="font-size: 15px; border: 0px solid #bdc2c9"></textarea>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="table">
								<ul>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-3">姓名：</div>
											<div class="col-sm-5 col-xs-4" style="margin-left: -20px">
												<input name="name" id="name2" type="text"
													value="<%=rent.getName()%>">
											</div>
											<div class="col-sm-4 col-xs-5">
												<select name="sex">
													<option value="1" <%if (rent.getSex() == 1) {%> checked
														<%}%>>&nbsp;先&nbsp;&nbsp;生&nbsp;</option>
													<option value="2" <%if (rent.getSex() == 2) {%> checked
														<%}%>>&nbsp;女&nbsp;&nbsp;士&nbsp;</option>
												</select>
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-3">电话：</div>
											<div class="col-sm-5 col-xs-4" style="margin-left: -20px">
												<input id="tel2" name="tel" type="text" style="width: 100%;"
													value="<%=rent.getPhone()%>">
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">出租方身份:</div>
											<div class="col-sm-10 col-xs-8">
												<select style="width: 100%">
													<option value="1" <%if (rent.getShenfen() == 1) {%> checked
														<%}%>>业主</option>
													<option value="2" <%if (rent.getShenfen() == 2) {%> checked
														<%}%>>租客</option>
													<option value="3" <%if (rent.getShenfen() == 3) {%> checked
														<%}%>>管理员</option>
												</select>
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-5">租赁期限(年):</div>
											<div class="col-sm-10 col-xs-7" style="margin-left: -20px">
												<input name="zhuqi" id="zhuqi"
													value="<%=rent.getRenttime()%>"
													onkeyup="this.value=this.value.replace(/\D/g,'')"
													onafterpaste="this.value=this.value.replace(/\D/g,'')" />
											</div>
										</div>
									</li>
									<!-- <li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">验证码：</div>
											<div class="col-sm-5 col-xs-4">
												<input name="sms" id="sms2" type="text">
											</div>
											<div class="col-sm-4 col-xs-4">
												<input type="button" value="获取验证码"
													style="font-size: 13px; padding: 6px;" />
											</div>
										</div>
									</li> -->
								</ul>
							</div>
							<div
								class="add-form_lable ui-form-item ui-form-item-checkbox ui-border-b">
								<label class="ui-checkbox"> <input type="checkbox"
									checked id="checkbox2"
									onclick="if (this.checked==false) {enable()} else {disable()}">
								</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span> <a
									href="${pageContext.request.contextPath }/Files/readfile.do">查看《用户须知》</a>
									<br /> <span id="spanid2"
									style="color: red; font-size: 5px; display: none;"><strong>必须先同意此协议!</strong></span>
								</span>
							</div>
							<div class="foot_button">
								<input name="button" type="submit" id="tj-button2"
									class="sh_button" value="确认修改">
							</div>
							<div class="visible"></div>
					</form>
				</section>

				<section id="section-circle-fill-3 page-widget">
					<form
						action="${pageContext.request.contextPath }/Check/doUpdateCheck.do?hid=3"
						onsubmit="return passy()" method="POST">
						<input type="hidden" name="id" value="<%=rent.getId()%>" />
						<div class="fenggexian1">
							<div class="addPhoto">
								<div id="myCarousel" class="carousel slide">
									<!-- 轮播（Carousel）项目 -->
									<div class="carousel-inner">
										<div class="item active" style="width: 100%;">
											<img src="${pageContext.request.contextPath}<%=url.get(0)%>"
												alt="First slide" style="width: 100%; height: 250px;">
										</div>
										<%
											for (int i = 1; i < url.size(); i++) {
										%>
										<div class="item" style="width: 100%;">
											<img src="${pageContext.request.contextPath}<%=url.get(i)%>"
												alt="First slide" style="width: 100%; height: 250px;">
										</div>
										<%
											}
										%>
									</div>
									<!-- 轮播（Carousel）导航 -->
									<a class="carousel-control left" href="#myCarousel"
										data-slide="prev">&lsaquo;</a> <a
										class="carousel-control right" href="#myCarousel"
										data-slide="next">&rsaquo;</a>
								</div>
							</div>
							<div class="table">
								<ul>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-5">商铺名称：</div>
											<div class="col-sm-8 col-xs-7" style="margin-left: -45px">
												<input name="title" id="title3" type="text"
													value="<%=rent.getTitle()%>" placeholder="区域 项目或小区">
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">商铺地址：</div>
											<div class="col-sm-8 col-xs-8" style="margin-left: -20px">
												<input name="address" type="text"
													value="<%=rent.getAddress()%>" id="xq_address3"
													placeholder="地址须详细到门牌号" />
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">租金:</div>
											<div class="col-sm-10 col-xs-7" style="margin-left: -20px">
												<input name="zujin" id="zujin3" type="text"
													value="<%=rent.getPrice()%>" placeholder="请输入整数"
													onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')">
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-3">类型:</div>
											<div class="col-sm-10 col-xs-9">
												<select name="shangpu_type" style="width: 100%">
													<option value="1" <%if (rent.getSptype() == 1) {%> checked
														<%}%>>街铺</option>
													<option value="2" <%if (rent.getSptype() == 2) {%> checked
														<%}%>>百货超市</option>
													<option value="3" <%if (rent.getSptype() == 3) {%> checked
														<%}%>>专业市场</option>
													<option value="4" <%if (rent.getSptype() == 4) {%> checked
														<%}%>>其他</option>
												</select>
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">装修情况:</div>
											<div class="ui-form col-sm-10 col-xs-8">
												<div class="row">
													<ul class="ui-list ui-list-text">
														<li class="col-sm-4 col-xs-4"
															style="padding: 0; margin-left: 0px;"><label
															class="ui-checkbox ui-checkbox-s"> <input
																type="radio" name="zhuangxiu_shangpu" value="1"
																<%if (rent.getRenovation() == 1) {%> checked <%}%> />精装
														</label></li>
														<br>
														<li class="col-sm-4 col-xs-4"
															style="border-top: 0; padding: 0; margin-left: 0px;">
															<label class="ui-checkbox ui-checkbox-s"> <input
																type="radio" name="zhuangxiu_shangpu" value="2"
																<%if (rent.getRenovation() == 2) {%> checked <%}%> />简装
														</label>
														</li>
														<br>
														<li class="col-sm-4 col-xs-4"
															style="border-top: 0; padding: 0; margin-left: 0px;">
															<label class="ui-checkbox ui-checkbox-s"> <input
																type="radio" name="zhuangxiu_shangpu" value="3"
																<%if (rent.getRenovation() == 3) {%> checked <%}%> />毛坯
														</label>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">面积:</div>
											<div class="col-sm-10 col-xs-7" style="margin-left: -20px">
												<select style="width: 100%" name="mianji">
													<option value="200" <%if (rent.getArea() == 200) {%>
														checked <%}%>>200m²</option>
													<option value="300" <%if (rent.getArea() == 300) {%>
														checked <%}%>>300m²</option>
													<option value="400" <%if (rent.getArea() == 400) {%>
														checked <%}%>>400m²</option>
													<option value="500" <%if (rent.getArea() == 500) {%>
														checked <%}%>>500m²</option>
													<option value="600" <%if (rent.getArea() == 600) {%>
														checked <%}%>>600m²</option>
													<option value="700" <%if (rent.getArea() == 700) {%>
														checked <%}%>>700m²</option>
													<option value="800" <%if (rent.getArea() == 800) {%>
														checked <%}%>>800m²</option>
												</select>
											</div>
										</div>
									</li>

									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">入住时间：</div>
											<div class="col-sm-10 col-xs-8" style="margin-left: -20px">
												<select name="check_in_date" onchange="valueOnChangez()"
													id="datez" style="width: 50%">
													<option value="1"
														<%if (rent.getChicktime().equals("1")) {%> checked <%}%>>随时入住</option>
													<option value="2"
														<%if (!rent.getChicktime().equals("1")) {%> checked <%}%>><%=rent.getChicktime()%></option>
												</select>
												<div id="datadoz" style='display: none'>
													<input name="datadoz" id="datado3" class="Wdate"
														type="text" onClick="WdatePicker()">
												</div>
											</div>
									</li>
									<li id="add" class="show_date">
										<div class="input_left">选择日期：</div>
										<div class="input_right">
											<input name="check_in_date" id="beginTime" class="kbtn" />
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">支付方式：</div>
											<div class="col-sm-10 col-xs-8" style="margin-left: -20px">
												<select name="price_type" style="width: 100%">
													<option value="押一付一" <%if (rent.getPaytype() == 1) {%>
														checked <%}%>>押一付一</option>
													<option value="押一付二" <%if (rent.getPaytype() == 2) {%>
														checked <%}%>>押一付二</option>
													<option value="押一付三" <%if (rent.getPaytype() == 3) {%>
														checked <%}%>>押一付三</option>
													<option value="押二付一" <%if (rent.getPaytype() == 4) {%>
														checked <%}%>>押二付一</option>
													<option value="押二付二" <%if (rent.getPaytype() == 5) {%>
														checked <%}%>>押二付二</option>
													<option value="押二付三" <%if (rent.getPaytype() == 6) {%>
														checked <%}%>>押二付三</option>
													<option value="押三付一" <%if (rent.getPaytype() == 7) {%>
														checked <%}%>>押三付一</option>
													<option value="押三付二" <%if (rent.getPaytype() == 8) {%>
														checked <%}%>>押三付二</option>
													<option value="押三付三" <%if (rent.getPaytype() == 9) {%>
														checked <%}%>>押三付三</option>
													<option value="押三付六" <%if (rent.getPaytype() == 10) {%>
														checked <%}%>>押三付六</option>
												</select>
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">装修期:</div>
											<div class="col-sm-10 col-xs-8" style="margin-left: -20px">
												<input name="zxdate" id="zxdate3"
													value="<%=rent.getZxdate()%>"
													onkeyup="this.value=this.value.replace(/\D/g,'')"
													onafterpaste="this.value=this.value.replace(/\D/g,'')" />
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">转手费:</div>
											<div class="col-sm-10 col-xs-8" style="margin-left: -20px">
												<select style="width: 100%" name="transferfee">
													<option value="有">有</option>
													<option value="无">无</option>
												</select>
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">目前经营:</div>
											<div class="col-sm-10 col-xs-8" style="margin-left: -20px">
												<select style="width: 100%" name="shanpuwork">
													<option value="1"
														<%if (rent.getShanpuwork().equals("1")) {%> checked <%}%>>服装类</option>
													<option value="2"
														<%if (rent.getShanpuwork().equals("2")) {%> checked <%}%>>电器类</option>
													<option value="3"
														<%if (rent.getShanpuwork().equals("3")) {%> checked <%}%>>食品类</option>
												</select>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="table">
								<ul>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-3">姓名：</div>
											<div class="col-sm-5 col-xs-4" style="margin-left: -20px">
												<input name="name" id="name3" type="text"
													value="<%=rent.getName()%>">
											</div>
											<div class="col-sm-4 col-xs-5">
												<select name="sex">
													<option value="1" <%if (rent.getSex() == 1) {%> checked
														<%}%>>&nbsp;先&nbsp;&nbsp;生&nbsp;</option>
													<option value="2" <%if (rent.getSex() == 2) {%> checked
														<%}%>>&nbsp;女&nbsp;&nbsp;士&nbsp;</option>
												</select>
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-3">电话：</div>
											<div class="col-sm-5 col-xs-4" style="margin-left: -20px">
												<input type="text" value="<%=rent.getPhone()%>" style=""
													name="tel" id="tel3">
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">出租方身份:</div>
											<div class="col-sm-10 col-xs-8">
												<select style="width: 100%">
													<option>业主</option>
													<option></option>
												</select>
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">租赁期限:</div>
											<div class="col-sm-10 col-xs-8" style="margin-left: -20px">
												<input name="zhuqi" id="zhuqi3"
													value="<%=rent.getRenttime()%>"
													onkeyup="this.value=this.value.replace(/\D/g,'')"
													onafterpaste="this.value=this.value.replace(/\D/g,'')" />
											</div>
										</div>
									</li>
									<!-- <li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">验证码：</div>
											<div class="col-sm-5 col-xs-4">
												<input name="sms" id="sms3" type="text" value="">
											</div>
											<div class="col-sm-4 col-xs-4">
												<input type="button" value="获取验证码"
													style="font-size: 13px; padding: 6px;" />
											</div>
										</div>
									</li> -->
								</ul>
							</div>

							<div
								class="add-form_lable ui-form-item ui-form-item-checkbox ui-border-b">

								<label class="ui-checkbox"> <input type="checkbox"
									checked id="checkbox3"
									onclick="if (this.checked==false) {enable()} else {disable()}">
								</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span> <a
									href="${pageContext.request.contextPath }/Files/readfile.do">查看《用户须知》</a>
									<br /> <span id="spanid3"
									style="color: red; font-size: 5px; display: none;"><strong>必须先同意此协议!</strong></span>
								</span>
							</div>
							<div class="foot_button">
								<input name="button" type="submit" id="tj-button3"
									class="sh_button" value="确认修改">
							</div>
							<div class="visible"></div>
					</form>
				</section>

			</div>
			<!-- /content -->
		</div>
		<!-- /tabs -->
	</section>
	</form>
	<!--底下的固定导航-->

	<div class="visible"></div>
	<input type="hidden" id="get_p" value="2">

	<script src="${pageContext.request.contextPath}/Style/js/cbpFWTabs.js"></script>
	<script>
		(function() {
			[].slice.call(document.querySelectorAll('.tabs')).forEach(
					function(el) {
						new CBPFWTabs(el);
					});
		})();
		function disable() {

			document.getElementById("spanid1").style.display = "none";
			document.getElementById("spanid2").style.display = "none";
			document.getElementById("spanid3").style.display = "none";
		}
		function enable() {
			alert("请同意《用户须知》");//弹出提示
		}

		function valueOnChangex() {
			if (document.getElementById("datex").value == "2") {
				document.getElementById("datadox").style.display = "";
				document.getElementById("datado1").click();
			} else {
				document.getElementById("datadox").style.display = "none"

			}
		}
		function valueOnChangey() {
			if (document.getElementById("datey").value == "2") {
				document.getElementById("datadoy").style.display = "";
				document.getElementById("datado2").click();
			} else {
				document.getElementById("datadoy").style.display = "none"

			}
		}
		function valueOnChangez() {
			if (document.getElementById("datez").value == "2") {
				document.getElementById("datadoz").style.display = "";
				document.getElementById("datado3").click();
			} else {
				document.getElementById("datadoz").style.display = "none"

			}
		}

		function passw() {
			if (document.getElementById("xiaoqu").value == "") {
				alert("小区名称不能为空");//弹出提示
				return false;
			}
			if (document.getElementById("xq_address").value == "") {
				alert("小区地址不能为空");//弹出提示
				return false;
			}
			if (document.getElementById("area").value == "") {
				alert("房屋面积不能为空");//弹出提示
				return false;
			}
			if (document.getElementById("zujin").value == "") {
				alert("租金不能为空");//弹出提示
				return false;
			}

			if (document.getElementById("di").value == ""
					|| document.getElementById("gong").value == "") {
				alert("楼层不能为空");//弹出提示
				return false;
			}

			if (document.getElementById("datex").value == "2"
					&& document.getElementById("datado1").value == "") {
				alert("入住时间不能为空");//弹出提示
				return false;
			}
			if (document.getElementById("name").value == "") {
				alert("姓名不能为空");//弹出提示
				return false;
			}
			if (document.getElementById("tel").value == "") {
				alert("手机号码不能为空");//弹出提示
				return false;
			}
			if (document.getElementById("checkbox1").checked == false) {
				alert("请同意《用户须知》");//弹出提示
				return false;
			}

		}

		function passx() {
			if (document.getElementById("title2").value == "") {
				alert("写字楼名称不能为空");//弹出提示
				return false;
			}
			if (document.getElementById("xq_address2").value == "") {
				alert("写字楼地址不能为空");//弹出提示
				return false;
			}

			if (document.getElementById("zujin2").value == "") {
				alert("租金不能为空");//弹出提示
				return false;
			}

			if (document.getElementById("datey").value == "2"
					&& document.getElementById("datado2").value == "") {
				alert("入住时间不能为空");//弹出提示
				return false;
			}
			if (document.getElementById("zxdate2").value == "") {
				alert("装修期不能为空");//弹出提示
				return false;
			}

			if (document.getElementById("name2").value == "") {
				alert("姓名不能为空");//弹出提示
				return false;
			}
			if (document.getElementById("tel2").value == "") {
				alert("手机号码不能为空");//弹出提示
				return false;
			}

			if (document.getElementById("zhuqi2").value == "") {
				alert("租赁期限不能为空");//弹出提示
				return false;
			}
			if (document.getElementById("checkbox2").checked == false) {
				alert("请同意《用户须知》");//弹出提示
				return false;
			}

		}
		function passy() {

			if (document.getElementById("title3").value == "") {
				alert("商铺名称不能为空");//弹出提示
				return false;
			}
			if (document.getElementById("xq_address3").value == "") {
				alert("商铺地址不能为空");//弹出提示
				return false;
			}

			if (document.getElementById("zujin3").value == "") {
				alert("租金不能为空");//弹出提示
				return false;
			}

			if (document.getElementById("datez").value == "2"
					&& document.getElementById("datado2").value == "") {
				alert("入住时间不能为空");//弹出提示
				return false;
			}
			if (document.getElementById("zxdate3").value == "") {
				alert("装修期不能为空");//弹出提示
				return false;
			}

			if (document.getElementById("name3").value == "") {
				alert("姓名不能为空");//弹出提示
				return false;
			}
			if (document.getElementById("tel3").value == "") {
				alert("手机号码不能为空");//弹出提示
				return false;
			}

			if (document.getElementById("zhuqi3").value == "") {
				alert("租赁期限不能为空");//弹出提示
				return false;
			}
			if (document.getElementById("checkbox3").checked == false) {
				alert("请同意《用户须知》");//弹出提示
				return false;
			}
		}
	</script>
	<script
		src="${pageContext.request.contextPath}/Style/ajax/fx2update.js"></script>
</body>
</html>