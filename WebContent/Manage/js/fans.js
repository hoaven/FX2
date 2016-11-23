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
		url : getRootPath() + '/Manage/findFansById.do',
		cache : false,
		error : function(data) {
			alert("出错了！！");
		},
		success : function(data) {
			$('#id1').val(data.id);
			$('#type1').val(data.type);
			$('#truename1').val(data.truename);
			$('#mobile1').val(data.mobile);
			$('#integral1').val(data.integral);
			$('#upfx2modal').modal('show');
		}
	});
}

function upFansById() {
	$.ajax({
		data : {
			id:$('#id1').val(),
			type:$('#type1').val(),
			truename:$('#truename1').val(),
			mobile:$('#mobile1').val(),
			integral:$('#integral1').val()
		},
		type : 'post',
		dataType : 'json',
		url : getRootPath() + '/Manage/updateFansById1.do',
		cache : false,
		error : function(data) {
			alert("出错了！！");
		},
		success : function(data) {
			alert("修改成功！");
			$('#upfx2modal').modal('hide');
			window.location.href = getRootPath() + "/Manage/findFans.do"
		}
	})
}

function deFx2(id) {
	if (confirm("是否确认")) {
		$.post(getRootPath() + "/Manage/deleteFansById.do", {
			id : id
		}, function(data) {
			window.location.href = getRootPath() + "/Manage/findFans.do"
		});
	} else {
		return false;
	}
}
