//解除绑定
	$(function() {
		$(".jc_bind").on('click', function() {
			var id = $(this).attr("value");
			alert(id);
			$.ajax({
				type: 'POST',
				url:getRootPath() +'/Fx2/JcBind.do',
				data:{'hid':id},//ajax刷新
				dataType: 'json',
				success: function(data){
					if(data==true){
						alert("成功解除绑定！");
					}
					else{
						alert("解除绑定失败！");
					}
				}
			});
		});
	})