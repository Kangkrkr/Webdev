<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie c = new Cookie("user_id", "");
	c.setMaxAge(0);
	
	response.addCookie(c);
	response.sendRedirect("cookie_main.jsp");
%>