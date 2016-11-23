<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="com.zhanwkj.fx2.model.*,com.zhanwkj.fx2.constant.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <title>我的房源</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/css/frozen.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/css/fxe.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/css/page.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/css/demo.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/css/tabs.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/css/test.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/css/index.css" />

    <script type="text/javascript" src="${pageContext.request.contextPath}/Style/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/Style/js/modernizr.custom.js"></script>
    <script src="${pageContext.request.contextPath}/Style/js/zepto.js"></script>
    <script src="${pageContext.request.contextPath}/Style/js/dropload.min.js"></script>
</head>
<%
List<RentHouse> myhouse = (List<RentHouse>)session.getAttribute("myhouse");
List<String> housepic = (List<String>)session.getAttribute("pic");
%>
<body style="font-family:'Microsoft YaHei'">

	<!-- 引入全局头部文件 -->
	<jsp:include  page="/Home/include/top.jsp"/>

<div class="b_float"></div>
						<div class="blank1"></div>
						<div class="inner carditems lists">
							<%-- <c:forEach items="zzHouse" var="zz"> --%>
							<%for(int i=0;i<myhouse.size();i++){ %>
								<a
									href="${pageContext.request.contextPath}/House/housedetail.do?id=<%=myhouse.get(i).getId()%>">
									<div class="carditems_dt">
										<img src="${pageContext.request.contextPath}<%=housepic.get(1)%>"/>
									</div>
									<div class="carditems_dd">
										<h3>
											<span class="h3"><%=myhouse.get(i).getTitle()%></span>
											<%if(myhouse.get(i).getTrus()==0){%>
											 <span class="ad_deposit"><em><%="未托管"%></em> </span>
											 <%}else{ %>
											 <span class="ad_deposit"><em><%="已托管"%></em> </span>
											 <%} %>
											
											
										</h3>
										<h4>
											<span class="h4 new_price">
											<%=myhouse.get(i).getRentaparttype() %>
												|&nbsp;<%=myhouse.get(i).getArea()%>m²&nbsp;|<%=myhouse.get(i).getFloor()%>层 </span> <span
												class="ad_price" style="font-size: 16px"><%=myhouse.get(i).getPrice()%>&nbsp;元/月</span>
										</h4>
										<p>
											<span class="rbox6 bGreen" style="font-size: 12px">
												<%=myhouse.get(i).getChicktime()%>入住</span> <span class="ad_collect">已有
												<%=myhouse.get(i).getColnum()%>人收藏 </span>
										</p>
									</div>
								</a>
								<%} %>
								</div>

<!-- 引入全局底部文件 -->
	<jsp:include  page="/Home/include/bottom.jsp"/>

<div class="visible"></div>
<input type="hidden" id="get_p" value="2">

<script src="${pageContext.request.contextPath}/Style/js/cbpFWTabs.js"></script>
<script>
    (function() {
        [].slice.call( document.querySelectorAll( '.tabs' ) ).forEach( function( el ) {
            new CBPFWTabs( el );
        });
    })();
</script>


</body>
</html>
