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
<c:set var="sodam" value="26"/>
<c:if test="${sodam < 25}">25세 미만</c:if>
<c:if test="${sodam >= 25}">먹을만큼 먹었음</c:if>
</body>
</html>