<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 
<%
	String user_id = request.getParameter("user_id");
	String user_name = request.getParameter("user_name");
	int level = Integer.parseInt(request.getParameter("user_level"));
	
	session.setMaxInactiveInterval(60);
	session.setAttribute("user_id", user_id);
	session.setAttribute("user_name", user_name);
	session.setAttribute("user_level", level);
	
	response.sendRedirect("session_main.jsp");
%>