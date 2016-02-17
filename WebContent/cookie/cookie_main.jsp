<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie cookies[] = request.getCookies();

	for(Cookie cookie : cookies){
		out.println("쿠키 이름 : "+cookie.getName()+"<br/>");
		out.println("쿠키 값 : "+URLDecoder.decode(cookie.getValue())+"<br/>");
		out.println("쿠키 유지 시간 : "+cookie.getMaxAge()+"<br/>");
	}
%>
</body>
</html>