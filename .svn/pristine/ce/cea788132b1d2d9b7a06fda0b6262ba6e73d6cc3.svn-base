

$(function(){
	//房源广播
	$('.fygb').on('click',function(){
		var rid = document.getElementById("rid").value;
			$.post(getRootPath() + "/Check/FyReport.do", {
				rid:rid
			}, function(data) {
				if (data == "true") {
					alert("启动成功!");
					return true;
				} else if (data == "false") {
					alert("系统异常，请稍后重试！");//弹出提示
					return false;
				}
			});
		
	})
	
	//全程委托
//	$('.wtfw').on('click',function(){
//		var rid = document.getElementById("rid").value;
//			$.post(getRootPath() + "/Check/FyTrus.do", {
//				rid:rid
//			}, function(data) {
//				if (data == "true") {
//					alert("委托成功!");
//					return true;
//				} else if (data == "false") {
//					alert("系统异常，请稍后重试！");//弹出提示
//					return false;
//				}
//			});
//		
//	})
})