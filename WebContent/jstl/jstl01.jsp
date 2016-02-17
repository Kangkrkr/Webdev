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

<!-- c:set 태그에 존재하는 변수의 scope는 현재 페이지까지만이다. -->

<c:set var="num" value="10" />
<h1>${num}</h1>
<c:set var="num2" value="${num + 10}" />
<h1>${num2}</h1>
<c:set var="num3" value="<%=100 %>" />
<h1>${num3}</h1>
</body>
</html>