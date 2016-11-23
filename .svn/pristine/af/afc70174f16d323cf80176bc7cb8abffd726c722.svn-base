/**
 * 
 */

// 添加蜂小二
function addFx2() {
	$('#addFx2form')[0].reset();// 对表单清空
	$('#addFx2Modal').modal('show');
}

function addpicurl() {
	// 判断是否选择照片
	var file = $("#file");
	if ($.trim(file.val()) == '') {
		alert("请选择照片!");
		return false;
	}
	var elementIds = [ "file" ]; // flag为id、name属性名
	$.ajaxFileUpload({
		url : getRootPath() + '/Manage/addpicurl.do',
		type : 'post',
		data : {
			renthouseid : $('#renthouseid').val()
		},
		secureuri : false, // 一般设置为false
		fileElementId : 'file', // 上传文件的id、name属性名
		dataType : 'json', // 返回值类型，一般设置为json、application/json
		elementIds : elementIds, // 传递参数到服务器
		success : function(data) {
			alert("上传成功！");
			$('#addFx2Modal').modal('hide');
			window.location.href = getRootPath() + "/Manage/picurl3.do?id="+$('#renthouseid').val();
		},
		error : function(data, status, e) {
			alert(e);
		}
	});
}

function deletepicurl(f) {
	if (confirm("是否确认")) {
		$.post(getRootPath() + "/Manage/delpicurl.do", {
			id : $('#renthouseid').val(),
			f:f
		}, function(data) {
			window.location.href = getRootPath() + "/Manage/picurl3.do?id="+$('#renthouseid').val();
		});
	} else {
		return false;
	}
}
