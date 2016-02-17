<%@page import="session.test.Human"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	session.setMaxInactiveInterval(10);

	session.setAttribute("user_id", "chrome");
	session.setAttribute("level", 10);
	
	Human h = new Human();
	h.setUser_id("next");
	h.setUser_name("신해철");
	h.setLevel(100);
	h.setConnect_count(200);
	h.setBirth_year(1969);
	
	session.setAttribute("human", h);
	
	response.sendRedirect("session_main.jsp");
%>