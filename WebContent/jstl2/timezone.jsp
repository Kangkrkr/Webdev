<%@page import="java.util.TimeZone"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[] arr = TimeZone.getAvailableIDs();

	for(String str : arr){
		out.println(str+"<br/>");
	}
%>
</body>
</html>