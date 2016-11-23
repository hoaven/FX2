<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.zhanwkj.fx2.model.*,com.zhanwkj.fx2.constant.*,java.util.*"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>约看业务</title>
<%-- <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/mui.min.css" /> --%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/fxe.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/page.css" />
<link
	href="${pageContext.request.contextPath}/Style/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/Style/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/Style/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/Style/js/mui.min.js"></script>
<script
	src="${pageContext.request.contextPath}/Style/js/jquery-1.8.3.min.js"></script>
<script
	src="${pageContext.request.contextPath}/Style/js/unslider.min.js"></script>
<script src="${pageContext.request.contextPath}/Manage/js/commom.js"></script>
<script language="javascript" type="text/javascript"
	src="${pageContext.request.contextPath}/Style/comment/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Style/js/mobileBUGFix.mini.js"></script>
<script language="javascript" type="text/javascript"
	src="${pageContext.request.contextPath}/Style/comment/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Style/js/mobileBUGFix.mini.js"></script>
</head>
<%
	Fx2 fx2 = (Fx2) session.getAttribute("fx2");
	List<SeeHouse> seelist = (List<SeeHouse>) session.getAttribute("seelist");
	Map<Integer, RentHouse> seemap = (Map<Integer, RentHouse>) session.getAttribute("seemap");
	//定义迭代器
	Iterator<Map.Entry<Integer, RentHouse>> seeentries = seemap.entrySet().iterator();

%>
<body>
	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/top2.jsp" />

	<div class="user_top_card">
		<div class="user_card" style="padding: 15px 0;">
			<a href="${pageContext.request.contextPath}/Fx2/Login.do"> <img
				src="${pageContext.request.contextPath}<%=fx2.getPic()%>"
				class="infor-img border-img rbox" /></a>
			<h4>
				快租房管家：<%=fx2.getName()%></h4>
			<span>服务电话<br /><%=fx2.getPhone()%>
			</span>
		</div>
		<div class="oa_lable">
			<ul class="flexbox">
				<li><span>负责业务<br /><%=fx2.getBusiness()%>
				</span></li>
				<li><span>负责区域<br /><%=fx2.getAddress()%>
				</span></li>
				<li><span>带看次数<br /><%=fx2.getSeenum()%>
				</span></li>
				<li><span>成交数<br /><%=fx2.getSunum()%>
				</span></li>
				<li><span>系统评分<br /><%=fx2.getScore()%>
				</span></li>
			</ul>
		</div>
	</div>

	<%
	while (seeentries.hasNext()) {
		Map.Entry<Integer, RentHouse> entry = seeentries.next();
	%>
	<a class="item"
		href="${pageContext.request.contextPath}/House/housedetail.do?id=<%=entry.getKey()%>">
		<div class="carditems_dt">
			<img
				src="${pageContext.request.contextPath}<%=entry.getValue().getPicurl()%>">
		</div>
	</a>               
		<div class="carditems_dd">
			<h3>
			<span class="h3"><%=entry.getValue().getTitle()%></span>
			<button name="button" class="bRed" style="float: right;text-align: center;  width: 120px;"
		type="text" onclick="javascript:goyuyue();"
		>设定预约时间</button>
			</h3>
			<h4>
				<span class="h4 new_price"> <%=entry.getValue().getRentaparttype()%>
					|&nbsp;<%=entry.getValue().getArea()%>m²<%-- &nbsp;|<%=entry.getValue().getFloor()%>层 --%>
				</span>
				<input name="datadox" id="datado1" class="Wdate" style="width:120px;float:right;"
				type="text" onClick="WdatePicker()">
			</h4>
			<p>
				<span class="h4 new_price"> <%=entry.getValue().getAddress()%>
				<input name="date" type="button" class="bRed" value="确认" style="float:right;" onclick="tijiao(<%=entry.getKey()%>)"/>
				</span> 
			</p>
			<p>
				
				<span class="rbox6 bGreen" style="font-size: 12px"> <%=entry.getValue().getChicktime()%>入住
				</span><span class="" style="color:red"><strong><%=entry.getValue().getPrice()%>元/月</strong></span>
				<span class="ad_collect">已有 <%=entry.getValue().getColnum()%>人收藏
				
			</p>
		</div>
	
	<%
								}
							%>

	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/afbottom.jsp" />

	<div class="visible"></div>
</body>
<script type="text/javascript">
	function goyuyue() {
		document.getElementById("datado1").display = "";
		document.getElementById("datado1").click();
	}
	
	function tijiao(id){
		var date = document.getElementById("datado1").value;
			$.post(getRootPath() + "/Fx2/DateSet.do", {
				date:date,
				seeid:id
			}, function(data) {
				if (data == "true") {
					alert("设定预约时间成功!");
					location.href="${pageContext.request.contextPath}/Fx2/LookYK.do"
				} else if (data == "false") {
					alert("系统繁忙！请稍后重试！");//弹出提示
					return false;
				}
			});
		
	}
</script>
<%-- 	<script src="${pageContext.request.contextPath}/Manage/js/commom.js"></script>
	<script src="${pageContext.request.contextPath}/Style/ajax/fx2check.js"></script> --%>
</html>
