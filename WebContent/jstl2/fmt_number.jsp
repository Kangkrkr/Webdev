<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<f:setLocale value="ja_JP"/>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${date}<br/>
<f:formatNumber value="1234567890"/><br/>
<f:formatNumber value="1234567890" type="currency"/><br/>	<!-- 국가별 화폐의 단위를 표기. -->
<f:formatNumber value="1234567890" pattern="####,####,####"/><br/>	<!-- 4자리 단위로 패턴 출력. -->
<f:formatNumber value="0.25"/>
<f:formatNumber value="0.25" type="percent"/>
</body>
</html>