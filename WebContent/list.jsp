<%@page import="pack.business.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="processDao" class="pack.business.ProcessDao" />

<%
	ArrayList<ProductBean> list = (ArrayList)processDao.selectdataAll();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyBatis</title>
</head>
<body>
	** 상품 목록 (MyBatis) ** <p/>
	<table border="1">
		<tr><th>code</th><th>sangpum</th><th>su</th><th>dan</th></tr>
		<c:forEach var="s" items="<%=list %>">
			<tr>
				<td>${s.code }</td>
				<td>${s.sang }</td>
				<td>${s.su }</td>
				<td>${s.dan }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>