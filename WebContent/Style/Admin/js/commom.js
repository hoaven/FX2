/**
 * 这个js是所有的页面公用的
 */
// 获取项目名
function getRootPath() {
	var pathName = window.document.location.pathname;
	var projectName = pathName
			.substring(0, pathName.substr(1).indexOf('/') + 1);
	return projectName;
}
// 修改密码
function updatepassword() {
	var p1 = $("#password1").val();
	var p2 = $("#password2").val();
	var p3 = $("#password3").val();
	if ("" == p1.trim() || "" == p2.trim() || "" == p3.trim()) {
		alert("密码不能为空!");
		return false;
	}
	if (p2 != p3) {
		alert("两次输入密码不相同!");
		return false;
	}
	$.post(getRootPath() + "/admin/updatepassword.do", {
		adminId : $("#adminId").val(),
		password1 : p1,
		password2 : p2
	}, function(data) {
		if (data == "true") {
			alert("修改成功!");
			$('#updatepass').modal('hide');
		} else if (data == "false") {
			alert("旧密码错误!");
		}
	});
}
// 修改个人信息
function updateAdmin() {
	$.post(getRootPath() + "/admin/updatead.do", {
		adminId : $("#adminId1").val(),
		username : $("#username1").val(),
		realname : $("#realname1").val(),
		sex : $('input[name="sex"]:checked').val(),
		weixin : $("#weixin1").val(),
		qq:$("#qq1").val(),
		telephone : $("#telephone1").val(),
		email : $("#email1").val()
	}, function(data) {
		if (data == "true") {
			alert("修改成功!");
			$('#updateAd').modal('hide');
		} else if (data == "false") {
			alert("修改失败!");
		}
	});
}
