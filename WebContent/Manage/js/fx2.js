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
		url : getRootPath() + '/Manage/findFx2ById.do',
		cache : false,
		error : function(data) {
			alert("出错了！！");
		},
		success : function(data) {
			$('#id1').val(data.id);
			$('#name1').val(data.name);
			if (data.sex == 1) {
				$("#sex1 option[value='1']").attr("selected", "selected");
			} else if (data.sex == 2) {
				$("#sex1 option[value='2']").attr("selected", "selected");
			} else {
				$("#sex1 option[value='3']").attr("selected", "selected");
			}
			;
			$('#psd1').val(data.password);
			$('#phone1').val(data.phone);
			$('#business1').val(data.business);
			$('#address1').val(data.address);
			$('#seenum1').val(data.seenum);
			$('#sunum1').val(data.sunum);
			$('#score1').val(data.score);

			$('#upfx2modal').modal('show');
		}
	});
}

// 修改蜂小二
function upFx2ById() {
	// 判断是否选择照片
	var file = $("#file");
	
	var score=$('#score1').val();
	if((score>5)||(score<0)){
		alert("抱歉,蜂小二综合评分范围为0-5！")
		return false;
	}

	if ($.trim(file.val()) != '') {
		var elementIds = [ "file" ]; // flag为id、name属性名
		$.ajaxFileUpload({
			url : getRootPath() + '/Manage/updateFx2ById1.do',
			type : 'post',
			data : {
				id : $('#id1').val(),
				name : $('#name1').val(),
				sex : $('#sex1').val(),
				password:$('#psd1').val(),
				phone : $('#phone1').val(),
				business : $('#business1').val(),
				address : $('#address1').val(),
				seenum : $('#seenum1').val(),
				sunum : $('#sunum1').val(),
				score : $('#score1').val()
			},
			secureuri : false, // 一般设置为false
			fileElementId : 'file', // 上传文件的id、name属性名
			dataType : 'json', // 返回值类型，一般设置为json、application/json
			elementIds : elementIds, // 传递参数到服务器
			success : function(data) {
				alert("修改成功！");
				$('#upfx2modal').modal('hide');
				window.location.href = getRootPath() + "/Manage/findFx2.do"
			},
			error : function(data, status, e) {
				alert(e);
			}
		});
	} else {
		$.ajax({
			data : {
				id : $('#id1').val(),
				name : $('#name1').val(),
				sex : $('#sex1').val(),
				password:$('#psd1').val(),
				phone : $('#phone1').val(),
				business : $('#business1').val(),
				address : $('#address1').val(),
				seenum : $('#seenum1').val(),
				sunum : $('#sunum1').val(),
				score : $('#score1').val()
			},
			type : 'post',
			dataType : 'json',
			url : getRootPath() + '/Manage/updateFx2ById2.do',
			cache : false,
			error : function(data) {
				alert("出错了！！");
			},
			success : function(data) {
				alert("修改成功！");
				$('#upfx2modal').modal('hide');
				window.location.href = getRootPath() + "/Manage/findFx2.do"
			}
		})
	}
}

// 添加蜂小二
function addFx2() {
	$('#addFx2form')[0].reset();// 对表单清空
	$('#addFx2Modal').modal('show');
}

function addFx2ById() {
	// 判断是否选择照片
	var file = $("#file1");
	if ($.trim(file.val()) == '') {
		alert("请选择照片!");
		return false;
	}
	var elementIds = [ "file1" ]; // flag为id、name属性名
	$.ajaxFileUpload({
		url : getRootPath() + '/Manage/addFx2ById.do',
		type : 'post',
		data : {
			name : $('#name2').val(),
			sex : $('#sex2').val(),
			password:$('#psd2').val(),
			phone : $('#phone2').val(),
			business : $('#business2').val(),
			address : $('#address2').val(),
			seenum : $('#seenum2').val(),
			sunum : $('#sunum2').val(),
			score : $('#score2').val()
		},
		secureuri : false, // 一般设置为false
		fileElementId : 'file1', // 上传文件的id、name属性名
		dataType : 'json', // 返回值类型，一般设置为json、application/json
		elementIds : elementIds, // 传递参数到服务器
		success : function(data) {
			alert("添加成功！");
			$('#addFx2Modal').modal('hide');
			window.location.href = getRootPath() + "/Manage/findFx2.do"
		},
		error : function(data, status, e) {
			alert(e);
		}
	});
}

function deleteFx2(id) {
	if (confirm("是否确认")) {
		$.post(getRootPath() + "/Manage/deleteFx2ById.do", {
			id : id
		}, function(data) {
			window.location.href = getRootPath() + "/Manage/findFx2.do"
		});
	} else {
		return false;
	}
}
