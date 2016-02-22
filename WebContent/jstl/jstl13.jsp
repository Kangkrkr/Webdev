<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! public String charFilter(String str) {
	str = str.replace("<", "&lt;");
	str = str.replace(">", "&gt;");
	return str;
}
%>  
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
<% String content = charFilter( "</textarea><script>alert('hello');</script>");%>
<textarea rows="4" cols="40"><%=content %></textarea>
</form>
</body>
</html>