/**
 * 
 */

function upFx2(id) {
	$.ajax({
		data : {
			id : id
		},
		type : 'post',
		dataType : 'json',
		url : getRootPath() + '/Manage/findManageById.do',
		cache : false,
		error : function(data) {
			alert("出错了！！");
		},
		success : function(data) {
			$('#id1').val(data.id);
			$('#username1').val(data.username);
			$('#roll1').val(data.roll);
			$('#upfx2modal').modal('show');
		}
	});
}

function upFansById() {
	$.ajax({
		data : {
			id:$('#id1').val(),
			username:$('#username1').val(),
			password:$("#password1").val(),
			roll:$('#roll1').val()
		},
		type : 'post',
		dataType : 'json',
		url : getRootPath() + '/Manage/updateManageById1.do',
		cache : false,
		error : function(data) {
			alert("出错了！！");
		},
		success : function(data) {
			alert("修改成功！");
			$('#upfx2modal').modal('hide');
			window.location.href = getRootPath() + "/Manage/qxmanage.do"
		}
	})
}

function deFx2(id) {
	if (confirm("是否确认")) {
		$.post(getRootPath() + "/Manage/deleteManageById.do", {
			id : id
		}, function(data) {
			window.location.href = getRootPath() + "/Manage/qxmanage.do"
		});
	} else {
		return false;
	}
}


//添加蜂小二
function addFx2() {
	$('#addFx2form')[0].reset();// 对表单清空
	$('#addfx2modal').modal('show');
}

function addFansById() {
	$.ajax({
		data : {
			username:$('#username2').val(),
			password:$("#password5").val(),
			roll:$('#roll2').val()
		},
		type : 'post',
		dataType : 'json',
		url : getRootPath() + '/Manage/addManageById1.do',
		cache : false,
		error : function(data) {
			alert("出错了！！");
		},
		success : function(data) {
			alert("修改成功！");
			$('#addfx2modal').modal('hide');
			window.location.href = getRootPath() + "/Manage/qxmanage.do"
		}
	})
}

