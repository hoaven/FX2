
//Ajax电话验证码校验
$(function(){

	/**
	 * 获取电话验证码
	 */
	$('.getphonecode').on('click',function(){
		alert('进来了');
		var phone = document.getElementById("tel").value;
		if(phone==""){
			alert('请输入电话号码！');
			return false;
		}else{
			$.post(getRootPath() + "/Phone/getPhoneCode.do", {
				phone:phone
			}, function(data) {
				if (data == "true") {
					return true;
				} else if (data == "false") {
				}
			});
		}

	})
	//onsubmit方法
	$('.bl_button').on('click',function(){
		var checknum = document.getElementById("num").value;
		var phone = document.getElementById("tel").value;
		if (checknum != "") {//验证码不为空，开始进行ajax验证
			$.post(getRootPath() + "/Phone/PhoneCodeCheck.do", {
				phone:phone,
				checknum:checknum
			}, function(data) {
				if (data == "true") {
					return true;
				} else if (data == "false") {
					alert("验证码错误!");
					location.href="/Home/user/register.jsp"
				}
			});
		} else {
			alert("验证码不能为空");//弹出提示
			return false;
		}

	})

})