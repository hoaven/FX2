<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>拨打电话</title>
<%
String number = request.getParameter("number");
%>
<script type="text/javascript">
function doTel(){
	var number = document.getElementById("number").value;
	location.href="tel:"+number;
}
</script>
</head>
<body>
<input type="hidden" value="<%=number %>"  onload="doTel()" />
</body>
</html>
