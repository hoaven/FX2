<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 收藏部件 -->
<%
	Integer iscollect = (Integer) session.getAttribute("iscollect");
%>
<div class="foot_button">
	<%
		if (iscollect == 1) {
	%>
	<input name="button" type="button" id="colllected" class="sh_button"
		style="color: #FFFFFF; background-color: #BDBDBD;" readonly="readonly"
		value="加入收藏">
	<%
		} else {
	%>
	<form method="post">
		<input name="hid" value="${RH.id}" type="hidden" id="addcollect1" /> <input
			name="button" type="submit" id="colllected" class="sh_button"
			onclick="addCollect()"
			style="color: #FBF6F6; background-color: #0FC527;" value="加入收藏">
	</form>
	<%
		}
	%>
</div>

<script>
	function addCollect() {
		var id = $("#addcollect1").val();
		$.post(getRootPath() + "/Collect/addCollect.do", {
			hid : id
		}, function(data) {
			if (data == "true") {
				$("#colllected").attr("readonly","readonly");
				$("colllected").css("color","#FFFFFF");
				$("colllected").css("background-color","#BDBDBD");
				alert("收藏成功!");
			} else {
				alert("收藏失败!");
			}
		});
	}
</script>
