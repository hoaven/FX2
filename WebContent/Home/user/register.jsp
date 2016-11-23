﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.zhanwkj.fx2.model.*,java.util.*"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta name="format-detection" content="telephone=no" />
        <meta name="viewport" content="width=device-width, user-scalable=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />

<title>完善信息-快租平台</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/fxe.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/page.css" />
<link
	href="${pageContext.request.contextPath}/Style/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/Style/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/Style/js/bootstrap.min.js"></script>

<script
	src="${pageContext.request.contextPath}/Style/js/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath}/Manage/js/commom.js"></script>
</head>

<body>
	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/top.jsp" />

	<section class="page-dope">
		<div class="summary_dope">
			<h2>完善信息说明</h2>
			<p>快租平台不会给任何第三方平台提供您的信息，本平台也不会出现您的个人联系方式，保证您的个人隐私，杜绝不必要的骚扰</p>
		</div>
	</section>
	<form action="${pageContext.request.contextPath }/User/addper.do"
		method="POST" onsubmit="return pass()">
		<section class="addform">
			<div class="th_form">
				<h3>基本信息</h3>
			</div>
			<table>
				<tr>
					<td class="TDleft">姓 名：</td>
					<td><input name="turename" id="name" type="text" value=""
						style="margin-left: 25px"></td>
				</tr>
				<tr>
					<td class="TDleft">性 别：</td>
					<td style="padding-left: 15px; width: 100%"><select name="sex"
						style="width: 100%">
							<option value="1">先生</option>
							<option value="2">女士</option>
					</select></td>
				</tr>
				<tr>
					<td class="TDleft">电 话：</td>
					<td colspan="3"><input name="name" id="tel" type="text"
						value="" style="margin-left: 25px"></td>
				</tr>
				<tr>
					<td class="TDleft">验 证 码：</td>
					<td colspan="3"><input name="num" id="num" type="text"
						value="" style="margin-left: 25px"></td>
					<td colspan="2">
						<div
							style="width: 73px; line-height: 26px; text-align: center; float: left">
							<input type="button" value="获取验证码" onclick="sendDuanxin(this,30)"
								style="font-size: 13px; padding: 5px; background: #ccc" />
						</div>
					</td>
				</tr>
			</table>

			<div class="foot_btn">
				<input name="button" type="submit" id="button" class="bl_button"
					value="下一步" />
			</div>
			<div class="visible"></div>
		</section>
	</form> 
</body>
<script type="text/javascript">

		function sendDuanxin(obj, second) {
			if (second == 30)
				{var tel_s = document.getElementById("tel").value;
				if(tel_s=="")
					{alert("请输入电话号码！");
					return ;
					}
					$.ajax({
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
					second=second-1;
				}
				
			if (second > 0) {
					buttonDefaultValue = obj.defaultValue;
					obj.disabled = true;
					obj.value = '重新获取(' + second + 's)';
					second=second-1;
					setTimeout(function() {sendDuanxinw(obj, second);}, 1000);
				} else {
					obj.disabled = false;
					obj.value = '获取验证码';
				};
		}
		</script>
<script type="text/javascript">
function pass() {
	var name = document.getElementById("name").value;

	if (name == "") {
			alert("请输入姓名");
			return false;
		}
	var pw1 = document.getElementById("num").value;
		if (document.getElementById("tel").value == "") {
			alert("请输入电话");
			return false;
		}
		var a = "true";
		$.ajax({
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
</html>
