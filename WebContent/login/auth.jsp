<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String user_id=(String)session.getAttribute("user_id"); 
	String user_name=(String)session.getAttribute("user_name"); 
 	
	if(user_id==null){
		out.println("<script>");
		out.println("alert('먼저 로그인을 하셔야 합니다.');");
		out.println("location.href='login.jsp';");
		out.println("</script>");
		return;
	}
%>