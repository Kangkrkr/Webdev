<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charet="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:forEach var="num" items="${ARR}">
		num : ${num}<br/>
	</c:forEach>

getRequestURI : <%=request.getRequestURI().replace(request.getContextPath(), "") %><br/>
</body>
</html>