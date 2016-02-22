<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<f:setLocale value="ko_KR"/>
<jsp:useBean id="date" class="java.util.Date"/>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${date}<br/>
<f:formatDate value="${date}" type="both" dateStyle="short" timeStyle="short"/><br/>
<f:formatDate value="${date}" type="both" dateStyle="medium" timeStyle="medium"/><br/>
<f:formatDate value="${date}" type="both" dateStyle="long" timeStyle="long"/><br/>
<f:formatDate value="${date}" type="both" dateStyle="full" timeStyle="full"/><br/>
</body>
</html>