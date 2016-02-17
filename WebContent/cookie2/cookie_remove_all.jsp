<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie cookies[] = request.getCookies();

	for(Cookie c : cookies){
		if(c.getName().startsWith("user")){
			c.setValue("");
			c.setMaxAge(0);
			response.addCookie(c);
		}
	}
	
	response.sendRedirect("cookie_main.jsp");
%>