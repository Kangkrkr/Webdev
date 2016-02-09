<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@IMPORT url("main.css");
</style>
</head>
<body>
<table>
<tr>
	<td colspan="2" bgcolor="red" height="150"><%@include file="top.jsp" %></td>
</tr>
<tr>
	<td bgcolor="blue" width="300"><%@include file="menu.jsp" %></td>
	<td bgcolor="yellow"><%@include file="content.jsp" %></td>
</tr>
</table>
</body>
</html>