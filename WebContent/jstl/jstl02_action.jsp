<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- request 에서 가져오기 -->
${band}<br/>

<!-- session 에서 가져오기 -->
${sessionScope.song}<br/>
</body>
</html>