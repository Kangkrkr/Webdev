<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	// �ѱ� ���� URLEncoder ���
	Cookie c = new Cookie("name", URLEncoder.encode("����", "UTF-8"));
	c.setMaxAge(10);	// ���̳ʽ� ���� �ָ� ������ ����� ��Ű����.
						// 0�� �ָ� ��Ű ����.
	
	response.addCookie(c);
	response.sendRedirect("cookie_main.jsp");
%>
