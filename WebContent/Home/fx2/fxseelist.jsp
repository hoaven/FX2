<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.zhanwkj.fx2.model.*,com.zhanwkj.fx2.constant.*,java.util.*"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>快租房管家约看清单</title>
<link
	href="${pageContext.request.contextPath}/Style/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/fxe.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Style/css/page.css" />
<script src="${pageContext.request.contextPath}/Style/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/Style/js/bootstrap.min.js"></script>
</head>
<%
	Fans user = (Fans) session.getAttribute("user");
	Fx2 fx2 = (Fx2) session.getAttribute("fx2");
	Integer seenum = (Integer) session.getAttribute("seenum");
	String servicedate = (String) session.getAttribute("servicedate");
	List<Map<String, List<Map<Fans,List<RentHouse>>>>> fatherlists = (List<Map<String, List<Map<Fans,List<RentHouse>>>>>)session.getAttribute("fatherseelists");
	List<Map<String,Integer>> sumlists = (List<Map<String,Integer>>)session.getAttribute("sumseelists");
%>
<body>

	<!-- 引入全局头部文件 -->
	<jsp:include page="/Home/include/top2.jsp" />


	<div class="user_top_card">
		<div class="user_card" style="padding: 15px 0;">
		<a href="${pageContext.request.contextPath}/Fx2/Login.do">
			<img src="${pageContext.request.contextPath}<%=fx2.getPic() %>"
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


	<div class="panel-group" id="accordion">
		<!-- 开始迭代 -->
		<%
		for(int i=0,m=0;i<fatherlists.size();i++,m++){
			Map<String, List<Map<Fans,List<RentHouse>>>> map = fatherlists.get(i);
			Set set1 = map.keySet();
			Iterator iter1 = set1.iterator();
			String yytime = null;
			while (iter1.hasNext()) {
				yytime = (String) iter1.next();
			}
			List<Map<Fans,List<RentHouse>>> list = map.get(yytime);
			//约看组数
		%>
		<div class="panel panel-default">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion"
						href="#collapse<%=yytime%>">
						<aside class="th_list">
							<span class="fr">预约时间：<%=yytime%></span>
							<h3>
								约看清单 （<%=sumlists.get(m).get(yytime)%>组）
							</h3>
						</aside>
					</a>
				</h4>
			<div id="collapse<%=yytime%>"
				class="panel-collapse collapse in">
				<%
				
				for(int j=0;j<list.size();j++){
					Map<Fans,List<RentHouse>> mmp = list.get(j);
					Set set2 = mmp.keySet();
					Iterator iter2 = set2.iterator();
					Fans fans = new Fans();
					while (iter2.hasNext()) {
						fans = (Fans)iter2.next();
					}
					List<RentHouse> rentlist = mmp.get(fans);
				%>
				<div class="panel-body">
					<div class="carditems_user_card">
						<div class="flexbox">
							<span class="carditems_user"> <img
								src="<%=fans.getHeadimgurl()%>"
								class="infor-img rbox" />
								<div class="infor-name">
									<h4>用户:
										<%
							if (!user.getTruename().equals("") && user.getTruename() != null) {
						%>
										<%=user.getTruename()%>
										<%
							} else {
						%>
										<%=user.getNickname()%>
										<%
							}
							String sexx = null;
							switch (user.getSex()) {
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

										<%=sexx%><B></B>
									</h4>
									<span><%=fans.getMobile()%></span>
								</div>
							</span> <span class="carditems_tel"> <a href="${pageContext.request.contextPath }/Home/tools/phone.jsp?number=<%=fans.getMobile()%>#mp.weixin.qq.com"
								class="hIcon fxe_tel"></a>
							</span>
						</div>
					</div>
					<div class="carditems">
						<%
							for (int k = 0; k< rentlist.size(); k++) {
						%>
						<a
							href="${pageContext.request.contextPath}/House/housedetail.do?id=<%=rentlist.get(k).getId()%>">
							<div class="carditems_dt">
								<img
									src="${pageContext.request.contextPath}<%=rentlist.get(k).getPicurl()%>">
							</div>
							<div class="carditems_dd">
								<h3>
									<span class="h3"><%=rentlist.get(k).getTitle()%></span>
									<span class="ad_deposit"><em style="<%=rentlist.get(k).getTrusstyle()%>">托管</em></span>
								</h3>
								<h4>
									<span class="h4 new_price"> <%=rentlist.get(k).getRentaparttype()%>
										|&nbsp;<%=rentlist.get(k).getArea()%>m²&nbsp;|<%=rentlist.get(k).getFloor()%>层
									</span> <span class="ad_price" style="font-size: 16px"><%=rentlist.get(k).getPrice()%>&nbsp;元/月</span>
								</h4>
								<p>
									<span class="rbox6 bGreen" style="font-size: 12px"> <%=rentlist.get(k).getChicktime()%>入住
									</span> <span class="ad_collect">已有 <%=rentlist.get(k).getColnum()%>人收藏
									</span>
								</p>
							</div>
						</a>
						<%
							}
						%>
					</div>
				</div>
				<%
					}
				%>
			</div>

		</div>
		<%
			}
		%>
	</div>


	<!-- 引入全局底部文件 -->
	<jsp:include page="/Home/include/afbottom.jsp" />

	<div class="visible"></div>
</body>
</html>
