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
<c:redirect url="../board/list.jsp">
	<c:param name="pg" value="7"/>
	<c:param name="searchCondition" value="title"/>
	<c:param name="searchKeyword" value="오마에"/>
</c:redirect>
</body>
</html>