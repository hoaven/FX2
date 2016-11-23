/**
 * 
 */


function shangjia1(id) {
	if (window.confirm('你确定要上架吗？')) {
		$.post(getRootPath() + "/Manage/updateshangjia.do", {
			id:id
		}, function(data) {
			window.location.href = getRootPath() + "/Manage/findRenthouse1.do?operation=3"
		});
	} else {
		return false;
	}
}
function shangjia2(id) {
	if (window.confirm('你确定要下架吗？')) {
		$.post(getRootPath() + "/Manage/updateshangjia.do", {
			id:id
		}, function(data) {
			window.location.href = getRootPath() + "/Manage/findRenthouse1.do?operation=3"
		});
	} else {
		return false;
	}
}

function findrenthouse(id) {
	$.ajax({
		data : {
			id : id
		},
		type : 'post',
		dataType : 'json',
		url : getRootPath() + '/Manage/findrenthouse.do',
		cache : false,
		error : function(data) {
			alert("出错了！！");
		},
		success : function(data) {
			if (data.sptype == 1) {
				$("#sptype").text("街铺");
			} else if (data.sptype == 2) {
				$("#sptype").text("百货超市");
			} else if (data.sptype == 3) {
				$("#sptype").text("专业市场");
			} else if (data.sptype == 4) {
				$("#sptype").text("其他");
			} 
			
			$("#title").text(data.title);
			$("#address").text(data.address);
			var str = data.picurl;
			var arr = str.split("-");
			for ( var i in arr) {
				$("#picurl").append(
						"<img height='80px' width='80px' src=" + getRootPath()
								+ arr[i] + ">");
			}
			$("#area").text(data.area);
			if (data.renovation == 1) {
				$("#renovation").text("简装");
			} else if (data.renovation == 2) {
				$("#renovation").text("精装");
			} else {
				$("#renovation").text("毛胚");
			}
			
			if (data.shanpuwork == 1) {
				$("#shanpuwork").text("服装类");
			} else if (data.shanpuwork == 2) {
				$("#shanpuwork").text("电器类");
			} else if (data.shanpuwork == 3) {
				$("#shanpuwork").text("食品类");
			} else {
				$("#shanpuwork").text("其他类");
			}
			
			$("#zxdate").text(data.zxdate);
			$("#transferfee").text(data.transferfee);
			$("#renttime").text(data.renttime);
			if (data.shanpuwork == 1) {
				$("#shanpuwork").text("服装类");
			} else if (data.shanpuwork == 2) {
				$("#shanpuwork").text("电器类");
			} else if (data.shanpuwork == 3){
				$("#shanpuwork").text("食品类");
			}else if (data.shanpuwork == 4){
				$("#shanpuwork").text("其他");
			}
			if (data.paytype == 1) {
				$("#paytype").text("押一付一");
			} else if (data.paytype == 2) {
				$("#paytype").text("押一付二");
			} else if (data.paytype == 3) {
				$("#paytype").text("押二付一");
			} else if (data.paytype == 4) {
				$("#paytype").text("押二付二");
			} else if (data.paytype == 5) {
				$("#paytype").text("押二付三");
			} else if (data.paytype == 6) {
				$("#paytype").text("押三付一");
			} else if (data.paytype == 7) {
				$("#paytype").text("押三付二");
			} else if (data.paytype == 8) {
				$("#paytype").text("押三付三");
			} else if (data.paytype == 9) {
				$("#paytype").text("押三付六");
			}
			$("#chicktime").text(data.chicktime);
			$("#uid").text(data.uid);
			$("#name").text(data.name);
			if (data.shenfen == 1) {
				$("#shenfen").text("业主");
			} else if (data.shenfen == 2) {
				$("#shenfen").text("租客");
			} else {
				$("#shenfen").text("管理员");
			}

			if (data.sex == 1) {
				$("#sex").text("男");
			} else if (data.sex == 2) {
				$("#sex").text("女");
			} else {
				$("#sex").text("未知");
			}

			$("#phone").text(data.phone);
			
			if (data.trus == 2) {
				$("#trus").text("未托管");
			} else if (data.trus == 1) {
				$("#trus").text("已托管");
			}
			if (data.studio == 2) {
				$("#studio").text("未通过");
			} else if (data.studio == 1) {
				$("#studio").text("通过");
			}
			if (data.iswrite == 1) {
				$("#iswrite").text("签约");
			} else if (data.iswrite == 2) {
				$("#iswrite").text("未签约");
			}
			if (data.status == 2) {
				$("#status").text("下架");
			} else if (data.status == 1) {
				$("#status").text("上架");
			}

			$("#clicknum").text(data.clicknum);
			$("#colnum").text(data.colnum);
			$("#fid").text(data.fx2name);

			$('#findrhModal').modal('show');
		}
	});
}


function deleterenthouse(id) {
	if (confirm("是否确认")) {
		$.post(getRootPath() + "/Manage/deleterenthouseById.do", {
			id : id
		}, function(data) {
			window.location.href = getRootPath() + "/Manage/findRenthouse1.do?operation=3"
		});
	} else {
		return false;
	}
}

//添加蜂小二
function addFx2() {
	$('#addrhform')[0].reset();// 对表单清空
	$('#addrhModal').modal('show');
}

function addrthouse() {
	$.ajax({
		data : {
			sptype : $("#sptype1").val(),
			title : $("#title1").val(),
			address : $("#address1").val(),
			area : $("#area1").val(),
			zxdate : $("#zxdate1").val(),
			transferfee : $("#transferfee1").val(),
			renttime : $("#renttime1").val(),
			renovation : $("#renovation1").val(),
			chicktime : $("#chicktime1").val(),
			price : $("#price1").val(),
			description : $("#description1").val(),
			shanpuwork : $("#shanpuwork1").val(),
			paytype : $("#paytype1").val(),
			uid : $("#uid1").val(),
			name : $("#name1").val(),
			shenfen : $("#shenfen1").val(),
			sex : $("#sex1").val(),
			phone : $("#phone1").val(),
			studio : $("#studio1").val(),
			iswrite : $("#iswrite1").val(),
			status : $("#status1").val(),
			trus : $("#trus1").val(),
		},
		type : 'post',
		dataType : 'json',
		url : getRootPath() + '/Manage/addRenthouse3.do',
		cache : false,
		error : function(data) {
			alert("出错了！！");
		},
		success : function(data) {
			alert("添加成功！");
			$('#addrhModal').modal('hide');
			window.location.href = getRootPath()
			+ "/Manage/findRenthouse1.do?operation=3"
		}
	})
}


//绑定蜂小二
function bdrenthouse(id){
	$("#fx2").empty();
	$.ajax({
		data : {
			id : id
		},
		type : 'post',
		dataType : 'json',
		url : getRootPath() + '/Manage/findAllFx2.do',
		cache : false,
		error : function(data) {
			alert("出错了！！");
		},
		success : function(data) {
			$("#renthid").val(id);
			for(var i in data){
				$("#fx2").append("<option value="+data[i].id+">"+data[i].name+"</option>")
			}
			$('#bdfx2Modal').modal('show');
		}
	});
}

function bdfx2ById(){
	$.ajax({
		data : {
			id : $("#renthid").val(),
			fx2id:$("#fx2").val()
		},
		type : 'post',
		dataType : 'json',
		url : getRootPath() + '/Manage/bdFx2.do',
		cache : false,
		error : function(data) {
			alert("出错了！！");
		},
		success : function(data) {
			alert("绑定成功！")
			$('#bdfx2Modal').modal('hide');
			window.location.href = getRootPath()
			+ "/Manage/findRenthouse1.do?operation=3"
		}
	});
}

