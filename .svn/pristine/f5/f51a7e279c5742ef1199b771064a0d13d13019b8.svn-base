<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.zhanwkj.fx2.model.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>蜂小二快租发布房源</title>
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

<body>

	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/top.jsp" />
	<!-- 
	<section class="page-widget">
		<div class="notice">
			<p style="background: #fff9b8">
				<span style="color: orange">如需蜂小二进行发布信息登记与审核，请点击一键委托</span>
				<button
					style="width: 70px; height: 25px; background: #ea0001; color: #fff">一键委托</button>
			</p>
		</div>
	</section>
 -->


	<section>

		<div class="tabs tabs-style-circlefill">

			<nav style="margin-top: 0">
				<ul>
					<li style="width: 31.5%"><a href="#section-circlefill-1"
						class="row">
							<div class="col-sm-3 col-sm-offset-1 col-xs-3 col-xs-offset-1">
								<i class="fa fa-home icon_font" style="font-size: 36px"></i>
							</div>
							<div class="col-sm-4 col-sm-offset-1 col-xs-4 col-xs-offset-1">
								<span id="sty"
									style="font-size: 21px; margin-top: 7px; display: block"
									value="1" onclick="getspan1()">住宅</span>
							</div>

					</a></li>
					<li style="width: 31.5%"><a href="#section-circlefill-2"
						class="row">
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
					<li style="width: 31.5%"><a href="#section-circlefill-3"
						class="row">
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
						action="${pageContext.request.contextPath }/User/pushou.do?hid=1"
						onsubmit="return passw()" method="POST">
						<input type="hidden" id="picurls" name="picurls" class="picurls"
							value="0" /> <input type="hidden" id="picnums" name="picnums"
							class="picnums" value="0" />
						<div class="showpics" id="picsshow"
							style="position: relative; float: left; clear: both; backgroud-color: #fff;">
							<div
								style="background-image:url('${pageContext.request.contextPath }/Style/img/upload.jpg');width:85px;">
								<%-- <img src="${pageContext.request.contextPath }/Style/img/can.png" width="5px"> --%>
							</div>
							<%
								for (int i = 1; i <= 15; i++) {
							%>
							<div style="float: left;">
								<img class="p<%=i%>" style="float: left;" src="" /> <input
									id="del<%=i%>" type="hidden" value="" /> <img
									class="pdel<%=i%>" src="" style="float: right;"
									onclick="DelPic('<%=i%>')">
							</div>
							<%
								}
							%>
							<img
								src="${pageContext.request.contextPath }/Style/img/upload.jpg"
								width="80px" style="float: left;" onclick="CFile()" /> <a
								href="#"><input type="file" id="file" name="file"
								style="display: none;" onchange="addpicurl()"> <input
								type="hidden" id="flag" name="flag" value="ajax文件上传" /></a>
						</div>
						<div style="position: relative; top: 10px; clear: both;">
							<div class="table">
								<ul>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">小区名称：</div>
											<div class="col-sm-8 col-xs-8">
												<input name="title" id="xiaoqu" type="text" value=""
													placeholder="">
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">小区地址：</div>
											<div class="col-sm-8 col-xs-8">
												<input name="address" type="hidden" style="width: 20%;"
													value="黄石市" placeholder="" readonly="readonly"> <input
													name="qu" type="text" style="width: 20%;" value=""
													id="xq_address" />区 <input name="jd" type="text"
													style="width: 20%;" value="" />街道&nbsp;&nbsp;&nbsp; <input
													name="juti" type="text" value="" placeholder="详细到门牌号"
													style="width: auto;" />

											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-5">建筑面积(m²):</div>
											<div class="col-sm-8 col-xs-7">
												<input name="area" id="area" type="text" value=""
													onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')">
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-5">租金:</div>
											<div class="col-sm-10 col-xs-7">
												<input name="zujin" id="zujin" type="text" value=""
													placeholder="请输入整数"
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
														<!-- <select name="di">
														<option value="1">第&nbsp;1&nbsp;层</option>
														<option value="2">第&nbsp;2&nbsp;层</option>
														<option value="3">第&nbsp;3&nbsp;层</option>
														<option value="4">第&nbsp;4&nbsp;层</option>
														<option value="5">第&nbsp;5&nbsp;层</option>
														<option value="6">第&nbsp;6&nbsp;层</option>
														<option value="7">第&nbsp;7&nbsp;层</option>
														<option value="8">第&nbsp;8&nbsp;层</option>
														<option value="9">第&nbsp;9&nbsp;层</option>
														<option value="10">第&nbsp;10&nbsp;层</option>
													</select> -->
														<input name="di" id="di" value="" type="text"
															placeholder="第几层"
															onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')">
													</div>
													<div class="col-sm-6 col-xs-6" style="text-align: center">
														<!-- <select name="gong">
														<option value="1">共&nbsp;1&nbsp;层</option>
														<option value="2">共&nbsp;2&nbsp;层</option>
														<option value="3">共&nbsp;3&nbsp;层</option>
														<option value="4">共&nbsp;4&nbsp;层</option>
														<option value="5">共&nbsp;5&nbsp;层</option>
														<option value="6">共&nbsp;6&nbsp;层</option>
														<option value="7">共&nbsp;7&nbsp;层</option>
														<option value="8">共&nbsp;8&nbsp;层</option>
														<option value="9">共&nbsp;9&nbsp;层</option>
														<option value="10">共&nbsp;10&nbsp;层</option>
													</select> -->
														<input name="gong" id="gong" value="" type="text"
															placeholder="共几层"
															onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')">
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
														<li class="ui-border-t col-sm-4 col-xs-4"
															style="padding: 0; margin-left: 0px;"><label
															class="ui-checkbox ui-checkbox-s"> <input
																type="radio" name="zhuangxiu" value="1" checked />精装
														</label></li>
														<li class="ui-border-t col-sm-4 col-xs-4"
															style="border-top: 0; padding: 0; margin-left: 0px;">
															<label class="ui-checkbox ui-checkbox-s"> <input
																type="radio" name="zhuangxiu" value="2" />简装
														</label>
														</li>
														<li class="ui-border-t col-sm-4 col-xs-4"
															style="border-top: 0; padding: 0; margin-left: 0px;">
															<label class="ui-checkbox ui-checkbox-s"> <input
																type="radio" name="zhuangxiu" value="3" />毛坯
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
													<option value="1">一室</option>
													<option value="2">一室一厅</option>
													<option value="3">一室两厅</option>
													<option value="4">一室一厅一卫</option>
													<option value="5">两室一厅一卫</option>
													<option value="6">两室两厅两卫</option>
													<option value="7">三室一厅一卫</option>
													<option value="8">三室两厅两卫</option>
													<option value="9">五室以上</option>
												</select>
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">配套设施:</div>
											<div class="ui-form col-sm-10 col-xs-8">
												<ul class="ui-list ui-list-text row">
													<li class="ui-border-t col-sm-4 col-xs-4"
														style="padding: 0; margin-left: 0px;"><label
														class="ui-checkbox ui-checkbox-s"> <input
															type="checkbox" name="checkbox" value="1" />&nbsp;床铺
													</label></li>
													<li class="ui-border-t col-sm-4 col-xs-4"
														style="border-top: 0; padding: 0; margin-left: 0px;">
														<label class="ui-checkbox ui-checkbox-s"> <input
															type="checkbox" name="checkbox" value="2" />&nbsp;电视
													</label>
													</li>
													<li class="ui-border-t col-sm-4 col-xs-4"
														style="padding: 0; margin-left: 0px;"><label
														class="ui-checkbox ui-checkbox-s"> <input
															type="checkbox" name="checkbox" value="3" />洗衣机
													</label></li>
												</ul>
												<ul class="ui-list ui-list-text row">
													<li class="ui-border-t col-sm-4 col-xs-4"
														style="padding: 0; margin-left: 0px;"><label
														class="ui-checkbox ui-checkbox-s"> <input
															type="checkbox" name="checkbox" value="4" />&nbsp;空调
													</label></li>
													<li class="ui-border-t col-sm-4 col-xs-4"
														style="border-top: 0; padding: 0; margin-left: 0px;">
														<label class="ui-checkbox ui-checkbox-s"> <input
															type="checkbox" name="checkbox" value="5" />&nbsp;冰箱
													</label>
													</li>
													<li class="ui-border-t col-sm-4 col-xs-4"
														style="border-top: 0; padding: 0; margin-left: 0px;">
														<label class="ui-checkbox ui-checkbox-s"> <input
															type="checkbox" name="checkbox" value="6" />热水器
													</label>
													</li>
												</ul>
												<ul class="ui-list ui-list-text row">
													<li class="ui-border-t col-sm-4 col-xs-4"
														style="border-top: 0; padding: 0; margin-left: 0px;">
														<label class="ui-checkbox ui-checkbox-s"> <input
															type="checkbox" name="checkbox" value="7" />&nbsp;宽带
													</label>
													</li>
													<li class="ui-border-t col-sm-4 col-xs-4"
														style="border-top: 0; padding: 0; margin-left: 0px;">
														<label class="ui-checkbox ui-checkbox-s"> <input
															type="checkbox" name="checkbox" value="8" />&nbsp;厨卫
													</label>
													</li>
												</ul>
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">入住时间：</div>
											<div class="col-sm-10 col-xs-8">
												<select name="check_in_date" onchange="valueOnChangex()"
													id="datex" style="width: 50%">
													<option value="0">请选择
													<option value="1">随时入住</option>
													<option value="2">设定时间入住</option>
												</select>
												<div id="datadox" style='display: none'>
													<input name="datadox" id="datado1" class="Wdate"
														type="text" onClick="WdatePicker()">
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
											<div class="col-sm-10 col-xs-8">
												<select name="price_type" style="width: 100%">
													<option value="押一付一">押一付一</option>
													<option value="押一付二">押一付二</option>
													<option value="押一付三">押一付三</option>
													<option value="押二付一">押二付一</option>
													<option value="押二付二">押二付二</option>
													<option value="押二付三">押二付三</option>
													<option value="押三付一">押三付一</option>
													<option value="押三付二">押三付二</option>
													<option value="押三付三">押三付三</option>
													<option value="押三付六">押三付六</option>
												</select>
											</div>
										</div>
									</li>

									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-3">描述:</div>
											<div class="col-sm-8 col-xs-9">
												<textarea cols="100%" rows="3"
													style="font-size: 15px; border: 0px solid #bdc2c9"
													name="txazw"></textarea>
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
											<div class="col-sm-5 col-xs-4">
												<input name="name" id="name" type="text" value="">
											</div>
											<div class="col-sm-4 col-xs-5">
												<select name="sex">
													<option value="1">&nbsp;先&nbsp;&nbsp;生&nbsp;</option>
													<option value="2">&nbsp;女&nbsp;&nbsp;士&nbsp;</option>
												</select>
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-3">电话：</div>
											<div class="col-sm-5 col-xs-4">
												<input type="text" value="" name="tel" id="tel">
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">验证码：</div>
											<div class="col-sm-5 col-xs-4">
												<input name="sms" type="text" id="sms" value="">
											</div>
											<div class="col-sm-4 col-xs-4">
												<input type="button" value="获取验证码"
													style="font-size: 13px; padding: 6px;"
													onclick="sendDuanxinw(this,30)" />
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">推荐人：</div>
											<div class="col-sm-5 col-xs-4">
												<input name="referee_truename" id="tjname" type="text"
													value="">
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-5">推荐人电话：</div>
											<div class="col-sm-5 col-xs-4">
												<input name="referee_truetel" id="tjtel" type="text"
													value="">
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
									href="${pageContext.request.contextPath }/Files/readfile.do">阅读《用户须知》。</a>
									<br /> <span id="spanid1"
									style="color: red; font-size: 5px; display: none;"><strong>必须先同意此协议!</strong></span>
								</span>

							</div>

							<div class="foot_button">
								<input name="button" type="submit" id="tj-button1"
									onclick="passw_ens()" class="sh_button" value="提交审核">
							</div>
						</div>
						<div class="visible"></div>
					</form>
				</section>




				<section id="section-circle-fill-2 page-widget">
					<form
						action="${pageContext.request.contextPath }/User/pushou.do?hid=2"
						onsubmit="return passx()" method="POST">
						<div class="fenggexian1">
							<input type="hidden" id="picurls" name="picurls" class="picurls"
								value="0" /> <input type="hidden" id="picnums" name="picnums"
								class="picnums" value="0" />
							<div class="showpics" id="picsshow"
								style="position: relative; float: left; clear: both; backgroud-color: #fff;">
								<div
									style="background-image:url('${pageContext.request.contextPath }/Style/img/upload.jpg');width:85px;">
									<%-- <img src="${pageContext.request.contextPath }/Style/img/can.png" width="5px"> --%>
								</div>
								<%
									for (int i = 1; i <= 15; i++) {
								%>
								<div style="float: left;">
									<img class="p<%=i%>" style="float: left;" src="" /> <input
										id="del<%=i%>" type="hidden" value="" /> <img
										class="pdel<%=i%>" src="" style="float: right;"
										onclick="DelPic('<%=i%>')">
								</div>
								<%
									}
								%>
								<img
									src="${pageContext.request.contextPath }/Style/img/upload.jpg"
									width="80px" style="float: left;" onclick="CFile()" /> <a
									href="#"><input type="file" id="file" name="file"
									style="display: none;" onchange="addpicurl()"> <input
									type="hidden" id="flag" name="flag" value="ajax文件上传" /></a>
							</div>
							<div class="table">
								<ul>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-5">写字楼名称：</div>
											<div class="col-sm-8 col-xs-7">
												<input name="title" id="title2" type="text" value=""
													placeholder="区域 项目或小区">
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">写字楼地址：</div>
											<div class="col-sm-8 col-xs-8">
												<input name="address" type="hidden" style="width: 20%;"
													value="黄石市" placeholder="" readonly="readonly"> <input
													name="qu" type="text" style="width: 20%;" value=""
													id="xq_address2" />区 <input name="jd" type="text"
													style="width: 20%;" value="" />街道&nbsp;&nbsp;&nbsp; <input
													name="juti" type="text" value="" placeholder="详细到门牌号"
													style="width: auto;" />
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-5">租金:</div>
											<div class="col-sm-10 col-xs-7">
												<input name="zujin" id="zujin2" type="text" value=""
													placeholder="请输入整数"
													onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')">
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-3">类型:</div>
											<div class="col-sm-10 col-xs-9">
												<select name="bangong_type" style="width: 100%">
													<option value="1">高级写字楼</option>
													<option value="2">商务写字楼</option>
													<option value="3">普通写字楼</option>
													<option value="4">甲级写字楼</option>
													<option value="5">乙级写字楼</option>
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
														<li class="ui-border-t col-sm-4 col-xs-4"
															style="padding: 0; margin-left: 0px;"><label
															class="ui-checkbox ui-checkbox-s"> <input
																type="radio" name="zhuangxiu_bangong" value="1" checked />精装
														</label></li>
														<li class="ui-border-t col-sm-4 col-xs-4"
															style="border-top: 0; padding: 0; margin-left: 0px;">
															<label class="ui-checkbox ui-checkbox-s"> <input
																type="radio" name="zhuangxiu_bangong" value="2" />简装
														</label>
														</li>
														<li class="ui-border-t col-sm-4 col-xs-4"
															style="border-top: 0; padding: 0; margin-left: 0px;">
															<label class="ui-checkbox ui-checkbox-s"> <input
																type="radio" name="zhuangxiu_bangong" value="3" />毛坯
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
											<div class="col-sm-10 col-xs-7">
												<select style="width: 100%" name="area" id="area2">
													<option value="200">200m²</option>
													<option value="300">300m²</option>
													<option value="400">400m²</option>
													<option value="500">500m²</option>
													<option value="600">600m²</option>
													<option value="700">700m²</option>
													<option value="800">800m²</option>
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
													<option value="0">请选择
													<option value="1">随时入住</option>
													<option value="2">设定时间入住</option>
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
													<option value="押一付一">押一付一</option>
													<option value="押一付二">押一付二</option>
													<option value="押一付三">押一付三</option>
													<option value="押二付一">押二付一</option>
													<option value="押二付二">押二付二</option>
													<option value="押二付三">押二付三</option>
													<option value="押三付一">押三付一</option>
													<option value="押三付二">押三付二</option>
													<option value="押三付三">押三付三</option>
													<option value="押三付六">押三付六</option>
												</select>
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">装修期(天):</div>
											<div class="col-sm-10 col-xs-8">
												<!--  
												<select style="width: 100%" name="zxdate">
													<option value="15">15天</option>
													<option value="12">12天</option>
													<option value="10">10天</option>
													<option value="8">8天</option>
													<option value="5">5天</option>
												</select>
												-->
												<input name="zxdate" id="zxdate2"
													onkeyup="this.value=this.value.replace(/\D/g,'')"
													onafterpaste="this.value=this.value.replace(/\D/g,'')" />
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-3">描述:</div>
											<div class="col-sm-8 col-xs-9">
												<textarea cols="100%" rows="3"
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
											<div class="col-sm-5 col-xs-4">
												<input name="name" id="name2" type="text" value="">
											</div>
											<div class="col-sm-4 col-xs-5">
												<select name="sex">
													<option value="1">先生</option>
													<option value="2">女士</option>
												</select>
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-3">电话：</div>
											<div class="col-sm-5 col-xs-4">
												<input id="tel2" name="tel" type="text" value="">
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
											<div class="col-sm-2 col-xs-3">租赁期限(年):</div>
											<div class="col-sm-10 col-xs-9">
												<!--  
												<select style="width: 100%" name="zhuqi">
													<option value="60">5年</option>
													<option value="48">4年</option>
													<option value="36">3年</option>
													<option value="24">2年</option>
													<option value="15">1年</option>
													<option value="6">6月</option>
												</select>
												-->
												<input name="zhuqi" id="zhuqi"
													onkeyup="this.value=this.value.replace(/\D/g,'')"
													onafterpaste="this.value=this.value.replace(/\D/g,'')" />
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">验证码：</div>
											<div class="col-sm-5 col-xs-4">
												<input name="sms" id="sms2" type="text">
											</div>
											<div class="col-sm-4 col-xs-4">
												<input type="button" value="获取验证码"
													style="font-size: 13px; padding: 6px;"
													onclick="sendDuanxinx(this,30)" />
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div
								class="add-form_lable ui-form-item ui-form-item-checkbox ui-border-b">


								<label class="ui-checkbox"> <input type="checkbox"
									checked id="checkbox2"
									onclick="if (this.checked==false) {enable()} else {disable()}">
								</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span> <a
									href="${pageContext.request.contextPath }/Files/readfile.do">阅读《用户须知》。</a>
									<br /> <span id="spanid2"
									style="color: red; font-size: 5px; display: none;"><strong>必须先同意此协议!</strong></span>
								</span>
							</div>
							<div class="foot_button">
								<input name="button" type="submit" id="tj-button2"
									class="sh_button" value="提交审核">
							</div>
							<div class="visible"></div>
						</div>
					</form>
				</section>

				<section id="section-circle-fill-3 page-widget">
					<form
						action="${pageContext.request.contextPath }/User/pushou.do?hid=3"
						onsubmit="return passy()" method="POST">
						<div class="fenggexian1">
							<input type="hidden" id="picurls" name="picurls" class="picurls"
								value="0" /> <input type="hidden" id="picnums" name="picnums"
								class="picnums" value="0" />
							<div class="showpics" id="picsshow"
								style="position: relative; float: left; clear: both; backgroud-color: #fff;">
								<div
									style="background-image:url('${pageContext.request.contextPath }/Style/img/upload.jpg');width:85px;">
									<%-- <img src="${pageContext.request.contextPath }/Style/img/can.png" width="5px"> --%>
								</div>
								<%
									for (int i = 1; i <= 15; i++) {
								%>
								<div style="float: left;">
									<img class="p<%=i%>" style="float: left;" src="" /> <input
										id="del<%=i%>" type="hidden" value="" /> <img
										class="pdel<%=i%>" src="" style="float: right;"
										onclick="DelPic('<%=i%>')">
								</div>
								<%
									}
								%>
								<img
									src="${pageContext.request.contextPath }/Style/img/upload.jpg"
									width="80px" style="float: left;" onclick="CFile()" /> <a
									href="#"><input type="file" id="file" name="file"
									style="display: none;" onchange="addpicurl()"> <input
									type="hidden" id="flag" name="flag" value="ajax文件上传" /></a>
							</div>
							<div class="table">
								<ul>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-5">商铺名称：</div>
											<div class="col-sm-8 col-xs-7">
												<input name="title" id="title3" type="text" value=""
													placeholder="区域 项目或小区">
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">商铺地址：</div>
											<div class="col-sm-8 col-xs-8">
												<input name="address" type="hidden" style="width: 20%;"
													value="黄石市" placeholder="" readonly="readonly"> <input
													name="qu" type="text" style="width: 20%;" value=""
													id="xq_address3" />区 <input name="jd" type="text"
													style="width: 20%;" value="" />街道&nbsp;&nbsp;&nbsp; <input
													name="juti" type="text" value="" placeholder="详细到门牌号"
													style="width: auto;" />
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-5">租金:</div>
											<div class="col-sm-10 col-xs-7">
												<input name="zujin" id="zujin3" type="text" value=""
													placeholder="请输入整数"
													onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')">
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-3">类型:</div>
											<div class="col-sm-10 col-xs-9">
												<select name="shangpu_type" style="width: 100%">
													<option value="1">街铺</option>
													<option value="2">百货超市</option>
													<option value="3">专业市场</option>
													<option value="4">其他</option>
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
														<li class="ui-border-t col-sm-4 col-xs-4"
															style="padding: 0; margin-left: 0px;"><label
															class="ui-checkbox ui-checkbox-s"> <input checked
																type="radio" name="zhuangxiu_shangpu" value="1" />精装
														</label></li>
														<li class="ui-border-t col-sm-4 col-xs-4"
															style="border-top: 0; padding: 0; margin-left: 0px;">
															<label class="ui-checkbox ui-checkbox-s"> <input
																type="radio" name="zhuangxiu_shangpu" value="2" />简装
														</label>
														</li>
														<li class="ui-border-t col-sm-4 col-xs-4"
															style="border-top: 0; padding: 0; margin-left: 0px;">
															<label class="ui-checkbox ui-checkbox-s"> <input
																type="radio" name="zhuangxiu_shangpu" value="3" />毛坯
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
											<div class="col-sm-10 col-xs-7">
												<select style="width: 100%" name="mianji">
													<option value="200">200m²</option>
													<option value="300">300m²</option>
													<option value="400">400m²</option>
													<option value="500">500m²</option>
													<option value="600">600m²</option>
													<option value="700">700m²</option>
													<option value="800">800m²</option>
												</select>
											</div>
										</div>
									</li>

									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">入住时间：</div>
											<div class="col-sm-10 col-xs-8">
												<select name="check_in_date" onchange="valueOnChangez()"
													id="datez" style="width: 50%">
													<option value="">请选择
													<option value="1">随时入住</option>
													<option value="2">设定时间入住</option>
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
											<div class="col-sm-10 col-xs-8">
												<select name="price_type" style="width: 100%">
													<option value="押一付一">押一付一</option>
													<option value="押一付二">押一付二</option>
													<option value="押一付三">押一付三</option>
													<option value="押二付一">押二付一</option>
													<option value="押二付二">押二付二</option>
													<option value="押二付三">押二付三</option>
													<option value="押三付一">押三付一</option>
													<option value="押三付二">押三付二</option>
													<option value="押三付三">押三付三</option>
													<option value="押三付六">押三付六</option>
												</select>
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">装修期:</div>
											<div class="col-sm-10 col-xs-8">
												<!-- <select style="width: 100%" name="zxdate" id="zxdate">
													<option value="15">15天</option>
													<option value="12">12天</option>
													<option value="10">10天</option>
													<option value="8">8天</option>
													<option value="5">5天</option>
												</select> -->
												<input name="zxdate" id="zxdate3"
													onkeyup="this.value=this.value.replace(/\D/g,'')"
													onafterpaste="this.value=this.value.replace(/\D/g,'')" />
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">转手费:</div>
											<div class="col-sm-10 col-xs-8">
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
											<div class="col-sm-10 col-xs-8">
												<select style="width: 100%" name="shanpuwork">
													<option value="1">服装类</option>
													<option value="2">电器类</option>
													<option value="3">食品类</option>
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
											<div class="col-sm-5 col-xs-4">
												<input name="name" id="name3" type="text" value="">
											</div>
											<div class="col-sm-4 col-xs-5">
												<select name="sex">
													<option value="1">先生</option>
													<option value="2">女士</option>
												</select>
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-3">电话：</div>
											<div class="col-sm-5 col-xs-4">
												<input type="text" value="" name="tel" id="tel3">
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
											<div class="col-sm-2 col-xs-3">租赁期限:</div>
											<div class="col-sm-10 col-xs-9">
												<!-- <select style="width: 100%" name="zhuqi" id="zhuqi3">
													<option value="60">5年</option>
													<option value="48">4年</option>
													<option value="36">3年</option>
													<option value="24">2年</option>
													<option value="15">1年</option>
													<option value="6">6月</option>
												</select> -->
												<input name="zhuqi" id="zhuqi3"
													onkeyup="this.value=this.value.replace(/\D/g,'')"
													onafterpaste="this.value=this.value.replace(/\D/g,'')" />
											</div>
										</div>
									</li>
									<li class="container">
										<div class="row">
											<div class="col-sm-2 col-xs-4">验证码：</div>
											<div class="col-sm-5 col-xs-4">
												<input name="sms" id="sms3" type="text" value="">
											</div>
											<div class="col-sm-4 col-xs-4">
												<input type="button" value="获取验证码"
													style="font-size: 13px; padding: 6px;"
													onclick="sendDuanxiny(this,30)" />
											</div>
										</div>
									</li>
								</ul>
							</div>

							<div
								class="add-form_lable ui-form-item ui-form-item-checkbox ui-border-b">

								<label class="ui-checkbox"> <input type="checkbox"
									checked id="checkbox3"
									onclick="if (this.checked==false) {enable()} else {disable()}">
								</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span> <a
									href="${pageContext.request.contextPath }/Files/readfile.do">阅读《用户须知》。</a>
									<br /> <span id="spanid3"
									style="color: red; font-size: 5px; display: none;"><strong>必须先同意此协议!</strong></span>
								</span>
							</div>
							<div class="foot_button">
								<input name="button" type="submit" id="tj-button3"
									class="sh_button" value="提交审核">
							</div>
							<div class="visible"></div>
						</div>
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
	<!-- ajaxFile -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/Style/Admin/js/ajaxfileupload.js"></script>
	<script>
		(function() {
			[].slice.call(document.querySelectorAll('.tabs')).forEach(
					function(el) {
						new CBPFWTabs(el);
					});

		})();
		function CFile() {
			document.getElementById("file").click();
		}
		function DelPic(id) {//序号值
			var delid = 'del' + id;
			var url = document.getElementById(delid).value;
			$
					.ajax({
						type : 'POST',
						async : false, // 设置同步方式
						cache : false,
						url : '${pageContext.servletContext.contextPath}/User/delpic.do',
						data : {
							'picurl' : url
						},//ajax刷新
						dataType : 'json',
						success : function(data) {
							//更新url组数据
							var str = document.getElementById("picurls").value;
							var arr = new Array();
							arr = str.split("-");
							var newurl = "";
							for (var i = 0; i < arr.length; i++) {
								if (arr[i] == url) {
									continue;
								}
								newurl = newurl + "-" + arr[i];
							}
							$(".picurls").attr("value", newurl);
							$(".p" + id).attr("style", "display:none;");
							$(".pdel" + id).attr("style", "display:none;");

						},
						error : function(data, status, e) {
							alert(e);
						}
					});
		}
		function addpicurl() {
			var pl = document.getElementById("picnums").value;
			$(".p" + (Number(pl) + Number(1)))
					.attr("src",
							"${pageContext.servletContext.contextPath}/Style/img/load.gif");
			$(".p" + (Number(pl) + Number(1))).attr("width", "85px");
			$(".p" + (Number(pl) + Number(1))).attr("height", "85px");
			var file = $("#file");
			if ($.trim(file.val()) == '') {
				alert("请选择照片!");
				return false;
			}
			var elementIds = [ "file" ]; // flag为id、name属性名
			$
					.ajaxFileUpload({
						url : '${pageContext.servletContext.contextPath}/User/addpicurl.do',
						type : 'post',
						secureuri : false, // 一般设置为false
						fileElementId : 'file', // 上传文件的id、name属性名
						dataType : 'json', // 返回值类型，一般设置为json、application/json
						elementIds : elementIds, // 传递参数到服务器
						success : function(data) {
							var result = '<img width="300px" scr="${pageContext.servletContext.contextPath}'+data.picurl+'"/>'
							var pu = document.getElementById("picurls").value;
							var pn = document.getElementById("picnums").value;
							if (pu != 0) {
								if (pu == 15) {
									alert('您最多只能上传15张照片！')
								}
								$(".picurls").attr("value",
										pu + "-" + data.picurl);
								$(".p" + (Number(pn) + Number(1))).attr(
										"src",
										"${pageContext.servletContext.contextPath}"
												+ data.picurl);
								$(".p" + (Number(pn) + Number(1))).attr(
										"width", "85px");
								$(".p" + (Number(pn) + Number(1))).attr(
										"height", "85px");
								$(".pdel" + (Number(pn) + Number(1)))
										.attr("src",
												"${pageContext.request.contextPath }/Style/img/del0.png");
								$(".pdel" + (Number(pn) + Number(1))).attr(
										"width", "15px");
								$(".pdel" + (Number(pn) + Number(1))).attr(
										"height", "15px");
								$('.picnums').attr("value",
										(Number(pn) + Number(1)));
								$('#del' + (Number(pn) + Number(1))).attr(
										"value", data.picurl);

							} else {
								$('.picurls').attr("value", "");
								$(".picurls").attr("value", data.picurl);
								$(".p1").attr(
										"src",
										"${pageContext.servletContext.contextPath}"
												+ data.picurl);
								$(".p1").attr("width", "85px");
								$(".p1").attr("height", "85px");
								$(".pdel1")
										.attr("src",
												"${pageContext.request.contextPath }/Style/img/del0.png");
								$(".pdel1").attr("width", "15px");
								$(".pdel1").attr("height", "15px");
								$('.picnums').attr("value", "1");
								$('#del1').attr("value", data.picurl);
							}
						},
						error : function(data, status, e) {
							alert(e);
						}
					});
		}
		function disable() {

			document.getElementById("spanid1").style.display = "none";
			document.getElementById("spanid2").style.display = "none";
			document.getElementById("spanid3").style.display = "none";
		}
		function enable() {
			alert("请同意《用户须知》");//弹出提示
			/* document.getElementById("spanid1").style.display = "";
			document.getElementById("spanid2").style.display = "";
			document.getElementById("spanid3").style.display = ""; */
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

			var pw1 = document.getElementById("sms").value;
			if (pw1 != "") {

			} else {
				alert("验证码不能为空");//弹出提示
				return false;
			}

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
			if (document.getElementById("datex").value == "0"
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
			var a = "true";
			$
					.ajax({
						type : 'POST',
						async : false, // 设置同步方式
						cache : false,
						url : '${pageContext.servletContext.contextPath}/Phone/PhoneCodeCheck.do',
						dataType : "text",
						data : {
							passnum : pw1
						},
						success : function(data) {
							if (data == "false") {
								a = "false";
							}
						}
					});
			if (a == "false" || a == "") {
				alert("验证码填写错误");
				return false;
			} else
				return true;

		}

		function passx() {
			var pw1 = document.getElementById("sms2").value;

			if (pw1 != "") {

			} else {
				alert("验证码不能为空");//弹出提示
				return false;
			}
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
			if (document.getElementById("datey").value == "0"
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

			var a = "true";
			$
					.ajax({
						type : 'POST',
						async : false, // 设置同步方式
						cache : false,
						url : '${pageContext.servletContext.contextPath}/Phone/PhoneCodeCheck.do',
						dataType : "text",
						data : {
							passnum : pw1
						},
						success : function(data) {
							if (data == "false") {
								a = "false";
							}
						}
					});
			if (a == "false" || a == "") {
				alert("验证码填写错误");
				return false;
			} else
				return true;

		}
		function passy() {
			var pw1 = document.getElementById("sms3").value;
			if (pw1 != "") {

			} else {
				alert("验证码不能为空");//弹出提示
				return false;
			}

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
			if (document.getElementById("datez").value == "0"
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

			var a = "true";
			$
					.ajax({
						type : 'POST',
						async : false, // 设置同步方式
						cache : false,
						url : '${pageContext.servletContext.contextPath}/Phone/PhoneCodeCheck.do',
						dataType : "text",
						data : {
							passnum : pw1
						},
						success : function(data) {
							if (data == "false") {
								a = "false";
							}
						}
					});
			if (a == "false" || a == "") {
				alert("验证码填写错误");
				return false;
			} else
				return true;

		}
	</script>
	<!-- 发送短信 -->
	<script type="text/javascript">
		function sendDuanxinw(obj, second) {
			if (second == 30) {
				var tel_s = document.getElementById("tel").value;
				if (tel_s == "") {
					alert("请输入电话号码！");
					return;
				}
				$
						.ajax({
							type : 'POST',
							url : '${pageContext.servletContext.contextPath}/Phone/getPhoneCode.do',
							dataType : "text",
							data : {
								phone : tel_s
							},
							success : function(data) {
								if (data == "true")
									alert("短信发送成功");

							}
						});
				second = second - 1;
			}

			if (second > 0) {
				buttonDefaultValue = obj.defaultValue;
				obj.disabled = true;
				obj.value = '重新获取(' + second + 's)';
				second = second - 1;
				setTimeout(function() {
					sendDuanxinw(obj, second);
				}, 1000);
			} else {
				obj.disabled = false;
				obj.value = '获取验证码';
			}
			;
		}

		function sendDuanxinx(obj, second) {
			if (second == 30) {
				var tel_s = document.getElementById("tel2").value;
				if (tel_s == "") {
					alert("请输入电话号码！");
					return;
				}
				$
						.ajax({
							type : 'POST',
							url : '${pageContext.servletContext.contextPath}/Phone/getPhoneCode.do',
							dataType : "text",
							data : {
								phone : tel_s
							},
							success : function(data) {
								if (data == "true")
									alert("短信发送成功");

							}
						});
				second = second - 1;
			}

			if (second > 0) {
				buttonDefaultValue = obj.defaultValue;
				obj.disabled = true;
				obj.value = '重新获取(' + second + 's)';
				second = second - 1;
				setTimeout(function() {
					sendDuanxinw(obj, second);
				}, 1000);
			} else {
				obj.disabled = false;
				obj.value = '获取验证码';
			}
			;

		}

		function sendDuanxiny(obj, second) {
			if (second == 30) {
				var tel_s = document.getElementById("tel3").value;
				if (tel_s == "") {
					alert("请输入电话号码！");
					return;
				}
				$
						.ajax({
							type : 'POST',
							url : '${pageContext.servletContext.contextPath}/Phone/getPhoneCode.do',
							dataType : "text",
							data : {
								phone : tel_s
							},
							success : function(data) {
								if (data == "true")
									alert("短信发送成功");

							}
						});
				second = second - 1;
			}

			if (second > 0) {
				buttonDefaultValue = obj.defaultValue;
				obj.disabled = true;
				obj.value = '重新获取(' + second + 's)';
				second = second - 1;
				setTimeout(function() {
					sendDuanxinw(obj, second);
				}, 1000);
			} else {
				obj.disabled = false;
				obj.value = '获取验证码';
			}
			;

		}
	</script>
	<%-- 	<script
		src="${pageContext.request.contextPath}/Api/wxuploadapi/upload.js"></script> --%>
</body>
</html>