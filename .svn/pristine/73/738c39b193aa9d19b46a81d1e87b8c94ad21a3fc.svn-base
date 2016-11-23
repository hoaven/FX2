/**
 * 审核
 */

	function checkhouse(id){
		alert('4524631');
		alert("id:"+id);
		var houseid = id;
		if (houseid != null) {
			alert('456494');
			$.post(getRootPath() + "/Check/doCheck.do", {
				houseid:houseid
			}, function(data) {
				alert('4524631');
				if (data == "true") {
					alert('审核绑定成功，请在个人中心我的绑定中进行查看！');
					location.reload();//控制页面刷新
					return true;
				} else if (data == "false") {
					alert("系统繁忙，请稍后重试!");
				}
			});
		} else {
			alert("系统繁忙，请稍后重试");//弹出提示
			return false;
		}
		
	}
	
