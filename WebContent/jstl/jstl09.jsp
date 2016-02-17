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
	<c:forTokens items="강백호|송태섭,서태웅| 윤대협,채치수|정대만" delims=" " var="team">
		<h1>${team}</h1>
	</c:forTokens>
</body>
</html>