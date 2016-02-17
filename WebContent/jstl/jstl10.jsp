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
<c:catch var="e">
	<c:out value="${10/0}"/>
</c:catch>
<c:if test="${e != null}">
	에러 : ${e.message}<br/>
</c:if>
</body>
</html>