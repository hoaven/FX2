/**
 * 
 */

function shangjia1(id) {
	if (window.confirm('你确定要上架吗？')) {
		$.post(getRootPath() + "/Manage/updateshangjia.do", {
			id : id
		}, function(data) {
			window.location.href = getRootPath()
					+ "/Manage/findRenthouse1.do?operation=1"
		});
	} else {
		return false;
	}
}
function shangjia2(id) {
	if (window.confirm('你确定要下架吗？')) {
		$.post(getRootPath() + "/Manage/updateshangjia.do", {
			id : id
		}, function(data) {
			window.location.href = getRootPath()
					+ "/Manage/findRenthouse1.do?operation=1"
		});
	} else {
		return false;
	}
}

function findrenthouse(id) {
	$("#picurl").empty();
	$("#equitment").empty();
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
			$("#title").text(data.title);
			$("#address").text(data.address);
			var str = data.picurl;
			var arr = str.split("-");
			for ( var i in arr) {
				$("#picurl").append(
						"<img height='80px' width='80px' src=" + getRootPath()
								+ arr[i] + ">&nbsp;&nbsp;&nbsp;");
			}

			if (data.aparttype == 1) {
				$("#aparttype").text("一室");
			} else if (data.aparttype == 2) {
				$("#aparttype").text("一室一厅");
			} else if (data.aparttype == 3) {
				$("#aparttype").text("一室两厅");
			} else if (data.aparttype == 4) {
				$("#aparttype").text("一室一厅一卫");
			} else if (data.aparttype == 5) {
				$("#aparttype").text("两室一厅一卫");
			} else if (data.aparttype == 6) {
				$("#aparttype").text("两室两厅两卫");
			} else if (data.aparttype == 7) {
				$("#aparttype").text("三室一厅一卫");
			} else if (data.aparttype == 8) {
				$("#aparttype").text("三室两厅两卫");
			} else if (data.aparttype == 9) {
				$("#aparttype").text("五室以上");
			}

			$("#area").text(data.area);

			$("#louceng")
					.text("第" + data.floor + "层，共" + data.floorcount + "层");

			if (data.renovation == 1) {
				$("#renovation").text("简装");
			} else if (data.renovation == 2) {
				$("#renovation").text("精装");
			} else {
				$("#renovation").text("毛胚");
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
			$("#price").text(data.price);
			$("#description").text(data.description);
			$("#tjname").text(data.tjname);
			$("#tjtel").text(data.tjtel);

			if (data.sex == 1) {
				$("#sex").text("男");
			} else if (data.sex == 2) {
				$("#sex").text("女");
			} else {
				$("#sex").text("未知");
			}

			$("#phone").text(data.phone);

			var str = data.equitment;
			var arr = str.split("/");
			if (arr[0] == 1) {
				$("#equitment").append("床铺/")
			}
			if (arr[1] == 1) {
				$("#equitment").append("电视/")
			}
			if (arr[2] == 1) {
				$("#equitment").append("洗衣机/")
			}
			if (arr[3] == 1) {
				$("#equitment").append("空调/")
			}
			if (arr[4] == 1) {
				$("#equitment").append("冰箱/")
			}
			if (arr[5] == 1) {
				$("#equitment").append("热水器/")
			}
			if (arr[6] == 1) {
				$("#equitment").append("宽带/")
			}
			if (arr[7] == 1) {
				$("#equitment").append("厨卫")
			}

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



// 添加蜂小二
function addFx2() {
	$('#addrhform')[0].reset();// 对表单清空
	$('#addrhModal').modal('show');
}

function addrthouse() {
	var equitment1 = document.getElementsByName('equitment');
	var s = "";
	for (var i = 0; i < equitment1.length; i++) {
		if(i==7){
			if (equitment1[i].checked) {
				s = s+'1';
			} else {
				s = s+'0';
			}
		}else{
			if (equitment1[i].checked) {
				s = s+'1/';
			} else {
				s = s+'0/';
			}
		}
		
	}
	
	$.ajax({
		data : {
			title : $("#title1").val(),
			address : $("#address1").val(),
			aparttype : $("#aparttype1").val(),
			area : $("#area1").val(),
			floor : $("#floor1").val(),
			floorcount : $("#floorcount1").val(),
			equitment : s,
			renovation : $("#renovation1").val(),
			chicktime : $("#chicktime1").val(),
			price : $("#price1").val(),
			description : $("#description1").val(),
			paytype : $("#paytype1").val(),
			uid : $("#uid1").val(),
			name : $("#name1").val(),
			sex : $("#sex1").val(),
			phone : $("#phone1").val(),
			studio : $("#studio1").val(),
			iswrite : $("#iswrite1").val(),
			status : $("#status1").val(),
			trus : $("#trus1").val(),
		},
		type : 'post',
		dataType : 'json',
		url : getRootPath() + '/Manage/addRenthouse1.do',
		cache : false,
		error : function(data) {
			alert("出错了！！");
		},
		success : function(data) {
			alert("添加成功！");
			$('#addrhModal').modal('hide');
			window.location.href = getRootPath()
			+ "/Manage/findRenthouse1.do?operation=1"
		}
	})
}

function deleterenthouse(id) {
	if (confirm("是否确认")) {
		$.post(getRootPath() + "/Manage/deleterenthouseById.do", {
			id : id
		}, function(data) {
			window.location.href = getRootPath()
					+ "/Manage/findRenthouse1.do?operation=1"
		});
	} else {
		return false;
	}
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
			+ "/Manage/findRenthouse1.do?operation=1"
		}
	});
}
