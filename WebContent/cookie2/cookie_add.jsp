<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	
	String user_id = request.getParameter("user_id");
	String user_name = request.getParameter("user_name");
	String level = request.getParameter("user_level");

	// �ѱ� ���� URLEncoder ���
	Cookie c1 = new Cookie("user_id", URLEncoder.encode(user_id, "UTF-8"));
	Cookie c2 = new Cookie("user_name", URLEncoder.encode(user_name, "UTF-8"));
	Cookie c3 = new Cookie("user_level", URLEncoder.encode(level, "UTF-8"));
	
	c1.setMaxAge(20);	// ���̳ʽ� ���� �ָ� ������ ����� ��Ű����, 0�� �ָ� ��Ű ����..
	c2.setMaxAge(20);
	c3.setMaxAge(20);
	
	response.addCookie(c1);
	response.addCookie(c2);
	response.addCookie(c3);
	
	response.sendRedirect("cookie_main.jsp");
%>
