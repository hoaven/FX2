$(document).ready(function(){
	var ok1=false;
	var ok2=false;
	var ok3=false;
	$("#name").blur(function (){
		if($("#name").val().length==0){
//			$("#resultofname").text("Tip: 用户名不能为空!");
			alert('用户名不能为空!');
		}
		else{
			$("#resultofname").text("");
			ok1=true;
		}
	});

	$("#pasw").blur(function (){
		if($("#pasw").val().length==0){
//			$("#resultofpasw").text("Tip: 密码不能为空!  ");
			alert('密码不能为空!');
		}
		else{
			$("#resultofpasw").text("");
			ok2=true;
		}
	});


	$('#submitform').click(function(){
		$.ajax({                 
			type: "GET",
			url: getRootPath() +"/Fx2/Login.do", 
			data: {username:$("#name").val(), password:$("#pasw").val()},
			dataType: "text",
			contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
			success: function (data) {

				if(data=="usernotexist"){
					ok3=false;
//					$("#resultofname").text("用户名不存在");
					alert('用户不存在!');

				}
				if(data=="passworderror"){
					ok3=false;
//					$("#resultofpasw").text("密码错误");
					alert('密码错误!');

				}
				if(data=="ok"){
					ok3=true;
					window.location.href="fx2menu.jsp"; 
				}


			}
		});

		if(ok1 && ok2&&ok3 ){
			$('form').submit();
			window.location.href=getRootPath() +"Home/fx2/fx2menu.jsp";

		}else{
			return false;
		}
	});


});  