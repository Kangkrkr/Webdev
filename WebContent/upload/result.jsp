<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%String filename = request.getParameter("filename"); %>
	<a href="../download?filename=<%=filename %>"><%=filename %></a>
	<img src="../download?filename=<%=filename %>"/>
</body>
</html>