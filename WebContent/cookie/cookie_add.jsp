<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	// 한글 사용시 URLEncoder 사용
	Cookie c = new Cookie("name", URLEncoder.encode("수지", "UTF-8"));
	c.setMaxAge(10);	// 마이너스 값을 주면 브라우저 종료시 쿠키제거.
						// 0을 주면 쿠키 삭제.
	
	response.addCookie(c);
	response.sendRedirect("cookie_main.jsp");
%>
