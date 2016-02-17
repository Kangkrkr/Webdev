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

<!-- 해석되는 순서 : page -> request -> session -> application -->

<!-- page scope의 변수는 다른 jsp파일에서 받아올 수 없다. -->
<c:set var="singer" value="김윤아" scope="page"/>
<c:set var="band" value="자우림" scope="request"/>
<c:set var="song" value="마론인형" scope="request"/>
<c:set var="song" value="배고프다 허허허허허허허" scope="session"/>
<jsp:forward page="jstl02_action.jsp"/>
</body>
</html>