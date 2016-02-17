<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String item = request.getParameter("item");
	session.removeAttribute(item);
	
	response.sendRedirect("session_main.jsp");
%>