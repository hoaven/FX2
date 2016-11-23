/**
 * 这个js是所有的页面公用的
 */
// 获取项目名
function getRootPath() {
	return "http://localhost:8080/FX2";
}
//判断是否为数字
function checkRate(input) {
	var re = /^[0-9]+.?[0-9]*$/; // 判断字符串是否为数字 //判断正整数 /^[1-9]+[0-9]*]*$/
	var nubmer = document.getElementById(input).value;

	if (!re.test(nubmer)) {
		alert("请输入数字");
		document.getElementById(input).value = "";
		return false;
	}
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
	$.post(getRootPath() + "/Manage/updatepassword.do", {
		manageID : $("#manageId").val(),
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

//判断图片类型
function checkImgType(ths) {
	if (ths.value == "") {
		alert("请上传图片");
		return false;
	} else {
		if (!/\.(gif|jpg|jpeg|png|GIF|JPG|PNG)$/.test(ths.value)) {
			alert("图片类型必须是.gif,jpeg,jpg,png中的一种!");
			ths.value = "";
			return false;
		} else {
			var img = new Image();
			img.src = filepath;
			var height = img.height;
			var width = img.width;
			while (true) {
				if (img.fileSize > 0) {
					// 这类可以控制像素的大小
					if (img.fileSize > 1 * 1024) {
						alert("图片不大于1M!");
						return false;
					}
					break;
				}
			}
		}
	}
	return true;
}