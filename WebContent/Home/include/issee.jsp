<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 约看部件 -->
<%
	Integer issee = (Integer) session.getAttribute("see");
%>
	<%if (issee == 1) {%>
	<p class="bGreen" style="color: #FFFFFF; background-color: #BDBDBD;">加入约看清单</p>
	<%} else {%>
	<a class="bGreen" href="${pageContext.request.contextPath}/Look/sendForm.do?id=${RH.id}">加入约看清单</a>
	<%}%>
