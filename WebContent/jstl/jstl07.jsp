<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<c:forEach var="no" begin="1" end="10" step="1" varStatus="idx">
		<tr>
			<td>${no}</td>
			<td>${idx.index}</td>
			<td>${idx.count}</td>	<!-- 1 부터 end 까지 -->
			<td>${idx.first}</td>	<!-- 가장 처음일 시 true 반환 -->
			<td>${idx.last}</td>	<!-- 가장 처음일 시 false 반환 -->
		</tr>
</c:forEach>
</table>
</body>
</html>