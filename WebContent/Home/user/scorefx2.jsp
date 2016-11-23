<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.zhanwkj.fx2.model.*,com.zhanwkj.fx2.constant.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>我的快租客服</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/fxe.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/page.css" />
</head>
<%
	List<Comment> mycom = (List<Comment>) session.getAttribute("myfx2com");
	List<String> na = (List<String>) session.getAttribute("name");
	Fx2 fx2 = (Fx2) session.getAttribute("fx2msg");
	String scoreNum = (String)session.getAttribute("scoNum").toString();
%>
<body  onload="score()">
	<jsp:include page="/Home/include/top.jsp" />
	<input type="hidden" name="scoreNum" id="scoreNum" class="myscore" value="<%=scoreNum %>"/>
	<div class="user_top_card">
		<div class="user_card" style="padding: 15px 0;">
			<a href=""> <img
				src="${pageContext.request.contextPath}<%=fx2.getPic()%>"
				class="infor-img rbox" />
			</a>
			<h3>
				<%=fx2.getName()%>
				<%
					String sexx = null;
					switch (fx2.getSex()) {
					case 1:
						sexx = "先生";
						break;
					case 2:
						sexx = "女士";
						break;
					case 0:
						sexx = " ";
						break;
					default:
						break;
					}
				%>
				<%=sexx%>
			</h3>
			<span>手机:<%=fx2.getPhone()%></span>
		</div>
		<div class="oa_lable">
			<ul class="flexbox">
				<li><span>负责业务<br />${fx2msg.business}</span></li>
				<li><span>负责区域<br />${fx2msg.address}</span></li>
				<li><span>带看次数<br />${fx2msg.seenum}</span></li>
				<li><span>成交数<br />${fx2msg.sunum}</span></li>
				<li><a href="tel:<%=fx2.getPhone()%>"><span class="hIcon icon_dh"></span></a></li>
			</ul>
		</div>
	</div>

	<section class="user_main_card">
	<div class="pj_title">
		<ul class="flexbox">
			<li>
				<h4>客户评价</h4> <span class="fxe_star"> <i class="star"
					style="width: 100%;"></i></span>

			</li>
<%if(!scoreNum.equals("0")) {%>
			<li style="width: 65px;"><a id="mycomment" class="bOrangeRed"
				href="${pageContext.request.contextPath }/Home/user/comment.jsp">我要评价</a></li>
		<%}else{ %>		
		<li style="width: 65px;"><a id="mycomment"  style="color: #FFFFFF; background-color: #BDBDBD;"
				href="${pageContext.request.contextPath }/Home/user/comment.jsp">我要评价</a></li>
<%} %>
		</ul>
		<ul>
		<%if(!scoreNum.equals("0")) {%>
			<li>
			<span id="spanid1" 
				style="color: #BDB76B; font-size: 5px; float: right"> <strong>
				您还有<%=scoreNum%>次约看未评价
				</strong>
				
			</span></li>
			<%} %>
		</ul>
	</div>
	<ul class="pj_card">
		<%
			for (int i = 0; i < mycom.size(); i++) {
		%>
		<li>
			<p>
				<%
					//计算星星数值
						Float score = Float.valueOf(mycom.get(i).getScore());
						Float star = score * 20;
				%>
				<span class="pj_star"> <i class="min-star"
					style="width:<%=star%>%;"></i>
				</span> <span class="pj_name"><%=na.get(i)%></span> <span class="pj_time"><%=mycom.get(i).getTime()%></span>
			</p>
			<h4><%=mycom.get(i).getContent()%></h4>

		</li>
		<%
			}
		%>
	</ul>
	</section>

	<!--quiz end-->
	<!-- 引入全局底部文件 -->
	<jsp:include page="/Home/include/bottom.jsp" />

	<div class="visible"></div>
</body>
<script>
    function qiandao(){
    	$.ajax({
    	     type: 'POST',
    	     url: '${pageContext.servletContext.contextPath}/User/qiandao.do',
    	     dataType :"text",
    	    
    	    success: function(data){
    	    	if(data=="true")
    	    		alert("恭喜你成功签到");
    	    
    	     if(data=="false")
    	    		alert("你已经签到成功");
    	     }
    	     });
    	
    }
    function score(){
    	var scoreNum = document.getElementById("scoreNum").value;
    	if(scoreNum==0){
    		document.getElementById('mycomment').href = 'javascript:void(0)'
    	}
    		
    		
    }
</script>
</html>