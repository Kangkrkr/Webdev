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
		out.println("��Ű �̸� : "+cookie.getName()+"<br/>");
		out.println("��Ű �� : "+URLDecoder.decode(cookie.getValue())+"<br/>");
		out.println("��Ű ���� �ð� : "+cookie.getMaxAge()+"<br/>");
	}
%>
</body>
</html>