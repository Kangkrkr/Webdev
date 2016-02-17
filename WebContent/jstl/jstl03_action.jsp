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

<!-- 받아오는 특에서는 스크립틀릿 내 request.getParameter() 와 동일하게, param으로 부터 값을 받아와야한다. -->

<c:set var="num1" value="${param.num1}"/>
<c:set var="num2" value="${param.num2}"/>
<c:set var="num3" value="${num1 + num2}"/>

${num1 }<br/>
${num2 }<br/>
${num3 }<br/>
</body>
</html>