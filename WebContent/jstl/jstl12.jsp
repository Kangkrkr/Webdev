<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
jstl12.jsp 입니다.
<%
	String msg = "안녕하세요~";
%>
<c:import url="jstl12_inner.jsp" >
	<c:param name="msg" value="<%=msg %>" />
</c:import>
bottom입니다.
</body>
</html>